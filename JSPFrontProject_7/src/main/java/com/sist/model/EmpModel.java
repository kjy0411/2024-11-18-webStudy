package com.sist.model;
import java.io.PrintWriter;
import java.util.*;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.dao.*;
import com.sist.vo.*;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@Controller
// Spring Framework / Spring-Boot
public class EmpModel {
	@RequestMapping("emp/list.do")
	public String emp_list(HttpServletRequest request, HttpServletResponse response) {
		
		return "../emp/list.jsp";
	}
	@RequestMapping("emp/list_ajax.do")
	public String emp_list_ajax(HttpServletRequest request, HttpServletResponse response) {
		List<EmpVO> list=EmpDAO.empListData();
		request.setAttribute("list", list);
		return "../emp/list_ajax.jsp";
	}
	
	// 핵심
	@RequestMapping("emp/list_json.do")
	public void emp_list_json(HttpServletRequest request, HttpServletResponse response) {
		List<EmpVO> list=EmpDAO.empListData();
		try {
			// List => [] JSONArray
			// vo => [] JSONObject
			// 1 => let, "" => let => 일반 데이터형
			JSONArray arr=new JSONArray(); //[] => {}
			for(EmpVO vo:list) {
				JSONObject obj=new JSONObject();
				// {empno:100, ename:'', job:'', hiredate:'', sal:3000}
				obj.put("empno", vo.getEmpno());
				obj.put("ename", vo.getEname());
				obj.put("job", vo.getJob());
				obj.put("hiredate", vo.getDbday());
				obj.put("sal", vo.getSal());
				arr.add(obj);
			}
			// 전송
			response.setContentType("text/plain;charset=UTF-8");
			PrintWriter out=response.getWriter();
			out.write(arr.toJSONString());
		} catch (Exception e) {}
	}
	@RequestMapping("food/list.do")
	public String food_list(HttpServletRequest request, HttpServletResponse response) {
		
		return "../food/list.jsp";
	}
	@RequestMapping("food/list_json.do")
	public void food_list_ajax(HttpServletRequest request, HttpServletResponse response) {
		String type=request.getParameter("type");
		// => 맛집 예약
		List<FoodVO> list=EmpDAO.foodTypeListData(type);
		// list=> 자바스크립트로 전송
		JSONArray arr=new JSONArray(); //[] => {}(20)
		// 자바스크립트에서 자바 인식못한다
		for(FoodVO vo:list) {
			System.out.println(vo.getName());
			JSONObject obj=new JSONObject();
			obj.put("fno", vo.getFno());
			obj.put("name", vo.getName());
			obj.put("poster", "https://www.menupan.com"+vo.getPoster());
			arr.add(obj);
		}
		try {
			response.setContentType("text/plain;charset=UTF-8");
			/*  
			 *  <html>
			 *  <body>
			 *  	[{},{},{}...] => plain사용시 []값만 전송
			 *  </body>
			 *  </html>
			 */
			PrintWriter out=response.getWriter();
			System.out.println(arr.toJSONString());
			out.write(arr.toJSONString());
		} catch (Exception e) {}
		
	}
	@RequestMapping("emp/join.do")
	public String emp_join(HttpServletRequest request, HttpServletResponse response) {
		List<EmpVO> list=EmpDAO.empDeptJoinData();
		request.setAttribute("list", list);
		return "../emp/join.jsp";
	}
	@RequestMapping("emp/sub.do")
	public String emp_sub(HttpServletRequest request, HttpServletResponse response) {
		List<EmpVO> list=EmpDAO.empDeptSubqueryData();
		request.setAttribute("list", list);
		return "../emp/sub.jsp";
	}
}
