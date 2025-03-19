package com.sist.model;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.dao.FoodDAO;
import com.sist.vo.FoodVO;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.*;
@Controller
public class FoodModel {
	@RequestMapping("food/list.do")
	public String food_list(HttpServletRequest request, HttpServletResponse response) {
		int totalpage=FoodDAO.foodTotalPage();

		String page=request.getParameter("page");
		if(page==null) page="1";
		int curpage=Integer.parseInt(page);
		if(curpage<1) {
			curpage=1;
		}else if(curpage>totalpage) {
			curpage=totalpage;
		}
		// DB연동
		Map map=new HashMap();
		map.put("start", (20*curpage)-19);
		map.put("end", 20*curpage);
		
		List<FoodVO> list=FoodDAO.foodListData(map);
		
		final int BLOCK=10;
		int startPage=((curpage-1)/BLOCK*BLOCK)+1;
		int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
		
		if(endPage>totalpage)
			endPage=totalpage;
		// 결과값 전송 => request.setAttribute()
		request.setAttribute("list", list);
		request.setAttribute("curpage", curpage);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		// include파일 지정
		request.setAttribute("main_jsp", "../food/list.jsp");
		
		return "../main/main.jsp";
	}
	@RequestMapping("food/detail_before.do")
	public String food_detail_before(HttpServletRequest request, HttpServletResponse response) {
		String fno=request.getParameter("fno");
		// 쿠키저장
		// 1. Cookie생성
		Cookie cookie=new Cookie("food_"+fno,fno);
		// 2. Path 설정
		cookie.setPath("/");
		// 3. 저장 기간
		cookie.setMaxAge(60*60*24);
		// 4. 브라우저로 전송
		response.addCookie(cookie);
		// 상세보기
		return "redirect:../food/detail.do?fno="+fno;
	}
	@RequestMapping("food/detail.do")
	public String food_detail(HttpServletRequest request, HttpServletResponse response) {
		String fno=request.getParameter("fno");
		FoodVO vo=FoodDAO.foodDetailData(Integer.parseInt(fno));
		String addr1=vo.getAddress().trim();
		/*
		 * addr1=addr1.trim().substring(addr1.indexOf(" ")); String
		 * addr2=addr1.trim().substring(addr1.indexOf(" ")); String
		 * addr3=addr2.trim().substring(0, addr2.indexOf(" "));
		 * System.out.println(addr3.trim());
		 */
		StringTokenizer st=new StringTokenizer(addr1);
		String s1=st.nextToken();
		String s2=st.nextToken();
		String s3=st.nextToken();
		request.setAttribute("addr", s3.trim());
		request.setAttribute("vo", vo);
		// include
		request.setAttribute("main_jsp", "../food/detail.jsp");
		return "../main/main.jsp";
	}
}
