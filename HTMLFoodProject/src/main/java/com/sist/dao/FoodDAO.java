package com.sist.dao;
//오라클 연동
import java.util.*;
import java.sql.*;
import com.sist.vo.*;

public class FoodDAO {
	//연결 => 오라클 연결
	private Connection conn;
	//SQL => 송신, 결과값 수신
	private PreparedStatement ps;
	//연결 => URL
	private final String URL = "jdbc:oracle:thin:@localhost:1521:XE";
	//한사람당 한개의 DAO 사용 => 싱글톤
	public static FoodDAO dao;
	
	//1. 드라이버 등록
	public FoodDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {}
	}
	//2. 싱글턴 => static으로 설정 (static 메모리 공간이 한개)
	public static FoodDAO newInstance() {
		if(dao==null)
			dao = new FoodDAO();
		return dao;
	}
	//3. 오라클 연결
	public void getConection() {
		try {
			// conn hr/happy
			conn = DriverManager.getConnection(URL,"hr","happy");
		} catch (Exception e) {}
	}
	//4. 오라클 닫기
	public void disConection() {
		try {
			if(ps!=null) ps.close();
			if(conn!=null) conn.close();
		} catch (Exception e) {}
	}
	//목록 출력
	public List<FoodVO> foodListData(int page){
		List<FoodVO> list = new ArrayList<FoodVO>();
		try {
			//1. 연결
			getConection();
			//2. SQL문장 전송
			String sql = "SELECT fno, name, poster, num "
					+ "FROM (SELECT fno, name, poster, rownum as num "
					+ "FROM (SELECT /*+ INDEX_ASC(food_menupan fm_fno_pk)*/fno, name, poster "
					+ "FROM food_menupan)) "
					+ "WHERE num BETWEEN ? AND ?";
			
			//3. 오라클로 전송
			ps = conn.prepareStatement(sql);
			
			//4. ?에 값을 채운다
			int rowSize = 12;
			int start = (rowSize * page) - (rowSize - 1);
			int end = rowSize * page;
			
			ps.setInt(1, start);
			ps.setInt(2, end);

			//5. 실행 결과 읽기
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				FoodVO vo = new FoodVO();
				vo.setFno(rs.getInt(1));
				vo.setName(rs.getString(2));
				vo.setPoster("https://www.menupan.com" + rs.getString(3));
				list.add(vo);
			}
			rs.close();
		} catch (Exception e) {
			//오류 처리
			e.printStackTrace();
		} finally {
			//닫기
			disConection();
		}
		return list;
	}
	//총페이지
	public int foodTotalPage() {
		int total = 0;
		try {
			getConection();
			String sql = "SELECT CEIL(COUNT(*)/12.0) FROM food_menupan";
			ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			rs.next();
			total = rs.getInt(1);
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disConection();
		}
		return total;
	}
	//상세보기
	/*
	FNO     NOT NULL NUMBER         
	NAME    NOT NULL VARCHAR2(500)  
	TYPE    NOT NULL VARCHAR2(100)  
	PHONE   NOT NULL VARCHAR2(20)   
	ADDRESS NOT NULL VARCHAR2(700)  
	SCORE            NUMBER(2,1)    
	THEME   NOT NULL CLOB           
	POSTER  NOT NULL VARCHAR2(300)  
	IMAGES           VARCHAR2(4000) 
	TIME    NOT NULL VARCHAR2(100)  
	PARKING          VARCHAR2(200)  
	CONTENT NOT NULL CLOB           
	HIT              NUMBER         
	PRICE            VARCHAR2(30) 
	 */
	public FoodVO foodDetailData(int fno) {
		FoodVO vo = new FoodVO();
		try {
			getConection();
			String sql = "UPDATE food_menupan SET "
					+ "hit = hit + 1 "
					+ "WHERE fno = " + fno;
			ps = conn.prepareStatement(sql);
			ps.executeUpdate();
			
			sql = "SELECT name, type, phone, address, theme, poster, images, time, parking, content, price, score, hit "
					+ "FROM food_menupan "
					+ "WHERE fno = " + fno;
			ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			rs.next();
			vo.setFno(fno);
			vo.setName(rs.getString(1));
			vo.setType(rs.getString(2));
			vo.setPhone(rs.getString(3));
			vo.setAddress(rs.getString(4));
			vo.setTheme(rs.getString(5));
			vo.setPoster("https://www.menupan.com"+rs.getString(6));
			vo.setImages(rs.getString(7));
			vo.setTime(rs.getString(8));
			vo.setParking(rs.getString(9));
			vo.setContent(rs.getString(10));
			vo.setPrice(rs.getString(11));
			vo.setScore(rs.getDouble(12));
			vo.setHit(rs.getInt(13));
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disConection();
		}
		return vo;
	}
	//cookie 데이터
	public FoodVO foodCookieData(int fno) {
		FoodVO vo = new FoodVO();
		try {
			getConection();
			String sql = "SELECT fno, name, poster "
					+ "FROM food_menupan "
					+ "WHERE fno = " + fno;
			ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			rs.next();
			vo.setFno(rs.getInt(1));
			vo.setName(rs.getString(2));
			vo.setPoster("https://www.menupan.com" + rs.getString(3));
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disConection();
		}
		return vo;
	}
}
