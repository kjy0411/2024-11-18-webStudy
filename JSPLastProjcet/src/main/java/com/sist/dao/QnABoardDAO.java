package com.sist.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import java.util.*;
import com.sist.commons.*;
import com.sist.vo.*;
public class QnABoardDAO {
	private static SqlSessionFactory ssf;
	static {
		ssf=CreatSqlSessionFactory.getSsf();
	}
	/*
	<select id="qnaListData" resultType="QnABoardVO" parameterType="hashmap">
		SELECT no,subject,name,TO_CHAR(regdate,'YYYY-MM-DD') as dbday,hit,group_tab,num
		FROM (SELECT no,subject,name,regdate,hit,group_tab,rownum as num
		FROM (SELECT no,subject,name,regdate,hit,group_tab
		FROM qnaBoard ORDER BY group_id DESC AND group_step ASC))
		WHERE no BETWEEN #{start} AND #{end}
	</select>
	*/
	public static List<QnABoardVO> qnaListData(Map map){
		SqlSession session=ssf.openSession();
		List<QnABoardVO> list=new ArrayList<QnABoardVO>();
		try {
			list=session.selectList("qnaListData",map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		session.close();
		return list;
	}
	/*
	<select id="qnaRowCount" resultType="int">
		SELECT COUNT(*) FROM qnaBoard
	</select>
	*/
	public static int qnaRowCount(){
		SqlSession session=ssf.openSession();
		int count=0;
		try {
			
			count=session.selectOne("qnaRowCount");
		} catch (Exception e) {
			e.printStackTrace();
		}
		session.close();
		return count;
	}
	
	/*
	<!-- 문의 -->
	<insert id="qnaInsert" parameterType="QnABoardVO">
		INSERT INTO qnaBoard(no,id,name,subject,content,pwd,group_id)
		VALUES(
			(SELECT NVL(MAX(no)+1,1) FROM qnaBoard),
			#{id},#{name},#{subject},#{content},#{pwd},
			(SELECT NVL(MAX(group_id)+1,1) FROM qnaBoard)
		)
	</insert>
	 */
	public static void qnaInsert(QnABoardVO vo){
		SqlSession session=ssf.openSession(true);
		session.insert("qnaInsert",vo);
		session.close();
	}
	/*
	<select id="qnaAdminListData" resultType="QnABoardVO" parameterType="hashmap">
		SELECT no,subject,name,TO_CHAR(regdate,'YYYY-MM-DD') as dbday,hit,group_tab,group_id,group_step,anok,num
		FROM (SELECT no,subject,name,regdate,hit,group_tab,group_id,group_step,anok,rownum as num
		FROM (SELECT no,subject,name,regdate,hit,group_tab,group_id,group_step,anok
		FROM qnaBoard WHERE group_step=0 ORDER BY group_id DESC))
		WHERE no BETWEEN #{start} AND #{end}
	</select>
	<select id="qnaAdminRowCount" resultType="int">
		SELECT COUNT(*) FROM qnaBoard
		WHERE group_step=0
	</select>
	 */
	public static List<QnABoardVO> qnaAdminListData(Map map){
		SqlSession session=ssf.openSession();
		List<QnABoardVO> list=new ArrayList<QnABoardVO>();
		try {
			list=session.selectList("qnaAdminListData",map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		session.close();
		return list;
	}
	public static int qnaAdminRowCount(){
		SqlSession session=ssf.openSession();
		int count=0;
		try {
			
			count=session.selectOne("qnaAdminRowCount");
		} catch (Exception e) {
			e.printStackTrace();
		}
		session.close();
		return count;
	}
	/*
	//답변
	<select id="qnaAdminDetailData" resultType="QnABoardVO" parameterType="int">
		SELECT no,name,subject,TO_CHAR(regdate,'YYYY-MM-DD HH24:MI:SS') as dbday,content
		FROM qnaBoard
		WHERE group_id=#{group_id}
	</select>
	*/
	public static QnABoardVO qnaAdminDetailData(int group_id) {
		SqlSession session=ssf.openSession();
		QnABoardVO vo=session.selectOne("qnaAdminDetailData",group_id);
		session.close();
		return vo;
	}
	/*
	<update id="qnaAdminAnOKChange" parameterType="int">
		UPDATE qnaBoard SET
		anok='y'
		WHERE group_id=#{group_id}
	</update>
	<insert id="qnaAdminInsert" parameterType="QnABoardVO">
		INSERT INTO qnaBoard(no,id,name,subject,content,pwd,group_id,group_step,group_tab,anok)
		VALUES(
		    (SELECT NVL(MAX(no)+1,1) FROM qnaBoard),
		    #{id},
		    '관리자',
		    #{subject},
		    #{content},
		    #{pwd},
		    #{group_id},
		    1,1,'y'
		);
	</insert>
	 */
	public static void qnaAdminInsert(QnABoardVO vo) {
		SqlSession session=null;
		// 트랜잭션 => 일괄처리 => 금융권, 물류
		try {
			session=ssf.openSession();
			session.update("qnaAdminAnOKChange",vo.getGroup_id());
			session.insert("qnaAdminInsert",vo);
			session.commit(); // 동시에 저장
		} catch (Exception e) {
			e.printStackTrace(); // 동시에 취소
			session.rollback();
		} finally {
			session.close();
		}
		return;
	}
	/*
	<update id="qnaHitIncrement" parameterType="int">
		UPDATE qnaBoard SET
		hit=hit+1
		WHERE no=#{no}
	</update>
	<select id="qnaDetailData" resultType="QnABoardVO" parameterType="int">
		SELECT no,name,subject,content,hit,TO_CHAR(regdate,'YYYY-MM-DD') as dbday
		FROM qnaBoard
		WHERE no=#{no}
	</select>
	*/
	public static QnABoardVO qnaDetailData(int no) {
		SqlSession session=ssf.openSession();
		session.update("qnaHitIncrement",no);
		session.commit();
		QnABoardVO vo=session.selectOne("qnaDetailData",no);
		session.close();
		return vo;
	} 
	public static QnABoardVO qnaUpdateData(int no) {
		SqlSession session=ssf.openSession();
		QnABoardVO vo=session.selectOne("qnaDetailData",no);
		session.close();
		return vo;
	}
	/*
	<update id="qnaUpdate" parameterType="QnABoardVO">
		UPDATE qnaBoard SET
		subject=#{subject},content=#{content}
		WHERE no=#{no}
	</update>
	 */
	public static void qnaUpdate(QnABoardVO vo) {
		SqlSession session=ssf.openSession(true);
		try {
			session.update("qnaUpdate",vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		session.close();
	}
	/*
	<delete id="qnaDelete" parameterType="int">
		DELETE FROM qnaBoard
		WHERE group_id=#{group_id}
	</delete>
	 */
	public static void qnaDelete(int group_id) {
		SqlSession session=ssf.openSession(true);
		session.delete("qnaDelete",group_id);
		session.close();
	}
	/*
	<update id="qnaAdminAnDeleteOk" parameterType="int">
		UPDATE qnaBoard SET
		anok='n'
		WHERE group_id=#{group_id}
	</update>
	<delete id="qnaAdminDelete" parameterType="int">
		DELETE FROM qnaBoard
		WHERE group_id=#{group_id} AND group_step=1
	</delete>
	 */
	public static void qnaAdminDelete(int group_id) {
		SqlSession session=null;
		try {
			session=ssf.openSession();
			session.update("qnaAdminAnDeleteOk",group_id);
			session.delete("qnaAdminDelete",group_id);
			session.commit();
		} catch (Exception e) {
			session.rollback();
		} finally {
			session.close();
		}
	}
	/*
	
	 */
	public static void qnaAdminUpdate(QnABoardVO vo) {
		SqlSession session=ssf.openSession(true);
		session.update("qnaUpdate",vo);
		session.close();
	}
	/*
	public static void test() {
		SqlSession session=ssf.openSession();
		session.close();
		return;
	}
	*/
}
