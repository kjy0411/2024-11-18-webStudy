package com.sist.dao;
import com.sist.vo.*;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.*;

// XML을 읽어서 처리
// sax parse => xml
/*  
 *  XML 파싱
 *  1. dom => xml을 트리형태로 저장후 처리 => CRUD 가능 / 속도가 느리다
 *  2. sax => 대부분
 *  		  태그를 한개씩 읽어서 처리 => 읽기 전용 /속도가 빠르다
 * ================ data.go.kr / 카페 / 뉴스 ...
 */
public class FoodDAO {
	private static SqlSessionFactory ssf;
	// SqlsessionFactoryBeen => String
	static {
		try {
			// XML 파일 읽기 => Config.xml => mapper포함
			Reader reader = Resources.getResourceAsReader("Config.xml");
			ssf = new SqlSessionFactoryBuilder().build(reader);
			} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/*
	<select id="foodListData" resultType="FoodVO">
 		SELECT fno, name, poster, num
 		FROM (SELECT fno, name, poster, rownum as num
 		FROM (SELECT fno, name, poster
 		FROM food_menupan ORDER BY fno ASC))
 		WHERE num BETWEEN #{start} AND #{end}
 	</select>
 	<select id="foodTotalPaga" resultType="int">
 		SELECT CEIL(COUNT(*)/12.0) FROM food_menupan
 	</select>
	 */
	public static List<FoodVO> foodListData(Map map){
		return ssf.openSession().selectList("foodListData", map);
	}
	public static int foodTotalPage() {
		return ssf.openSession().selectOne("foodTotalPaga");
	}
	/*
	<update id="hitIncrement" parameterType="int">
 		UPDATE food_menupan SET
 		hit = hit + 1
		<include refid="where-fno"/>
 	</update>
 	
 	TO_CHAR(regdate, 'yyyy-MM-dd') as dbday
 	<select id="foodDetailData" resultMap="FoodVO" parameterType="int">
 		SELECT name,type,phone,address,theme,poster,images,time,parking,content,price,score,hit
		FROM food_menupan
		<include refid="where-fno"/>
	</select>
	 */
	public static FoodVO foodDetailData(int fno) {
		ssf.openSession(true).update("hitIncrement", fno);
		// 조회수 증가가 안된다 => autoCommit
		return ssf.openSession().selectOne("foodDetailData", fno);
	}
	
}
