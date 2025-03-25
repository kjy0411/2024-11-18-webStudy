package com.sist.dao;
import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sist.commons.*;
import com.sist.vo.*;
public class MemberDAO {
	private static SqlSessionFactory ssf;
	static{
		ssf=CreatSqlSessionFactory.getSsf();
	}
	/*
	<select id="memberIdcheck" resultType="int" parameterType="String">
		SELECT count(*) FROM project_member
		WHERE id=#{id}
	</select>
	*/
	public static int memberIdcheck(String id) {
		SqlSession session=ssf.openSession();
		int count=session.selectOne("memberIdcheck",id);
		session.close();
		return count;
	}
	/*
	<insert id="memberInsert" parameterType="MemberVO">
		INSERT INTO project_member VALUES(
			#{id},
			#{pwd},
			#{name},
			#{sex},
			#{birthday},
			#{email},
			#{post},
			#{addr1},
			#{addr2},
			#{phone},
			#{content},
			'n'
		)
	</insert>
	 */
	public static void memberInsert(MemberVO vo) {
		SqlSession session=ssf.openSession(true);
		session.selectOne("memberInsert",vo);
		session.close();
	}
	/*
	<select id="memberIdCheckCount" resultType="int" parameterMap="String">
		SELECT COUNT(*) FROM project_member
		WHERE id=#{id}
	</select>
	<select id="memberGetPassword" resultType="MemberVO" parameterType="String">
		SELECT id,pwd,name,sex,admin
		FROM project_member
		WHERE id=#{id}
	</select>
	*/
	public static MemberVO memberLogin(String id, String pwd) {
		MemberVO vo=new MemberVO();
		SqlSession session=ssf.openSession();
		int count=session.selectOne("memberIdCheckCount",id);
		if(count==0) {
			vo.setMsg("NOID");
		}else {
			vo=session.selectOne("memberGetPassword",id);
			if(pwd.equals(vo.getPwd())) {
				vo.setMsg("OK");
			}else {
				vo.setMsg("NOPWD");
			}
		}
		session.close();
		return vo;
	}
	/*
	<select id="memberInfoData" resultType="MemberVO" parameterType="String">
		SELECT * FROM project_member
		WHERE id=#{id}
	</select>
	 */
	public static MemberVO memberInfoData(String id) {
		SqlSession session=ssf.openSession();
		MemberVO vo=session.selectOne("memberInfoData",id);
		session.close();
		return vo;
	}
}
