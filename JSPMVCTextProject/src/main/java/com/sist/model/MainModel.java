package com.sist.model;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
// => 위임을 받아서 처리 => 요청 처리
// 스프링 => Controller, 스트럿츠 => Action
@Controller
public class MainModel {
	@RequestMapping("main/main.do")
	public String main_main(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("msg", "MainPage 출력");
		return "../main/main.jsp";
	}
}
