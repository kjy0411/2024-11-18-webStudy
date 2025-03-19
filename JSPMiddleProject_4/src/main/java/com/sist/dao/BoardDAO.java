package com.sist.dao;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.*;
import com.sist.vo.*;
public class BoardDAO {
	private static SqlSessionFactory ssf;
	// XML의 데이터를 저장 => SqlSessionFactory
	static {
		try {
			Reader reader=Resources.getResourceAsReader("Config.xml");
			ssf=new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	// 기능 설정
	/*  
		<select id="boardListData" resultType="BoardVO" parameterType="hashmap">
			SELECT no,subject,name,regdate,hit,num
			FROM (SELECT no,subject,name,regdate,hit,rownum as num
			FROM (SELECT no,subject,name,regdate,hit
			FROM board ORDER BY no DESC))
			WHERE num BETWEEN #{start} AND #{end}
		</select>
	 */
	public static List<BoardVO> boardListDate(Map map){
		SqlSession session=ssf.openSession();
		List<BoardVO> list=session.selectList("boardListData",map);
		session.close(); // POOL로 반환
		return list;
	}
	/*
		<select id="boardTotalPage" resultType="int">
			SELECT CEIL(COUNT(*)/12.0) FROM board
		</select>
	 */
	public static int boardTotalPage(){
		SqlSession session=ssf.openSession();
		int total=session.selectOne("boardTotalPage");
		session.close();
		return total;
	}
	/*
		<insert id="boardInsert" parameterType="BoardVO">
			<selectKey keyProperty="no" resultType="int" order="BEFORE">
				SELECT NVL(MAX(no)+1,1) as no FROM board
			</selectKey>
			INSERT INTO board
			VALUES(#{no}, #{name}, #{subject}, #{content}, #{pwd}, SYSDATE, 0)
		</insert>
	 */
	public static void boardInsert(BoardVO vo){
		SqlSession session=ssf.openSession();
		/*  
		 *  ssf.openSession(); setAutoCommit(false)
		 *  ssf.openSession(true); setAutoCommit(true)
		 */
		session.insert("boardInsert",vo);
		session.commit(); // 수동 Commit
		session.close();
	}
	// insert/update/delete/select => 관리 => SqlSession
	// SqlSession은 SqlSessionFactory가 생성
	// SqlSession session=ssf.openSession()
	// connction / preparedstatement => close() 반환
}
