package com.sist.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sist.commons.CreatSqlSessionFactory;
import java.util.*;
import com.sist.vo.*;
public class SeoulDAO {
	private static SqlSessionFactory ssf;
	static {
		ssf=CreatSqlSessionFactory.getSsf();
	}
	/*
		<select id="seoulListData" resultType="SeoulVO" parameterMap="hashmap">
			SELECT no,title,poster,hit,likecount,replycount,num
			FROM (SELECT no,title,poster,hit,likecount,replycount,rownum as num
			FROM (SELECT no,title,poster,hit,likecount,replycount
			FROM ${table_name} ORDER BY no ASC))
			WHERE num BETWEEN #{start} AND #{end}
		</select>
	*/
	public static List<SeoulVO> seoulListData(Map map){
		SqlSession session=ssf.openSession();
		List<SeoulVO> list=session.selectList("seoulListData",map);
		session.close();
		return list;
	}
	/*
		<select id="seoulTotalPage" resultType="int" parameterType="hashmap">
			SELECT CEIL(COUNT(*)/12*0) FROM ${table_name}
		</select>
	 */
	public static int seoulTotalPage(Map map) {
		SqlSession session=ssf.openSession();
		int total=session.selectOne("seoulTotalPage",map);
		session.close();
		return total;
	}
}
