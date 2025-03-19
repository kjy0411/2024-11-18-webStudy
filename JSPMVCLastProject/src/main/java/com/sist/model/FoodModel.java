package com.sist.model;

import com.sist.ann.Controller;
import com.sist.ann.RequestMapping;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class FoodModel {
	@RequestMapping("food/list.do")
	public String food_list(HttpServletRequest request) {
		System.out.println("food");
		request.setAttribute("msg", "맛집 목록");
		return "../food/list.jsp";
	}
}
