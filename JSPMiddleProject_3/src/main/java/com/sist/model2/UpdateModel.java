package com.sist.model2;

import jakarta.servlet.http.HttpServletRequest;

public class UpdateModel implements Model {

	@Override
	public String execute(HttpServletRequest request) {
		request.setAttribute("msg", "답변형 게시판 데이터 수정");
		return "board/update.jsp";
	}

}
