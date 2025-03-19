package com.sist.dao;
import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sist.commons.*;
import com.sist.vo.*;
public class BoardDAO {
	private static SqlSessionFactory ssf;
	static {
		ssf=CreatSqlSessionFactory.getSsf();
	}
	/*
	<select id="boardListData" resultType="BoardVO" parameterType="hashmap">
		SELECT no,subject,name,TO_CHAR(regdate,'YYYY-MM-DD') as dbday,hit,num
		FROM (SELECT no,subject,name,regdate,hit,rownum as num
		FROM (SELECT no,subject,name,regdate,hit
		FROM project_board ORDER BY no DESC))
		WHERE num BETWEEN #{start} AND #{end}
	</select>
	*/
	public static List<BoardVO> boardListData(Map map){
		SqlSession session=ssf.openSession();
		List<BoardVO> list=session.selectList("boardListData",map);
		session.close();
		return list;
	}
	/*
	<select id="boardTotalPage" resultType="int">
		SELECT CEIL(COUNT(*)/10.0) FROM project_board
	</select>
	*/
	public static int boardTotalPage(){
		SqlSession session=ssf.openSession();
		int total=session.selectOne("boardTotalPage");
		session.close();
		return total;
	}
	/*
	<update id="boardHitIncrement" parameterType="int">
		UPDATE project_board SET
		hit=hit+1
		WHERE no=#{no}
	</update>
	<select id="boardDetailData" resultType="BoardVO" parameterType="int">
		SELECT no,name,subject,content,hit,TO_CHAR(regdate,'YYYY-MM-DD' HH24:MI:SS) as dbday
	</select>
	 */
	public static BoardVO boardDetailData(int no){
		SqlSession session=ssf.openSession();
		session.insert("boardHitIncrement",no);
		session.commit();
		BoardVO vo=session.selectOne("boardDetailData",no);
		session.close();
		return vo;
	}
	/*
	<insert id="boardInsert" parameterType="BoardVO">
		<selectKey keyProperty="no" resultType="int" order="BEFORE">
			SELECT NVL(MAX(no)+1,1) as no FROM project_board
		</selectKey>
		INSERT INTO project_board VALUES(
			#{no},#{name},#{subject},#{content},#{pwd},SYSDATE,0
		)
	</insert>
	*/
	public static void boardInsert(BoardVO vo){
		SqlSession session=ssf.openSession(true);
		session.insert("boardInsert",vo);
		session.close();
	}
	/*
	<!-- 수정 -->
	<update id="boardUpdate" parameterType="BoardVO">
		UPDATE project_board SET
		name=#{name},subject=#{subject},content#{content}
		WHERE no=#{no}
	</update>
	 */
	public static BoardVO BoardUpdateData(int no) {
		SqlSession session=ssf.openSession();
		BoardVO vo=session.selectOne("boardDetailData",no);
		session.close();
		return vo;
	}
	public static void boardUpdate(BoardVO vo){
		SqlSession session=ssf.openSession(true);
		session.update("boardUpdate",vo);
		session.close();
	}
	/*
	<!-- 삭제 -->
	<select id="boardGetPassword" resultType="String" parameterType="int">
		SELECT pwd FROM project_board
		WHERE no=#{no}
	</select>
	<delete id="boardDelete" parameterType="int">
		DELETE FROM project_board
		WHERE no=#{no}
	</delete>
	 */
	public static String boardGetPassword(int no) {
		SqlSession session=ssf.openSession();
		String pwd=session.selectOne("boardGetPassword",no);
		session.close();
		return pwd;
	}
	public static void boardDelete(int no){
		SqlSession session=ssf.openSession(true);
		session.delete("boardDelete",no);
		session.close();
	}
}