package com.sist.model;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.PipedWriter;
import java.io.PrintWriter;
// JSP (디자인) => Model => DAO => Model => JSP
// 			   | Controller			| Controller
import java.util.*;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.sist.dao.*;
import com.sist.vo.*;
@Controller
public class FoodModel {
	@RequestMapping("food/food_list.do")
	public String food_list(HttpServletRequest request, HttpServletResponse response) {
		String page=request.getParameter("page");
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		Map map=new HashMap();
		map.put("start", curpage*12-11);
		map.put("end", curpage*12);
		List<FoodVO> list=FoodDAO.foodListData(map);
		int totalpage=FoodDAO.foodTotalPage();
		
		final int BLOCK=10;
		int startPage=((curpage-1)/BLOCK*BLOCK)+1;
		int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
		
		if(endPage>totalpage) endPage=totalpage;

		request.setAttribute("list", list);
		request.setAttribute("curpage", curpage);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		
		request.setAttribute("main_jsp", "../food/food_list.jsp");
		return "../main/main.jsp";
	}
	@RequestMapping("food/food_detail_before.do")
	public String food_detail_before(HttpServletRequest request, HttpServletResponse response) {
		String fno=request.getParameter("fno");
		Cookie cookie=new Cookie("food_"+fno, fno);
		cookie.setPath("/");
		cookie.setMaxAge(60*60*24);
		// 전송
		response.addCookie(cookie);
		
		// 화면 이동
		return "redirect:food_detail.do?fno="+fno;
	}
	@RequestMapping("food/food_detail.do")
	public String food_detail(HttpServletRequest request, HttpServletResponse response) {
		String fno=request.getParameter("fno");
		FoodVO vo=FoodDAO.foodDetailData(Integer.parseInt(fno));
		
		String addr=vo.getAddress().trim();
		addr=addr.substring(addr.indexOf(" "));
		String addr1=addr.trim();
		addr1=addr1.substring(addr1.indexOf(" "));
		String addr2=addr1.trim();
		addr2=addr2.substring(0,addr2.indexOf(" "));
		/*
		String addr1=vo.getAddress().trim();
		StringTokenizer st=new StringTokenizer(addr1);
		String s1=st.nextToken();
		String s2=st.nextToken();
		String s3=st.nextToken();
		*/
		request.setAttribute("addr", addr2);
		request.setAttribute("vo", vo);
		////////////////////////////////////////댓글
		ReplyVO rvo=new ReplyVO();
		rvo.setRno(Integer.parseInt(fno));
		rvo.setType(1);
		List<ReplyVO> list=ReplyDAO.replyListData(rvo);
		int count=ReplyDAO.replyCount(rvo);
		
		request.setAttribute("rList", list);
		request.setAttribute("count", count);
		////////////////////////////////////////
		////////////////////////////////////////찜
		HttpSession session=request.getSession();
		String id=(String)session.getAttribute("id");
		
		JjimVO jvo=new JjimVO();
		jvo.setRno(Integer.parseInt(fno));
		jvo.setType(1);
		jvo.setId(id);
		if(id!=null) {
			int jCount=JjimDAO.jjimCheckCount(jvo);
			request.setAttribute("jCount", jCount);
		}
		////////////////////////////////////////찜
		
		request.setAttribute("main_jsp", "../food/food_detail.jsp");
		return "../main/main.jsp";
	}
	@RequestMapping("food/food_find.do")
	public String food_find(HttpServletRequest request, HttpServletResponse response) {
		
		request.setAttribute("main_jsp", "../food/food_find.jsp");
		return "../main/main.jsp";
	}
	@RequestMapping("food/food_find_ajax.do")
	public void food_find_ajax(HttpServletRequest request, HttpServletResponse response) {
		String page=request.getParameter("page");
		String fd=request.getParameter("fd");
		String ss=request.getParameter("ss");
		
		int curpage=Integer.parseInt(page);
		Map map=new HashMap();
		map.put("start", (12*curpage)-11);
		map.put("end", 12*curpage);
		map.put("ss", ss);
		map.put("fd", fd);
		List<FoodVO> list=FoodDAO.foodFindData(map);
		int totalpage=FoodDAO.foodFindTotalPage(map);
		
		final int BLOCK=10;
		int startPage=((curpage-1)/BLOCK*BLOCK)+1;
		int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
		
		if(endPage>totalpage) endPage=totalpage;
		
		// JSON변경
		JSONArray arr=new JSONArray();
		int i=0;
		//fno,name,poster,score,type,content,theme,phone,address,likecount,replycount
		for(FoodVO vo:list) {
			JSONObject obj=new JSONObject();
			obj.put("fno", vo.getFno());
			obj.put("name", vo.getName());
			obj.put("poster", vo.getPoster());
			obj.put("score", vo.getScore());
			obj.put("type", vo.getType());
			obj.put("content", vo.getContent());
			obj.put("theme", vo.getTheme());
			obj.put("phone", vo.getPhone());
			obj.put("address", vo.getAddress());
			obj.put("likecount", vo.getLikecount());
			obj.put("replycount", vo.getReplycount());
			if(i==0) {
				obj.put("curpage",curpage);
				obj.put("totalpage",totalpage);
				obj.put("startPage",startPage);
				obj.put("endPage",endPage);
			}
			
			arr.add(obj);
			i++;
		}
		
		//전송
		try {
			response.setContentType("text/plain;charset=UTF-8");
			PrintWriter out=response.getWriter();
			out.write(arr.toJSONString());
		} catch (Exception e) {}
	}
}
