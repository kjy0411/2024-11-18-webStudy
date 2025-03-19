package com.sist.dao;
import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sist.commons.*;
import com.sist.vo.*;
public class NoticeDAO {
	private static SqlSessionFactory ssf;
	static {
		ssf=CreatSqlSessionFactory.getSsf();
	}
	/*
	<select id="noticeListDate" resultType="NoticeVO" parameterType="hashmap">
		SELECT no,subject,name,TO_CHAR(regdate,'YYYY-MM-DD') as dbday,hit,num
		FROM (SELECT no,subject,name,regdate,hit,rownum as num
		FROM (SELECT no,subject,name,regdate,hit
		FROM project_notice ORDER BY no DESC))
		WHERE num BETWEEN #{start} AND #{end}
	</select>
	*/
	public static List<NoticeVO> noticeListDate(Map map){
		SqlSession session=ssf.openSession();
		List<NoticeVO> list=session.selectList("noticeListDate",map);
		session.close();
		return list;
	}
	/*
	<select id="noticeTotalPage" resultType="int">
		SELECT CEIL(COUNT(*)/10.0) FROM project_notice
	</select>
	*/
	public static int noticeTotalCount(){
		SqlSession session=ssf.openSession();
		int count=session.selectOne("noticeTotalCount");
		session.close();
		return count;
	}
	/*
	<insert id="noticeInsert" parameterType="NoticeVO">
		INSERT INTO project_notice(no,type,subject,content) VALUES(
			pn_no_seq.nextval,#{type},#{subject},#{content}
		)
	</insert>
	*/
	public static void noticeInsert(NoticeVO vo){
		SqlSession session=ssf.openSession(true);
		session.insert("noticeInsert",vo);
		session.close();
	}
	/*
	<update id="noticeHitIncrement" parameterType="int">
		UPDATE project_notice SET
		hit=hit+1
		WHERE no=#{no}
	</update>
	<select id="noticeDetailData" parameterType="int">
		SELECT no,type,name,subject,content,hit,TO_CHAR(regdate,'YYYY-MM-DD H24:MI:SS') as dbday
		FROM project_notice
		WHERE no=#{no}
	</select>
	 */
	public static NoticeVO noticeDetailData(int no,int mode){
		//트랜잭션
		SqlSession session=ssf.openSession();
		if(mode==1) {
			session.insert("noticeHitIncrement",no);
			session.commit();
		}
		NoticeVO vo=session.selectOne("noticeDetailData",no);
		session.close();
		return vo;
	}
	/*
	<update id="noticeUpdate" parameterType="NoticeVO">
		UPDATE project_notice SET
		type=#{type},subject=#{subject},content=#{content}
		WHERE no=#{no}
	</update>
	*/
	public static void noticeUpdate(NoticeVO vo){
		SqlSession session=ssf.openSession(true);
		session.update("noticeUpdate",vo);
		session.close();
	}
	/*
	<delete id="noticeDelete" parameterMap="int">
		DELETE FROM project_notice
		WHERE no=#{no}
	</delete>
	 */
	public static void noticeDelete(int no){
		SqlSession session=ssf.openSession(true);
		session.delete("noticeDelete",no);
		session.close();
	}
}
