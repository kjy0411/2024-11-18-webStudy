package com.sist.dao;
import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sist.commons.*;
import com.sist.vo.*;
public class ReserveDAO {
	private static SqlSessionFactory ssf;
	static {
		try {
			ssf=CreatSqlSessionFactory.getSsf();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	// <select id="reserveFoodDate" resultType="FoodVO" parameterType="hashmap">
	public static List<FoodVO> reserveFoodDate(Map map) {
		SqlSession session=ssf.openSession();
		List<FoodVO> list=session.selectList("reserveFoodDate",map);
		session.close();
		return list;
	}
}
