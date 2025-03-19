<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	113page
	-------
	JSP의 기초
	
	1. HTML과 Java 분리
	   --------------
	   
		public class basic_jsp extends HttpBase
		{
			-----------------------
			멤버변수 선언 / 메소드 제작 =>클래스로 제작
			<%! %> => 선언문 => 극히 드믈다
			-----------------------
			public void _jspInit(){}
			public void _jspDestory(){}
			public void _jspService(***request,***response)
			{
				내장 객체
				---------------------------
	    	 ***HttpSession session
				PageContext pageContext
	    		JspWriter out
	    		Exception exception
	    		Object page = this
	    	 ***ServletContext application
	    		ServletConfig config
				---------------------------
				
				try
				{
					---------------------------
					 JSP 코딩 내용
					 <%
					 
					 %> 스크립트릿
					 
					 out.println("<html>")
					 -----------
					  <%= %> : 표현식
					---------------------------
				}catch(Exception ex){}
			}	
		}
		
		=<%@ %>	: 선언문
		 <%@ page %>
		 	=> 파일에 대한 정보
		 	=> 변환 : contentType="|"
		 						파일 형식 지정
		 						1) text/html => html전송
		 						2) text/xml => xml전송
		 						3) text/plain => json전송
		 	=> pageEncoding="UTF-8"; => 한글 처리
		 	=> import : 외부 라이브러리 / 사용자 정의 라이브러리
		 	=> buffer : HTML을 출력할 메모리 공간의 크기
		 	   => 8kb => 16kb
		 	=> errorPage => error가 발생시 자동으로 화면 이동
		 	   200
		 	   404 : 파일이 없는 경우
		 	   403 : 접근 거부
		 	   405 : GET/POST => 서블릿 (JSP => service)
		 	   							|
		 	   							동시처리
		 	   412 : 한글변환 => UTF-8
		 	   400 : badRequest => 데이터전송시에 데이터형이 다른 경우
		 	   		 => Spring에서 등장 => request를 사용하지 않고 매개변수로 처리
		 	***500 : 자바 소스 에러 발생
		 	
		 <%@ taglib %> : 자바의 제어문 / URL / Format과 관련된 라이브러리 => 태그형으로 제작
		 				 <%
		 				 	if(조건문)
		 				 	{
		 				 %>
		 				 		HTML
		 				 <%
		 				 	}
		 				 %>
		 				 
		 				 => 태그형으로 간결하게
		 				 <c:if test="">
		 				 	HTML
		 				 </c:if test="">
		 				 => <c:forEach>, <c:formatDate>, <c:formatNumber>
		 				 	for			 SimpleDateFormat DecimalFormat
		 				 	----------------------------------------------- MVC
		 				 	 => 1차 / 차
		 				 
		 <%@ include %> : JSP 특정부분에 다른 JSP를 첨부할 때 사용
		 				: 정적 => 고정 => 실제 소스를 묶어서 처리
		 				: 동적 => <jsp:include> 액션 태그
		 						 -------------
		 						 따로 컴파일 => HTML을 묶어서 처리
		
		=<%! %>	: 선언문
				  전역변수 / 메소드 제작 
		=<% %>	: 스크립트릿 => 일반자바 => 메소드안에서 코딩 => 지역변수 / 메소드 호출
							제어문 / 연산자
		=<%= %>	: 표현식 => 화면에 데이터 출력
			|
out.println( ); => ()안만 채운다

		<%! %> <% %> => 자바 문법 사용
		  문장종료시 ;
		  주석 // /* */
		<%= %> => 실제 출력문만 입력
		------------- HTML / Java구분
		
		<%
			<%
				오류 => %안에 %사용시 오류
			%>
		%>
--%>
<!-- HTML변환시 남아있는 주석 -->
<%-- HTML변환시 사라지는 주석 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		// 선언문 : 멤버변수, 메소드 => class영역
		public int add(int a, int b){
			return a + b;
		}
	%>
	<%
		// _jspService영역 (메소드 영역)
		int a = 10;
		int b = 20;
		int c = add(a,b);
	%>
	<%= c %>
</body>
</html>