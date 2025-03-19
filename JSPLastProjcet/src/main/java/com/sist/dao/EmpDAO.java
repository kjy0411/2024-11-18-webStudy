package com.sist.dao;
import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sist.commons.*;
import com.sist.vo.*;
/*
 *  프로시저 / 트리거
 */
public class EmpDAO {
	private static SqlSessionFactory ssf;
	static {
		ssf=CreatSqlSessionFactory.getSsf();
	}
	/*
	<select id="empGetEnameData" resultType="EmpVO">
		SELECT empno, ename
		FROM emp
	</select>
	 */
	public static List<EmpVO> empGetEnameData(){
		SqlSession session=ssf.openSession();
		List<EmpVO> list=session.selectList("empGetEnameData");
		session.close();
		return list;
	}
	public static List<EmpVO> empfindData(Map map){
		SqlSession session=ssf.openSession();
		List<EmpVO> list=session.selectList("empfindData",map);
		session.close();
		return list;
	}
}
