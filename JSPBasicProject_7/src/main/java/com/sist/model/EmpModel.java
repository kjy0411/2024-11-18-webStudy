package com.sist.model;

import java.util.List;
import jakarta.servlet.http.HttpServletRequest;
import com.sist.dao.EmpDAO;
import com.sist.vo.EmpVO;

// => JSP에서 출력 / 처리를 자바에서 처리
// request / response
// ------- 요청값을 담고 있다 => 데이터를 추가해서 JSP로 전송
public class EmpModel {
	// call By Reference : 배열 / 클래스
	public void empListData(HttpServletRequest request) {
		// 1. DataBase연동
		EmpDAO dao = new EmpDAO();
		List<EmpVO> list = dao.empListData();
		request.setAttribute("list", list);
		// JSP에서 받은 request 에 값을 채워준다
		// request.setAttribute("curpage", curpage)
	}
}
