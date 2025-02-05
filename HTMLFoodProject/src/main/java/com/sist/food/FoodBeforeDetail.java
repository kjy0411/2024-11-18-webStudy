package com.sist.food;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.*;
import java.util.*;
import com.sist.dao.*;
import com.sist.vo.*;

@WebServlet("/FoodBeforeDetail")
public class FoodBeforeDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fno = request.getParameter("fno");
		Cookie[] cookies=request.getCookies();
		if(cookies!=null) {
			for(int i = 0; i < cookies.length; i++) {
				if(cookies[i].getName().equals("food_"+fno)) {
					cookies[i].setPath("/");
					cookies[i].setMaxAge(0);
					response.addCookie(cookies[i]);
				}
			}
		}
		Cookie cookie = new Cookie("food_"+fno, fno);
		cookie.setPath("/");// 쿠키데이터 저장위치
		cookie.setMaxAge(60*60*24); // 하루동안 쿠키데이터 저장
		response.addCookie(cookie);
		
		// 쿠키 => 브라우저에 저장 (클라이언트에 저장)
		// 보안에 취약 / 저장 => 문자열만 저장이 가능
		// => 최신 방문 / 로그인 여부
		// => 서버에 저장 (세션)
		// => MAP방식 (키,값) => 키는 중복이 불가능
		// 상세보기로 이동 => 서버에서 화면 이동 : response.sendRedirect
		response.sendRedirect("FoodDetail?fno="+fno);
		//		-------------- GET
		/*  
		 *  사이트
		 *  -----
		 *  	목록 => 인라인뷰 (페이징)
		 *  	상세보기 (찜하기,좋아요,예약,결제) => 댓글
		 *  	커뮤니티 : 게시판, 묻고답하기, 자료실, 실시간 채팅
		 *  	회원가입, 검색
		 *  
		 *  	=> 관리자 페이지 / 마이페이지
		 *  
		 */
	}

}
