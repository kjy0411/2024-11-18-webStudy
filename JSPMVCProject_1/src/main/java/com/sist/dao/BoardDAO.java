package com.sist.dao;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.sist.vo.BoardVO;
// Controller - Model - DAO - Model - JSP
import java.io.*;
public class BoardDAO {
	private static SqlSessionFactory ssf;
	// 초기화 => XML에 등록된 데이터를 전송 => ssf
	static {
		try {
			// 1. XML 읽기
			Reader reader=Resources.getResourceAsReader("Config.xml");
			// 2. XML파싱
			ssf=new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/*  1. 목록
		<select id="baordListData" resultType="BoardVO" parameterType="hashmap">
			SELECT no,subject,name,regdate,hit,num
			FROM (SELECT no,subject,name,regdate,hit,rownum as num
			FROM (SELECT no,subject,name,regdate,hit
			FROM board ORDER BY no ASC))
			WHERE num BETWEEN #{start} AND #{end}
		</select>
	 */
	public static List<BoardVO> boardListData(Map map){
		// conn.ps
		SqlSession session=ssf.openSession();
		List<BoardVO> list=session.selectList("boardListData",map);
		// 목록 => 여러개 selectList
		session.close();
		return list;
	}
	/*  2.총페이지
		<select id="boardTotalPage" resultType="int">
			SELECT CEIL(COUNT(*)/10.0) FROM board
		</select>
	 */
	public static int boardTotalPage() {
		SqlSession session=ssf.openSession();
		int total=session.selectOne("boardTotalPage");
		// 상세보기 => 한개 selectOne
		session.close();
		return total;
	}
	/*  3. 글쓰기
		<insert id="boardInsert" parameterType="BoardVO">
			<selectKey keyProperty="no" resultType="int" order="BEFORE">
				SELECT NVL(MAX(no)+1,1) as no FROM board
			</selectKey>
			INSERT INTO board VALUES(
				#{no}, #{name}, #{subject}, #{content}, #{pwd}, SYSDATE, 0
			)
			<!-- #{name} => vo.getName() -->
		</insert>
	 */
	public static void boardInsert(BoardVO vo) {
		SqlSession session=ssf.openSession(); // autocommit 해제, true : autocommit
		session.insert("boardInsert",vo);
		session.commit(); // update,insert,delete
		// 데이터 갱신
		session.close();
	}
	// 상세보기
	public static BoardVO boardDetailData(int no) {
		SqlSession session=ssf.openSession();
		// 조회수 증가
		session.update("hitIncrement", no);
		session.commit();
		// 데이터 가지고 오기
		BoardVO vo=session.selectOne("boardDetailData",no);
		// 반환
		session.close();
		return vo;		
	}
}
