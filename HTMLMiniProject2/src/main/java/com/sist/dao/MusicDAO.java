package com.sist.dao;

import java.util.*;
import java.sql.*;
import com.sist.vo.*;

import oracle.net.aso.l;

public class MusicDAO {
	private Connection conn;
	private PreparedStatement ps;
	private final String URL = "jdbc:oracle:thin:@localhost:1521:XE";
	public static MusicDAO dao;
	
	public MusicDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {}
	}
	public static MusicDAO newInstance() {
		if(dao==null)
			dao = new MusicDAO();
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
	//목록 출력
	public List<MusicVO> musicListData(int page){
		List<MusicVO> list = new ArrayList<MusicVO>();
		try {
			getConnection();
			String sql = "SELECT mno, poster, title, singer, album, state, idcrement, num "
					+ "FROM (SELECT mno, poster, title, singer, album, state, idcrement, rownum as num "
					+ "FROM (SELECT /*+ INDEX_ASC(genie_music gm_mno_pk)*/mno, poster, title, singer, album, state, idcrement "
					+ "FROM genie_music)) "
					+ "WHERE num BETWEEN ? AND ?";
			ps = conn.prepareStatement(sql);
			
			int rowSize = 12;
			int start = (rowSize * page) - (rowSize - 1);
			int end = rowSize * page;
			
			ps.setInt(1, start);
			ps.setInt(2, end);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				MusicVO vo = new MusicVO();
				vo.setMno(rs.getInt(1));
				vo.setPoster(rs.getString(2));
				vo.setTitle(rs.getString(3));
				vo.setSinger(rs.getString(4));
				vo.setAlbum(rs.getString(5));
				vo.setState(rs.getString(6));
				vo.setIdcrement(rs.getInt(7));
				list.add(vo);
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disConnection();
		}
		return list;
	}
	//총페이지
	/*
	MNO       NOT NULL NUMBER         
	CNO                NUMBER         
	TITLE     NOT NULL VARCHAR2(1000) 
	SINGER    NOT NULL VARCHAR2(500)  
	ALBUM     NOT NULL VARCHAR2(500)  
	POSTER             VARCHAR2(260)  
	IDCREMENT          NUMBER         
	STATE              VARCHAR2(30)   
	KEY                VARCHAR2(200)  
	HIT                NUMBER         
	 */
	public int musicTotalPage(){
		int total = 0;
		try {
			getConnection();
			String sql = "SELECT CEIL(COUNT(*)/12.0) FROM genie_music";
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
	//상세보기
	public MusicVO musicDetailData(int mno){
		MusicVO vo = new MusicVO();
		try {
			getConnection();
			String sql = "UPDATE genie_music SET "
					+ "hit = hit +1 "
					+ "WHERE mno = " + mno;
			ps = conn.prepareStatement(sql);
			ps.executeUpdate();
			
			sql = "SELECT cno, title, singer, album, poster, idcrement, state, hit "
					+ "FROM genie_music "
					+ "WHERE mno = " + mno;
			ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			rs.next();
			vo.setMno(mno);
			vo.setCno(rs.getInt(1));
			vo.setTitle(rs.getString(2));
			vo.setSinger(rs.getString(3));
			vo.setAlbum(rs.getString(4));
			vo.setPoster(rs.getString(5));
			vo.setIdcrement(rs.getInt(6));
			vo.setState(rs.getString(7));
			vo.setHit(rs.getInt(8));
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disConnection();
		}
		return vo;
	}
	//cookie 데이터
	public MusicVO musicCookieData(int mno) {
		MusicVO vo = new MusicVO();
		try {
			getConnection();
			String sql = "SELECT mno, title, poster "
					+ "FROM genie_music "
					+ "WHERE mno = " + mno;
			ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			rs.next();
			vo.setMno(rs.getInt(1));
			vo.setTitle(rs.getString(2));
			vo.setPoster(rs.getString(3));
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disConnection();
		}
		return vo;
	}
	//장르별 순위
	public int musicGenreLank(int cno, int mno) {
		int lank = 0;
		try {
			getConnection();
			String sql = "SELECT num "
					+ "FROM (SELECT mno, rownum as num "
					+ "FROM (SELECT /*+ INDEX_ASC(genie_music gm_mno_pk)*/mno "
					+ "FROM genie_music "
					+ "WHERE cno = ?)) "
					+ "WHERE mno = ?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, cno);
			ps.setInt(2, mno);
			ResultSet rs = ps.executeQuery();
			rs.next();
			lank = rs.getInt(1);
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disConnection();
		}
		return lank;
	}
	public List<MusicVO> musicGenreFind(int page,int cno)
	  {
		  List<MusicVO> list=
				  new ArrayList<MusicVO>();
		  try
		  {
			  //1. 연결
			  getConnection();
			  //2. SQL문장 전송 
			  String sql="SELECT mno,title,poster,num "
					   +"FROM (SELECT mno,title,poster,rownum as num "
					   +"FROM (SELECT /*+ INDEX_ASC(genie_music gm_mno_pk)*/mno,title,poster "
					   +"FROM genie_music WHERE cno=?)) "
					   +"WHERE num BETWEEN ? AND ?";
			  //3. 오라클로 전송 
			  ps=conn.prepareStatement(sql);
			  //4. ?에 값을 채운다 
			  int rowSize=12;
			  int start=(rowSize*page)-(rowSize-1);
			  int end=rowSize*page;
			  ps.setInt(1, cno);
			  ps.setInt(2, start);
			  ps.setInt(3, end);
			  // rownum은 1번부터 시작한다
			  // 자바 => 0 , 오라클 => 1
			  /*
			   *    'Hello Oracle'
			   *     123456....
			   */
			  //5. 실행 결과 읽기 
			  ResultSet rs=ps.executeQuery();
			  // => list에 저장 
			  while(rs.next())
			  {
				  MusicVO vo=new MusicVO();
				  vo.setMno(rs.getInt(1));
				  vo.setTitle(rs.getString(2));
				  vo.setPoster(rs.getString(3));
				  list.add(vo);
			  }
			  rs.close();
		  }catch(Exception ex)
		  {
			  // 오류 처리 
			  ex.printStackTrace();
		  }
		  finally
		  {
			  // 닫기
			  disConnection();
		  }
		  return list;
	  }
	  public int musicGenreTotalPage(int cno)
	  {
		  int total=0;
		  try
		  {
			  getConnection();
			  String sql="SELECT CEIL(COUNT(*)/12.0) "
					    +"FROM genie_music "
					    +"WHERE cno="+cno;
			  ps=conn.prepareStatement(sql);
			  ResultSet rs=ps.executeQuery();
			  rs.next();
			  total=rs.getInt(1);
			  rs.close();
		  }catch(Exception ex)
		  {
			  ex.printStackTrace();
		  }
		  finally
		  {
			  disConnection();
		  }
		  return total;
	  }
	public List<MusicVO> musicFind(int page,String col,String fd)
	{
		List<MusicVO> list=new ArrayList<MusicVO>();
		if(col==null && fd==null) {
			return list;
		}
		try
		{
			getConnection();
			String sql = ""; 
			
			int rowSize=20;
			int start=(rowSize*page)-(rowSize-1);
			int end=rowSize*page;
			if(col.equals("genre")) {
				List<Integer> cnos = genreFind(fd);
				sql="SELECT mno, poster, title, singer, album, state, idcrement, num "
						+"FROM (SELECT mno, poster, title, singer, album, state, idcrement, rownum as num "
						+"FROM (SELECT mno, poster, title, singer, album, state, idcrement "
						+"FROM genie_music "
						+"WHERE cno IN(0";
				for(Integer cno : cnos) {
					sql += "," + cno;
				}
				sql += "))) "
						+"WHERE num BETWEEN ? AND ?";
				ps=conn.prepareStatement(sql);
				
				ps.setInt(1, start);
				ps.setInt(2, end);
			}else {
				sql="SELECT mno, poster, title, singer, album, state, idcrement, num "
					+"FROM (SELECT mno, poster, title, singer, album, state, idcrement, rownum as num "
					+"FROM (SELECT mno, poster, title, singer, album, state, idcrement "
					+"FROM genie_music "
					+"WHERE "+col+" LIKE '%'||?||'%')) "
					+"WHERE num BETWEEN ? AND ?";
				ps=conn.prepareStatement(sql);
				
				ps.setString(1, fd);
				ps.setInt(2, start);
				ps.setInt(3, end);
			}
			
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				MusicVO vo = new MusicVO();
				vo.setMno(rs.getInt(1));
				vo.setPoster(rs.getString(2));
				vo.setTitle(rs.getString(3));
				vo.setSinger(rs.getString(4));
				vo.setAlbum(rs.getString(5));
				vo.setState(rs.getString(6));
				vo.setIdcrement(rs.getInt(7));
				list.add(vo);
			}
			rs.close();
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			disConnection();
		}
		return list;
	}
	public int musicFindTotalPage(String col, String fd) {
		int total = 0;
		if(col==null && fd==null) {
			return total;
		}
		try {
			getConnection();
			String sql = "";
			if(col.equals("genre")) {
				List<Integer> cnos = genreFind(fd);
				sql = "SELECT CEIL(COUNT(*)/20.0) FROM genie_music "
					+ "WHERE cno IN(0";
				for(Integer cno : cnos) {
					sql += "," + cno;
				}
				sql	+= ")";
				ps = conn.prepareStatement(sql);
			}else {
				sql = "SELECT CEIL(COUNT(*)/20.0) FROM genie_music "
					+ "WHERE " + col + " LIKE '%'||?||'%'";
				ps = conn.prepareStatement(sql);
				ps.setString(1, fd);
			}
			ResultSet rs = ps.executeQuery();
			rs.next();
			total = rs.getInt(1);
			rs.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			disConnection();
		}
		return total;
	}
	public List<Integer> genreFind(String fd) {
		List<Integer> cno = new ArrayList<Integer>();
		String[] genre = {"", "Top50", "가요", "POP", "OST", "트롯", "JAZZ", "CLASSIC"};
		for(int i = 1; i <= genre.length - 1; i++) {
			if(genre[i].toUpperCase().contains(fd.toUpperCase())) {
				cno.add(i);
			}
		}
		return cno;
	}
	public List<MusicVO> musicHitTop10() {
		List<MusicVO> list = new ArrayList<MusicVO>();
		try {
			getConnection();
			String sql = "SELECT mno,title,poster,hit,rownum "
					+ "FROM (SELECT mno,title,poster,hit "
					+ "FROM genie_music ORDER BY hit DESC) "
					+ "WHERE rownum<=10";
			ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				MusicVO vo = new MusicVO();
				vo.setMno(rs.getInt(1));
				vo.setTitle(rs.getString(2));
				vo.setPoster(rs.getString(3));
				vo.setHit(rs.getInt(4));
				list.add(vo);
			}
			rs.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			disConnection();
		}
		return list;
	}
}
