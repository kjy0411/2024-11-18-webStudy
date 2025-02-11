package com.sist.music;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Cookie;
import java.io.*;
import java.util.*;
import com.sist.dao.*;
import com.sist.vo.*;

@WebServlet("/MusicList2")
public class MusicList2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		MusicDAO dao = MusicDAO.newInstance();
		
		String page=request.getParameter("page");
		
		if(page==null) page="1";
		
		int curpage=Integer.parseInt(page);
		
		List<MusicVO> list = dao.musicListData(curpage);
		
		int totalpage = dao.musicTotalPage();
		
		final int BLOCK = 10;
		
		int startPage =((curpage-1)/BLOCK*BLOCK)+1;
		int endPage =((curpage-1)/BLOCK*BLOCK)+BLOCK;
		
		if(endPage > totalpage) {
			endPage = totalpage;
		}
		
		out.println("<html>");
		out.println("<head>");
		out.println("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">");
		out.println("<link rel=stylesheet href=css/music2.css>");
		out.println("</head>");
		out.println("<body>");
		out.println("<div class=container>");
		out.println("<div class=row>");
		out.println("<table class=\"table table-striped\" width=960px>");
		out.println("<thead>");
		out.println("<tr>");
		out.println("<th class=mno>순위</th>");
		out.println("<th class=poster></th>");
		out.println("<th class=title>제목</th>");
		out.println("<th class=singer>가수</th>");
		out.println("<th class=album>앨범</th>");
		out.println("</tr>");
		out.println("</thead>");
		out.println("<tbody>");
		for(MusicVO vo : list) {
			out.println("<tr>");
			out.println("<td class=mno><p>" + vo.getMno() + "<br>");
			if(vo.getState().equals("유지")) {
				out.println("<span class=state>━</span>");
			}else if(vo.getState().equals("상승")) {
				out.println("<span class=\"state-up state\">" + vo.getIdcrement() + "▲</span>");
			}else if(vo.getState().equals("하강")) {
				out.println("<span class=\"state-down state\">" + vo.getIdcrement() + "▼</span>");
			}
			out.println("</p></td>");
			out.println("<td class=poster><img src=" + vo.getPoster() + " ></td>");
			out.println("<td class=title><a href=MusicBeforeDetail?mno=" + vo.getMno() + "><p>" + vo.getTitle() + "</p></a></td>");
			out.println("<td class=singer><p>" + vo.getSinger() + "</p></td>");
			out.println("<td class=album><p>" + vo.getAlbum() + "</p></td>");
			out.println("</tr>");
		}
		out.println("</tbody>");
		out.println("</table>");
		out.println("<div class=\"row text-center\">");
		out.println("<ul class=\"pagination\">");
		if(startPage > 1) {
			out.println("<li><a href=\"MusicList2?page=" + (startPage - 1) + "\">&lt;</a></li>");
		}
		for(int i = startPage; i<= endPage; i++) {
			if(curpage == i) {
				out.println("<li class=\"active\"><a href=\"MusicList2?page=" + i + "\">" + i + "</a></li>");
			}else {
				out.println("<li><a href=\"MusicList2?page=" + i + "\">" + i + "</a></li>");
			}
		}
		if(endPage < totalpage) {
			out.println("<li><a href=\"MusicList2?page=" + (endPage + 1) + "\">&gt;</a></li>");
		}
		out.println("</ul>");
		out.println("<div class=row>");
		out.println("<h3>최신 방문 음악</h3");
		out.println("<hr>");
		List<MusicVO> mList = new ArrayList<MusicVO>();
		Cookie[] cookies = request.getCookies();
		for(int i = cookies.length-1; i >=0; i--) {
			if(cookies[i].getName().startsWith("music_")) {
				String mno = cookies[i].getValue();
				MusicVO vo = dao.musicCookieData(Integer.parseInt(mno));
				mList.add(vo);
			}
		}
		for(int i = 0; i < mList.size(); i++) {
			MusicVO mvo = mList.get(i);
			if(i > 8) break;
			out.println("<a href=MusicDetail?mno=" + mvo.getMno() + ">");
			out.println("<img src=" + mvo.getPoster() + " style=\"width:100px;height:100px;\" class=img-rounded title=" + mvo.getTitle() + ">");
			out.println("</a>");
		}
		out.println("</div>");
		out.println("</div>");
		out.println("</div>");
		out.println("</body>");
		out.println("</html>");
	}

}
