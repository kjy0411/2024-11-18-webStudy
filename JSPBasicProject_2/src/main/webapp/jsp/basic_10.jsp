<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.io.*, java.util.*" %>
<%@ page import="java.text.*" %>
<%--
	import : 외부 라이브러리 첨부
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%	
		/* 
			생략이 가능한 import
			java.lang.*;
			jakarta.servlet.*;
				=> javax.servlet.*;  => tomcat 10에서 javax => jakarta로 바뀌었다 
			jakarta.servlet.http.*;
				=> javax.servlet.http.*
		*/
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String today = sdf.format(date);
	%>
	<%= today %>
</body>
</html>