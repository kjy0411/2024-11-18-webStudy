package com.sist.model2;

import jakarta.servlet.http.HttpServletRequest;

public class InsertModel implements Model {

	@Override
	public String execute(HttpServletRequest request) {
		request.setAttribute("msg", "답변형 게시판 데이터 추가");
		return "board/insert.jsp";
	}

}
