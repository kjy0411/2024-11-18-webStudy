package com.sist.dao;
// DBCP(web) / JDBC
import java.util.*;
import java.sql.*;
import com.sist.vo.*;
/*  
 *    =========== 자바 =========
 *    | 브라우저(HTML) 연동	      | 오라클 전송
 *  브라우저 <===============> 오라클 (게시판데이터)
 *    |			  연결X
 *    |
 *  HTML/CSS/JavaScript : 화면 UI
 *  
 *  자바 => 데이터베이스 연결 : DAO
 *  	=> 브라우저 연동 => HTML전송 => Model
 *  
 *  => 데이터베이스 관리 / 사용자 요청에 대한 처리
 */

// *** 2차 자바 / *** 3차 자바
public class BoardDAO {
	private Connection conn;
	private PreparedStatement ps;
	private final String URL = "jdbc:oracle:thin:@localhost:1521:XE";
	private static BoardDAO dao;
	
	public BoardDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {}
	}
	//싱글턴
	public static BoardDAO newInstance(){
		if(dao==null)
			dao = new BoardDAO();
		return dao;
	}
	
	public void getConnection() {
		try {
			conn = DriverManager.getConnection(URL,"hr","happy");
		} catch (Exception e) {}
	}
	public void disConnection() {
		try {
			if(ps!=null) ps.close();
			if(conn!=null) conn.close();
		} catch (Exception e) {}
	}
	// 기능
	// 1. 목록 => 리턴형(요청 처리 결과), 매개변수(사용자가 보내준 값)
	public List<BoardVO> boardListData(int page){
		List<BoardVO> list = new ArrayList<BoardVO>();
		// sql.* => 컴파일 예외처리 => CheckException
		try {
			// 1. 연결
			getConnection();
			// 2. SQL => 페이지 나누기 (인라인뷰)
			String sql = "SELECT no, subject, name, TO_CHAR(regdate,'YYYY-MM-DD') as dbday, hit, num "
					+ "FROM (SELECT no, subject, name, regdate, hit, rownum as num "
					+ "FROM (SELECT no, subject, name, regdate, hit "
					+ "FROM htmlboard ORDER BY no DESC)) "
					+ "WHERE num BETWEEN ? AND ?";
			ps = conn.prepareStatement(sql); // 오라클로 SQL문장 전송
			
			int rowsize = 10;
			int start = (rowsize * page) - (rowsize - 1);
			int end = rowsize * page;
			
			ps.setInt(1, start);
			ps.setInt(2, end);
			// 실행 명령
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				BoardVO vo = new BoardVO();
				vo.setNo(rs.getInt(1));
				vo.setSubject(rs.getString(2));
				vo.setName(rs.getNString(3));
				vo.setDbday(rs.getNString(4));
				vo.setHit(rs.getInt(5));
				list.add(vo);
			}
			rs.close();
		} catch (Exception e) {
			// 복구가 어렵다 => 예외에 대한 정보 확인
			e.printStackTrace();
		} finally {
			disConnection();
		}
		return list;
	}
	// 1-1. 총페이지 SELECT
	public int boardTotalPage() {
		int total = 0;
		try {
			getConnection();
			String sql = "SELECT CEIL(COUNT(*)/10.0) FROM htmlboard";
			ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			rs.next();
			total = rs.getInt(1);
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disConnection();
		}
		return total;
	}
	// 2. 상세 SELECT
	public BoardVO boardDetailData(int no) {
		BoardVO vo = new BoardVO();
		try {
			getConnection();
			String sql = "UPDATE htmlboard SET "
					+ "hit = hit+1 "
					+ "WHERE no =" + no;
			ps = conn.prepareStatement(sql);
			ps.executeUpdate();
			
			sql = "SELECT no, name, subject, content, TO_CHAR(regdate, 'YYYY-MM-DD HH24:MI:SS'), hit "
					+ "FROM htmlboard "
					+ "WHERE no = " + no;
			ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			rs.next();
			vo.setNo(rs.getInt(1));
			vo.setName(rs.getString(2));
			vo.setSubject(rs.getString(3));
			vo.setContent(rs.getString(4));
			vo.setDbday(rs.getString(5));
			vo.setHit(rs.getInt(6));
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disConnection();
		}
		return vo;
	}
	// 3. 글쓰기 INSERT
	// => 웹 프로그램 (감) => 화면 이동 => 어떤 데이터가 필요한지...
	public void boardInsert(BoardVO vo) {
		try {
			getConnection();
			String sql = "Insert INTO htmlboard(no, name, subject, content, pwd) "
					+ "VALUES(hb_no_seq.nextval, ?, ?, ?, ?)";
			ps = conn.prepareStatement(sql);
			// ?에 값을 채워서 실행
			ps.setString(1, vo.getName());
			ps.setString(2, vo.getSubject());
			ps.setString(3, vo.getContent());
			ps.setString(4, vo.getPwd());
			
			// 실행
			ps.executeUpdate(); // commit이 포함
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disConnection();
		}
	}
	// 4. 수정 UPDATE
	// 5. 삭제 DELETE
	public boolean boardDelete(int no, String pwd) {
		/*  
		 *  오라클 => 사이트에 필요한 데이터 저장
		 *  => SQL문장
		 *  자바 => 오라클 연동 / 브라우저 연동
		 *  	   결과값을 받아서 => 브라우저로 전송
		 *  	   사용자 요청을 받는 경우
		 *  	   => 스프링 : 자바 / 코틀린
		 *  	   => ASP : C#, 장고 : 파이썬 => 통계 그래프 
		 *  HTML/CSS => 브라우저에 화면만 출력
		 */
		boolean bCheck = false;
		try {
			getConnection();
			//1. 비밀번호 체크
			String sql = "SELECT pwd FROM htmlboard where no =" + no;
			ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			rs.next();
			String db_pwd = rs.getString(1);
			rs.close();
			
			//2. 삭제
			if(db_pwd.equals(pwd)) {
				bCheck = true;
				sql = "DELETE FROM htmlboard WHERE no = " + no;
				ps = conn.prepareStatement(sql);
				ps.executeUpdate();
			}else {
				bCheck = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disConnection();
		}
		return bCheck;
	}
}
