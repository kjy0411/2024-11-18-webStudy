package com.sist.model;

import jakarta.servlet.http.HttpServletRequest;

import java.util.Date;

import com.sist.dao.*;
import com.sist.vo.*;
public class DetailModel implements Model{

	@Override
	public String handlerRequest(HttpServletRequest request) {
		String no=request.getParameter("no");
		
		BoardVO vo=BoardDAO.boardDetailData(Integer.parseInt(no));
		//전송
		request.setAttribute("vo", vo);
		return "board/detail.jsp";
	}

}
