package com.sist.main;
import java.util.*;

import oracle.jdbc.OracleTypes;

import java.sql.*;
public class StudentDAO {
	private Connection conn;
	private CallableStatement cs; // Procedure호출시에 사용
	private final String URL = "jdbc:oracle:thin:@localhost:1521:XE";
	private static StudentDAO dao;
	// 5장 오라클 연동 프로그램
	public StudentDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {}
	}
	public static StudentDAO newInstance() {
		if(dao==null) dao = new StudentDAO();
		return dao;
	}
	public void getConection() {
		try {
			conn = DriverManager.getConnection(URL,"hr","happy");
		} catch (Exception e) {}
	}
	public void disConection() {
		try {
			if(cs != null) cs.close();
			if(conn != null) conn.close();
		} catch (Exception e) {}
	}
	//기능
	/*  
		CREATE OR REPLACE PROCEDURE studentAllData(
			pResult OUT SYS_REFCURSOR,
		)
		IS
		BEGIN
			OPEN pResult FOR
			SELECT * FROM student;
		END;
		/
	 */
	//1. 목록 출력
	public List<StudentVO> studentAllData(){
		List<StudentVO> list = new ArrayList<StudentVO>();
		try {
			getConection();
			String sql = "{CALL studentAllData(?)}";
			cs = conn.prepareCall(sql); // 전송
			// ?에 값을 채운다
			cs.registerOutParameter(1, OracleTypes.CURSOR);
			// INTEGER (정수), VARCHAR, CURSOR
			// 실행 요청
			cs.executeQuery();
			// 실행
			// CURSOR => ResultSet
			ResultSet rs = (ResultSet)cs.getObject(1);
			while(rs.next()) {
				StudentVO vo = new StudentVO();
				vo.setHakbun(rs.getInt(1));
				vo.setName(rs.getString(2));
				vo.setKor(rs.getInt(3));
				vo.setEng(rs.getInt(4));
				vo.setMath(rs.getInt(5));
				list.add(vo);
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disConection();
		}
		return list;
	}
	//2. 등록
	/*
		CREATE OR REPLACE PROCEDURE studentInsert(
			pName student.name%TYPE,
			pKor student.kor%TYPE,
			pEng student.eng%TYPE,
			pMath student.math%TYPE
		)
		IS
		BEGIN
		  INSERT INTO student VALUES(
			(SELECT NVL(MAX(hakbun)+1,1) FROM student),
			pName, pKor, pEng, pMath
		  );
		  COMMIT;
		END;
		/
	 */
	//3. 수정
	//4. 삭제
	//5. 상세보기
	/*
		CREATE OR REPLACE PROCEDURE studentDetailData(
			pHakbun student.hakbun%TYPE,
			pResult OUT SYS_REFCURSOR
		)
		IS
		BEGIN
		  OPEN pResult FOR
		    SELECT *
		    FROM student
		    WHERE hakbun=pHakbun;
		END;
		/
	 */
	public StudentVO studentDetailData(int hakbun) {
		StudentVO vo = new StudentVO();
		try {
			getConection();
			String sql ="{CALL studentDetailData(?,?)}";
			cs = conn.prepareCall(sql);
			//? 에 값을 채운다
			//in변수는 ehddlf
			cs.setInt(1, hakbun);
			cs.registerOutParameter(2, OracleTypes.CURSOR);
			//실행
			cs.executeQuery();
			//결과값 받기
			ResultSet rs = (ResultSet)cs.getObject(2);
			rs.next();
			vo.setHakbun(rs.getInt(1));
			vo.setName(rs.getString(2));
			vo.setKor(rs.getInt(3));
			vo.setEng(rs.getInt(4));
			vo.setMath(rs.getInt(5));
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disConection();
		}
		return vo;
	}
}
