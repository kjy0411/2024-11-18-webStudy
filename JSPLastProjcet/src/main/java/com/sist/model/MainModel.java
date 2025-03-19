package com.sist.model;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.*;
import com.sist.dao.*;
import com.sist.vo.*;
@Controller
public class MainModel {
	@RequestMapping("main/main.do")
	public String main_main(HttpServletRequest request, HttpServletResponse response) {
			
		FoodVO fvo=FoodDAO.foodMainHouseData();
		List<FoodVO> fList=FoodDAO.foodMainHouseData8();
		// chefList => recipeList => newsList => cookieList
		request.setAttribute("fvo", fvo);
		request.setAttribute("fList", fList);
		
		ChefVO cvo=RecipeDAO.recipeTodayChef();
		List<RecipeVO> rList=RecipeDAO.recipeData7();
		
		request.setAttribute("cvo", cvo);
		request.setAttribute("rList", rList);
		
		List<FoodVO> cList=new ArrayList<FoodVO>();
		Cookie[] cookies=request.getCookies();
		if(cookies!=null) {
			for(int i=cookies.length-1; i>=0; i--) {
				if(cookies[i].getName().startsWith("Food_")) {
					String fno=cookies[i].getValue();
					FoodVO cookie=FoodDAO.foodCookieData(Integer.parseInt(fno));
					cList.add(cookie);
				}
				
			}
		}
		request.setAttribute("cList", cList);
		
		// JSP로 값을 전송
		// request / session
		//화면 변경
		//include => 파일에서 request를 공유할 수 있다
		request.setAttribute("main_jsp", "../main/home.jsp");
		return "../main/main.jsp";
	}
}
