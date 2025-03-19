package com.sist.dao;

import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sist.commons.*;
import com.sist.vo.*;
public class ReplyDAO {
	private static SqlSessionFactory ssf;
	static {
		ssf=CreatSqlSessionFactory.getSsf();
	}
	/*
	<!-- 댓글 목록 type 1:맛집 2:레시피 3: 여행 4:게시판... -->
	<select id="replyListData" resultType="ReplyVO" parameterType="ReplyVO">
		SELECT con,rno,type,id,name,sex,msg,TO_CHAR(regdate,'YYYY-MM-DD')
		FROM all_comment
		WHERE rno=#{rno} AND cno=#{cno}
		ORDER BY cno DESC
	</select>
	*/
	public static List<ReplyVO> replyListData(ReplyVO vo){
		SqlSession session=ssf.openSession();
		List<ReplyVO> list=session.selectList("replyListData",vo);
		session.close();
		return list;
	}
	/*
	<!-- 댓글 쓰기 -->
	<insert id="replyInsert" parameterType="ReplyVO">
		INSERT INTO all_comment(cno,rno,type,id,name,sex,msg,group_id)
		VALUER(
			(SELECT NVL(MAX(cno)_1,1) FROM all_comment),
			#{rno},#{type},#{id},#{name},#{sex},#{msg},
			(SELECT NVL(MAX(group_id)_1,1) FROM all_comment)
		)
	</insert>
	 */
	public static void replyInsert(ReplyVO vo) {
		SqlSession sessions=ssf.openSession(true);
		sessions.insert("replyInsert",vo);
		sessions.close();
	}
	/*
	<select id="replyCount" resultType="int" parameterType="ReplyVO">
		SELECT COUNT(*) FROM all_comment
		WHERE rno=#{rno} AND cno=#{cno}
	</select>
	*/
	public static int replyCount(ReplyVO vo) {
		SqlSession sessions=ssf.openSession();
		int count=sessions.selectOne("replyCount",vo);
		sessions.close();
		return count;
	}
	/*
	<delete id="replyDelete" parameterType="int">
		DELETE FROM all_comment
		WHERE cno=#{cno}
	</delete>
	 */
	public static void replyDelete(int cno) {
		SqlSession sessions=ssf.openSession(true);
		sessions.delete("replyDelete",cno);
		sessions.close();
	}
	/*
	<update id="replyUpdate" parameterType="ReplyVO">
		UPDATE all_comment SET
		msg=#{msg}
		WHERE cno=#{cno}
	</update>
	 */
	public static void replyUpdate(ReplyVO vo) {
		SqlSession sessions=ssf.openSession(true);
		sessions.update("replyUpdate",vo);
		sessions.close();
	}
}
