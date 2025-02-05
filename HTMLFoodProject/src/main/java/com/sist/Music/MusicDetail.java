package com.sist.Music;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.StringTokenizer;

import com.sist.dao.*;
import com.sist.vo.*;

@WebServlet("/MusicDetail")
public class MusicDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		String mno = request.getParameter("mno");
		
		MusicDAO dao = MusicDAO.newInstance();
		MusicVO vo = dao.musicDetailData(Integer.parseInt(mno));
		
		int lank = dao.musicGenreLank(vo.getCno(), vo.getMno());
		
		out.println("<html>");
		out.println("<head>");
		out.println("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">");
		out.println("<link rel=stylesheet href=css/music.css>");
		out.println("</head>");
		out.println("<body>");
		out.println("<div class=container>");
		out.println("<div class=row>");
		out.println("<table class=table>");
		out.println("<tr>");
		out.println("<td width=40% class=text-center rowspan=4>");
		out.println("<img src=" + vo.getPoster() + " style=\"width:270px;height:300px;\">");
		out.println("</td>");
		out.println("<td colspan=6>");
		out.println("<h3>" + vo.getTitle() + "</h3>");
		out.println("</h3>");
		out.println("<tr>");
		out.println("<td width=10% style=\"color:gray\">장르</td>");
		out.println("<td width=10%>" + vo.getGenre()+ "</td>");
		out.println("<td width=10% style=\"color:gray\">순위</td>");
		out.println("<td width=10% style=\"font-weight:bold;\">" + lank);
		if(vo.getState().equals("유지")) {
			out.println("(<span >━</span>)");
		}else if(vo.getState().equals("상승")) {
			out.println("(<span style=\"color:red;\">" + vo.getIdcrement() + "▲</span>)");
		}else if(vo.getState().equals("하강")) {
			out.println("(<span style=\"color:blue;\">" + vo.getIdcrement() + "▼</span>)");
		}
		out.println("</td>");
		out.println("<td width=10% style=\"color:gray\">조회수</td>");
		out.println("<td width=10%>" + vo.getHit()+ "</td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td width=10% style=\"color:gray\">가수</td>");
		out.println("<td width=50% colspan=5>" + vo.getSinger() + "</td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td width=10% style=\"color:gray\">앨범</td>");
		out.println("<td width=50% colspan=5>" + vo.getAlbum() + "</td>");
		out.println("</tr>");
		out.println("</table>");

		out.println("<table class=table>");
		out.println("<tr>");
		out.println("<td class=text-right>");
		out.println("<a href=# class=\"btn btn-xs btn-danger\">좋아요</a>");
		out.println("<a href=# class=\"btn btn-xs btn-success\">찜하기</a>");
		out.println("<a href=MusicList class=\"btn btn-xs btn-primary\">목록으로1</a>");
		out.println("<a href=MusicList2 class=\"btn btn-xs btn-primary\">목록으로2</a>");
		out.println("</td>");
		out.println("</tr>");
		out.println("</table>");
		out.println("</div>");
		out.println("</div>");
		out.println("</body>");
		out.println("</html>");
	}

}
