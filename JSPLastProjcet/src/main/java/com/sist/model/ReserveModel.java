package com.sist.model;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

import java.text.SimpleDateFormat;
import java.util.*;
import java.util.logging.SimpleFormatter;

import com.sist.vo.*;
import com.sist.dao.*;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
public class ReserveModel {
	@RequestMapping("reserve/reserve_main.do")
	public String reserve_mian(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("main_jsp", "../reserve/reserve_main.jsp");
		return "../main/main.jsp";
	}
	@RequestMapping("reserve/reserve_food_info.do")
	public String reserve_food_info(HttpServletRequest request, HttpServletResponse response) {
		String type=request.getParameter("type");
		if(type==null) {
			type="한식";
		}
		Map map=new HashMap();
		map.put("type", type);
		List<FoodVO> list=ReserveDAO.reserveFoodDate(map);
		
		request.setAttribute("fList", list);
		return "../reserve/reserve_food_info.jsp";
	}
	@RequestMapping("reserve/reserve_day.do")
	public String reserve_food_day(HttpServletRequest request, HttpServletResponse response) {
		String strYear=request.getParameter("year");
		String strMonth=request.getParameter("month");
		String strDay="";
		String rdays=request.getParameter("rdays");
		Date date=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-M-d");
		String today=sdf.format(date);
		
		StringTokenizer st=new StringTokenizer(today,"-");
		
		String sy=st.nextToken();
		String sm=st.nextToken();
		strDay=st.nextToken();
		
		String tday=strDay;
		String tyear=sy;
		String tmonth=sm;
		
		if(strYear==null) {
			strYear=sy;
		}
		if(strMonth==null) {
			strMonth=sm;
		}
		
		int year=Integer.parseInt(strYear);
		int month=Integer.parseInt(strMonth);
		int day=Integer.parseInt(strDay);
		
		// 요일 / 마지막 날 구하기
		Calendar cal=Calendar.getInstance();
		cal.set(Calendar.YEAR, year);
		cal.set(Calendar.MONTH, month-1); // 0일때 1월
		cal.set(Calendar.DATE, 1);
		
		int week=cal.get(Calendar.DAY_OF_WEEK);
		week=week-1; // 1(일)..7(토) => 0(일)...6(토)
		
		int lastday=cal.getActualMaximum(Calendar.DATE);
		
		request.setAttribute("year", year);
		request.setAttribute("month", month);
		request.setAttribute("day", day);
		request.setAttribute("week", week);
		request.setAttribute("lastday", lastday);
		
		int[] reserveDays=new int[32];
		// rday=1,2,6,12,13,...
		if(month==Integer.parseInt(tmonth)&&year==Integer.parseInt(tyear)) {
			st=new StringTokenizer(rdays,",");
			while(st.hasMoreTokens()) {
				int d=Integer.parseInt(st.nextToken());
				if(d>=day) {
					reserveDays[d]=1;
				}
			}
		}else {
			st=new StringTokenizer(rdays,",");
			while(st.hasMoreTokens()) {
				int d=Integer.parseInt(st.nextToken());
				reserveDays[d]=1;
			}
		}
		request.setAttribute("rday", reserveDays);
		String[] weeks= {"일","월","화","수","목","금","토"};
		request.setAttribute("weeks", weeks);
		
		return "../reserve/reserve_day.jsp";
	}
}
