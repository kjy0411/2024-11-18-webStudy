package com.sist.dao;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.sist.vo.*;

public class MainDAO {
	private static SqlSessionFactory ssf;
	static {
		try {
			Reader reader=Resources.getResourceAsReader("Config.xml");
			ssf=new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static int welfareFind(String fd) {
		int wno=0;
		SqlSession session=ssf.openSession();
		Map map=new HashMap();
		map.put("fd", fd);
		try {
			wno=session.selectOne("welfareFind",map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		session.close();
		return wno;
	}
	/*
	<select id="officialCount" resultType="int">
		SELECT count(*) FROM official
	</select>
	<select id="officialFindCname" resultType="int" parameterType="hashmap">
		SELECT count(*) FROM official WHERE cname=#{cname}
	</select>
	 */
	public static int officialCount() {
		SqlSession session=ssf.openSession();
		int count=session.selectOne("officialCount");
		session.close();
		return count;
	}
	/*
	<insert id="officialInsert" parameterType="officialVO">
		INSERT INTO official
		VALUES(#{cid},#{pw},#{email},#{cname},#{name},#{phone},#{brnumber},#{state},#{access_key})
	</insert>
	 */
	public static void officialInsert(OfficialVO vo) {
		SqlSession session=ssf.openSession();
		session.insert("officialInsert",vo);
		session.commit();
		session.close();
		return;
	}
	/*
	<insert id="comInsert" parameterType="ComVO">
		INSERT INTO company
		VALUES(
			#{cid},
			#{name},
			#{introduction},
			NVL(TO_DATE(#{dbdate},'YYYY-MM-DD'),null),
			#{c_type},
			#{ecount},
			((#{jo}*10000+#{uk})*10000+#{man})*10000,
			#{industry},
			#{representative},
			#{homepage},
			#{bu_details},
			#{address},
			#{history},
			#{access_key},
			#{poster},
			null)
	</insert>
	*/
	public static void comInsert(ComVO vo) {
		SqlSession session=ssf.openSession();
		session.insert("comInsert",vo);
		session.commit();
		session.close();
		return;
	}
	/*
	<insert id="comWelfareInsert" parameterType="WelfareVO">
		INSERT INTO COM_WELFARE
		VALUES(#{wno},#{id})
	</insert>
	 */
	public static void comWelfareInsert(WelfareVO vo) {
		SqlSession session=ssf.openSession();
		session.insert("comWelfareInsert",vo);
		session.commit();
		session.close();
		return;
	}
	/*
	<select id="cidKey" resultType="ComVO">
		SELECT cid,access_key FROM company
	</select>
	*/
	public static List<ComVO> cidKey() {
		SqlSession session=ssf.openSession();
		List<ComVO> list=session.selectList("cidKey");
		session.close();
		return list;
	}
	/*
	<insert id="empInsert" parameterType="EmpVO">
		INSERT INTO employment
		VALUES(
			#{eno},
			#{name},
			#{title},
			#{personal_history},
			#{salary},
			#{education},
			#{loc},
			#{emp_type},
			TO_DATE(#{regdate},'YYYY-MM-DD HH24:MI:SS'),
			#{hit},
			TO_DATE(#{deadline},'YYYY-MM-DD HH24:MI:SS'),
			#{cid},
		)
	</insert>
	*/
	public static void empInsert(EmpVO vo) {
		SqlSession session=ssf.openSession();
		try {
			session.insert("empInsert",vo);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		session.close();
		return;
	}
	/*
	<insert id="jobInsert" parameterType="JobVO">
		INSERT INTO emp_job
		values(#{eno},#{jno})
	</insert>
	 */
	public static void jobInsert(JobVO vo) {
		SqlSession session=ssf.openSession();
		try {
			session.insert("jobInsert",vo);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		session.close();
		return;
	}
}
