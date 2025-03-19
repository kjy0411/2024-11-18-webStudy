package com.sist.dao;
import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sist.vo.*;
import com.sist.commons.*;
public class FoodDAO {
	private static SqlSessionFactory ssf;
	static {
		ssf=CreatSqlSessionFactory.getSsf();
	}
	/*
		<select id="foodMainHouseData" resultType="FoodVO">
			SELECT *
			FROM (SELECT * FROM project_food 
				ORDER BY DBMS_RANDOM.RANDOM)
			WHERE rownum&lt;=1
		</select>
	*/
	public static FoodVO foodMainHouseData() {
		SqlSession session=ssf.openSession();
		FoodVO vo=session.selectOne("foodMainHouseData");
		session.close();
		return vo;
	}
	/*
		<select id="foodMainHouseData8" resultType="FoodVO">
			SELECT *
			FROM (SELECT * FROM project_food 
				ORDER BY DBMS_RANDOM.RANDOM)
			WHERE rownum&lt;=8
		</select>
	 */
	public static List<FoodVO> foodMainHouseData8() {
		SqlSession session=ssf.openSession();
		List<FoodVO> list=session.selectList("foodMainHouseData8");
		session.close();
		return list;
	}
	/*
	<select id="foodListData" resultType="FoodVO" parameterType="hashmap">
		SELECT fno,name,poster,score,type,content,theme,phone,address,num
		FROM (SELECT fno,name,poster,score,type,content,theme,phone,address,rownum as num
		FROM (SELECT /*+ INDEX_ASC(project_food pf_fno_pk)/fno,name,poster,score,type,content,theme,phone,address
		FROM project_food))
		WHERE num BETWEEN #{start} AND #{end}
	</select>
	*/
	public static List<FoodVO> foodListData(Map map) {
		SqlSession session=ssf.openSession();
		List<FoodVO> list=session.selectList("foodListData", map);
		session.close();
		return list;
	}
	
	/*
	<select id="foodTotalPage" resultType="int">
		SELECT CEIL(COUNT(*)/20.0) FROM project_food
	</select>
	 */
	public static int foodTotalPage() {
		SqlSession session=ssf.openSession();
		int total=session.selectOne("foodTotalPage");
		session.close();
		return total;
	}
	/*
	<update id="foodHitIncrement" parameterMap="int">
		UPDATE project_food SET
		hit=hit+1
		WHERE fno=#{fno}
	</update>
	<select id="foodDetailData" resultType="FoodVO" parameterType="int">
		SELECT * FROM project_food
		WHERE fno=#{fno}
	</select>
	 */
	public static FoodVO foodDetailData(int fno) {
		SqlSession session=ssf.openSession(true);// true : auto commit / false : not commit
		session.update("foodHitIncrement",fno);
		//session.commit();
		FoodVO vo=session.selectOne("foodDetailData", fno);
		session.close();
		return vo;
	}
	public static FoodVO foodCookieData(int fno) {
		SqlSession session=ssf.openSession();
		FoodVO vo=session.selectOne("foodDetailData", fno);
		session.close();
		return vo;
	}
	/*
	<select id="foodFindData" resultType="FoodVO" parameterType="hashmap">
		SELECT fno,name,poster,score,type,content,theme,phone,address,num
		FROM (SELECT fno,name,poster,score,type,content,theme,phone,address,rownum as num
		FROM (SELECT /*+ INDEX_ASC(project_food pf_fno_pk)/fno,name,poster,score,type,content,theme,phone,address
		FROM project_food WHERE ${fd} LIKE '%'||#{ss}||'%'))
		WHERE num BETWEEN #{start} AND #{end}
	</select>
	<select id="foodFindTotalPage" resultType="int" parameterType="hashmap">
		SELECT CEIL(COUNT(*)/12.0) FROM project_food WHERE ${fd} LIKE '%'||#{ss}||'%'
	</select>
	 */
	public static List<FoodVO> foodFindData(Map map) {
		SqlSession session=ssf.openSession();
		List<FoodVO> list=session.selectList("foodFindData", map);
		session.close();
		return list;
	}
	public static int foodFindTotalPage(Map map) {
		SqlSession session=ssf.openSession();
		int total=session.selectOne("foodFindTotalPage",map);
		session.close();
		return total;
	}
}
