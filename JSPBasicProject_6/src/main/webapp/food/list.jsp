<%@page import="oracle.security.o3logon.a"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.dao.*, java.util.*"%>
<jsp:useBean id="dao" class="com.sist.dao.FoodDAO"/>
<%
	String strPage = request.getParameter("page");
	if(strPage==null){
		strPage = "1";
	}
	int curpage = Integer.parseInt(strPage);
	List<FoodVO> list = dao.foodListData(curpage);
	int totalPage = dao.foodTotalPage();
	
	final int BLOCK=10;
	int startPage=((curpage-1)/BLOCK*BLOCK)+1;
	int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
	
	if(endPage > totalPage) endPage = totalPage;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
<style type="text/css">
.container{
	margin-top: 50px;
}
.row{
	margin: 0px auto;
	width: 960px;
}
p{
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
}
</style>
</head>
<body>
	<div class="container">
		<div class="jumbotron">
			<h3 class="text-center">맛집 목록</h3>
		</div>
		<div class="row">
		<%
			for(FoodVO vo : list){
		%>
			<div class="col-md-3">
				<div class="thumbnail">
					<%-- 상세보기 (한개) => 중복없이 적용된 데이터(Primary Key) --%>
					<a href="detail_before.jsp?fno=<%= vo.getFno() %>">
						<img src="<%= vo.getPoster() %>" style="width: 239px" height=" 180px">
						<div class="caption">
							<p><%= vo.getName() %></p>
						</div>
					</a>
				</div>
			</div>
		<%
		}
		%>
		</div>
		<div style="height: 20px"></div>
		<div class="row text-center">
			<ul class="pagination">
			<%
				if(startPage>1){
			%>
				<li><a href="list.jsp?page=<%= startPage - 1 %>">&lt;</a></li>
			<%
				}
			%>
			<%
				for(int i = startPage; i <= endPage; i++){
			%>
						<li <%= curpage==i?"class=active":"" %>><a href=list.jsp?page=<%= i %>><%= i %></a></li>
			<%
				}
			%>
			<%
				if(endPage<totalPage){
			%>
				<li><a href="list.jsp?page=<%= endPage + 1 %>">&gt;</a></li>
			<%
				}
			%>
			</ul>
		</div>
		<div class="row">
			<h3>최근 방문 맛집</h3>
			<a href="cookie_all_delete.jsp" class="btn btn-xs btn-primary">전체삭제</a>
			<hr>
			<%
				List<FoodVO> cList = new ArrayList<FoodVO>();
				//쿠키 읽기
				Cookie[] cookies = request.getCookies();
				if(cookies!=null){
					for(int i = cookies.length-1; i >= 0; i--){
						if(cookies[i].getName().startsWith("house_")){
							String fno = cookies[i].getValue();
							FoodVO vo = dao.foodDetailData(Integer.parseInt(fno),2);
							cList.add(vo);
						}
					}
				}
			%>
			<%
				for(FoodVO vo : cList){
			%>
			<div class="col-md-2">
				<div class="thumbnail">
					<%-- 상세보기 (한개) => 중복없이 적용된 데이터(Primary Key) --%>
					<a href="#">
						<img src="<%= vo.getPoster() %>" style="width: 120px" height=" 120px">
						<div class="caption">
							<p><a href="cookie_delete.jsp?fno=<%= vo.getFno() %>" class="btn btn-xs btn-success">삭제</a></p>
						</div>
					</a>
				</div>
			</div>
			<%
				}
			%>
		</div>
	</div>
</body>
</html>