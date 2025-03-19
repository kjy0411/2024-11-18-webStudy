package com.sist.model;

import com.sist.ann.Controller;
import com.sist.ann.RequestMapping;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class MainModel {
	@RequestMapping("main/main.do")
	public String main_list(HttpServletRequest request) {
		System.out.println("main");
		request.setAttribute("msg", "Main 페이지");
		return "../main/main.jsp";
	}
}
