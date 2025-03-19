package com.sist.dao;

import java.util.*;

import org.apache.ibatis.jdbc.SQL;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.sist.commons.*;
import com.sist.vo.*;
public class RecipeDAO {
	private static SqlSessionFactory ssf;
	static {
		ssf=CreatSqlSessionFactory.getSsf();
	}
	/*
	<select id="recipeTodayChef" resultType="ShefVO">
		SELECT *
		FROM (SELECT * FROM chef ORDER BY DBMS_RANDOM.RANDOM)
		WHERE rownum&lt;=1
	</select>
	*/
	public static ChefVO recipeTodayChef() {
		SqlSession session=null;
		ChefVO vo=null;
		try {
			session=ssf.openSession();
			vo=session.selectOne("recipeTodayChef");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null)
				session.close();
		}
		return vo;
	}
	/*
	<select id="recipeData7" resultType="RecipeVO">
		SELECT no,title,poster,chef,hit,likecount,replycount,rownum
		FROM (SELECT * FROM recipe ORDER BY hit DESC)
		WHERE rownum&lt;=7
	</select>
	*/
	public static List<RecipeVO> recipeData7() {
		SqlSession session=null;
		List<RecipeVO> list=null;
		try {
			session=ssf.openSession();
			list=session.selectList("recipeData7");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null)
				session.close();
		}
		return list;
	}
	/*
	<select id="recipeListData" resultType="RecipeVO" parameterType="hashmap">
		SELECT no,title,poster,chef,hit,likecount,replycount,num
		FROM (SELECT no,title,poster,chef,hit,likecount,replycount,rownum as num
		FROM (SELECT /*+ INDEX_ASC(recipe recipe_no_pk)/no,title,poster,chef,hit,likecount,replycount
		FROM recipe))
		WHERE num BETWEEN #{start} AND #{end}
	</select>
	*/
	public static List<RecipeVO> recipeListData(Map map) {
		SqlSession session=null;
		List<RecipeVO> list=null;
		try {
			session=ssf.openSession();
			list=session.selectList("recipeListData",map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null)
				session.close();
		}
		return list;
	}
	/*
	<select id="recipeTotalPage" resultType="int">
		SELECT CEIL(COUNT(*)/12.0) FROM recipe
	</select>
	 */
	public static int recipeTotalPage() {
		SqlSession session=null;
		int total=0;
		try {
			session=ssf.openSession();
			total=session.selectOne("recipeTotalPage");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null)
				session.close();
		}
		return total;
	}
	public static List<ChefVO> recipeChefListData(Map map){
		SqlSession session=ssf.openSession();
		List<ChefVO> list=session.selectList("recipeChefListData",map);
		session.close();
		return list;
	}
	public static int recipeChefTotalPage(){
		SqlSession session=ssf.openSession();
		int total=session.selectOne("recipeChefTotalPage");
		session.close();
		return total;
	}
	/*
	 *  1. MyBatis
	 *     DML => select, update, delete, insert
	 *     			|
	 *     			resultMap : JOIN / SUBQUERY
	 *     동적 쿼리
	 *     	=> <trim> : 앞(prefix)/뒤(suffix)에 추가 / 제거(Overrides)
	 *     	=> <bind> : 변수형 = 문장이 긴 경우
	 *     		<bind name="likes" value="'%'||#{ss}||'%'">
	 *     			#{likes} => '%'||#{ss}||'%'로 변환해서 사용
	 *     	=> <foreach> : IN 연산자 / 데이터가 여러개 (checkbox)
	 *     		<foreach collection="arr" item="no">
	 *     		for(int no:arr)		 === Map key
	 *     		=> 배열/컬렉션
	 *     			=> 반드시 Map에 채워서 설정
	 *     		
	 *     	=> <where> => prefixOverrides="OR|AND"
	 *     		<where>
	 *     			<if test="조건">AND id=#{id}</>
	 *     			<if test="조건">AND pwd=#{pwd}</>
	 *     		</where>
	 *     	=> <if>
	 *     		<if test="id!=null"> id=='', id==null...
	 *     		
	 *     		=> else가 없다 => 단일 조건문
	 *     	=> <choose> : 다중 조건문
	 *     		<choose>
	 *     			<when text=""></when> - 조건1
	 *     			<when text=""></when> - 조건2
	 *     			<when text=""></when> - 조건3
	 *     			<otherwise></otherwise> - else
	 *     		</choose>
	 *     
	 *     => 인정 : sql / css
	 *     
	 *     Model / DAO / VO => Back
	 *     JSP / React / Vue / Jquery(Ajax) => Front
	 *     XML => DBA
	 */
	/*
	<select id="recipeFindData" resultType="RecipeVO" parameterType="hashmap">
		SELECT no,title,poster,chef,hit,likecount,replycount,num
		FROM (SELECT no,title,poster,chef,hit,likecount,replycount,rownum as num
		FROM (SELECT /*+ INDEX_ASC(recipe recipe_no_pk)/no,title,poster,chef,hit,likecount,replycount
		FROM recipe
		WHERE 
			<bind name="likes" value="'%'+ss+'%'">
			<trim prefix="(" suffix=")" prefixOverrides="OR">
				<foreach collection="findArr" item="type">
					<trim prefix="OR">
						<choose>
							<when test="type=='T'.toString()"> <!-- 'T'를 숫자로 인식 => .toString 사용 -->
								title Like #{likes}
							</when>
							<when test="type=='C'.toString()">
								chef Like #{likes}
							</when>
						</choose>
					</trim>
				</foreach>
			</trim>
		))
		WHERE num BETWEEN #{start} AND #{end}
	</select>
	*/
	public static List<RecipeVO> recipeFindData(Map map){
		SqlSession session=ssf.openSession();
		List<RecipeVO> list=session.selectList("recipeFindData",map);
		session.close();
		return list;
	}
	/*
	<update id="recipeHitIncrement" parameterType="int">
		UPDATE recipe SET
		hit=hit+1
		WHERE no=#{no}
	</update>
	<select id="recipeDetailData" resultType="RecipeDetailVO" parameterType="int">
		SELECT * FROM recipedetail
		WHERE no=#{no}
	</select>
	 */
	public static RecipeDetailVO recipeDetailData(int no) {
		SqlSession session=ssf.openSession();
		session.update("recipeHitIncrement",no);
		session.commit();
		RecipeDetailVO vo=session.selectOne("recipeDetailData",no);
		session.close();
		return vo;
	}
	/*
	<select id="recipeChefMakeData" resultType="RecipeVO" parameterType="hashmap">
		SELECT no,title,poster,chef,hit,likecount,replycount,num
		FROM (SELECT no,title,poster,chef,hit,likecount,replycount,rownum as num
		FROM (SELECT /*+ INDEX_ASC(recipe recipe_no_pk)/no,title,poster,chef,hit,likecount,replycount
		FROM recipe WHERE chef=(SELECT chef FROM chef WHERE no=#{no})))
		WHERE num BETWEEN #{start} AND #{end}
	</select>
	<select id="recipeChefMakeTotalPage" resultType="int" parameterType="int">
		SELECT CEIL(COUNT(*)/12.0) FROM recipe
		WHERE chef=(SELECT chef FROM chef WHERE no=#{no})
	</select>
	*/
	public static List<RecipeVO> recipeChefMakeData(Map map){
		SqlSession session=ssf.openSession();
		List<RecipeVO> list=session.selectList("recipeChefMakeData",map);
		session.close();
		return list;
	}
	public static int recipeChefMakeTotalPage(int no){
		SqlSession session=ssf.openSession();
		int total=session.selectOne("recipeChefMakeTotalPage",no);
		session.close();
		return total;
	}
}
