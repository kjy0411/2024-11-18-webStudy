package com.sist.board;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import com.sist.dao.*;
import com.sist.vo.*;
/*  
 *  2개 => 폼 제작 / 요청 처리
 *  	  ------   -------
 *  		GET		POST
 *  		수정/삭제
 *  		=> JSP는 GET/POST가 나뉘지 않았다 => delete.jsp / delete_ok.jsp
 */
@WebServlet("/BoardDelete")
// => HTML : List / Insert / Delete / Detail / Update
// 							    O		O		 O
// => 처리	  O		  O => 화념 관련이 없다
public class BoardDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// 삭제 폼 제작
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. 브라우저에 전송 방식
		response.setContentType("text/html;charset=UTF-8");
		// text/xml(XML), text/plain(JSON)
		// 2. HTML을 읽어갈 브라우저 정보
		PrintWriter out = response.getWriter();
		// 3. 사용자가 보낸 데이터 받기
		String no = request.getParameter("no");
		// 삭제 화면
		
		out.println("<html>");
		out.println("<head>");
		out.println("<link rel=stylesheet href=css/table.css>");
		out.println("</head>");
		out.println("<body>");
		out.println("<center>");
		out.println("<h1>삭제하기</h1>");
		out.println("<form method=post action=BoardDelete>");
		// BoardDelete의 doPost()를 호출한다
		// => 기본 => doGet() / doPost()는 같이 호출되지 않는다 => 한개만 호출된다
		out.println("<table class=table_content width=350>");
		out.println("<tr>");
		out.println("<td>");
		out.println("비밀번호 : <input type=password size=20 name=pwd required>");
		out.println("<input type=hidden name=no value=" + no + ">");
		// 출력하면 안된다 => 화면을 감춘다 => 데이터를 전송할 수 있다
		// => name /value
		out.println("</td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td align=center>");
		out.println("<input type=submit value=삭제>");
		out.println("<input type=button value=취소 onclick=javascript:history.back()>");
		out.println("</td>");
		out.println("</tr>");
		out.println("</table>");
		out.println("</form>");
		out.println("</center>");
		out.println("</html>");
	}

	// 삭제 관련 요청처리
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 삭제 처리 => 비밀번호 처리 => JavaScript => alert
		// 1. 브라우저에 전송 방식
		response.setContentType("text/html;charset=UTF-8");
		// text/xml(XML), text/plain(JSON)
		// 2. HTML을 읽어갈 브라우저 정보
		PrintWriter out = response.getWriter();
		// 3. 사용자가 보낸 데이터 받기
		String no = request.getParameter("no");
		String pwd = request.getParameter("pwd");
		
		// 오라클 연동
		BoardDAO dao = BoardDAO.newInstance();
		// 화면 이동
		boolean bCheck = dao.boardDelete(Integer.parseInt(no), pwd); 
		if(bCheck == false) {
			// 1. 비밀번호가 틀린 경우 => alert
			out.println("<script>");
			out.println("alert(\"비밀번호가 틀립니다!!\");");
			out.println("history.back();");
			out.println("</script>");
		}else {
			// 2. 삭제 => 목록으로 이동
			response.sendRedirect("BoardList");
			
		}
	}

}
