<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
            	<table class="table">
            		<tr>
            			<th width="10%" class="text-center">번호</th>
            			<th width="40%" class="text-center">제목</th>
            			<th width="10%" class="text-center">이름</th>
            			<th width="15%" class="text-center">생성일</th>
            			<th width="10%" class="text-center">조회수</th>
            			<th width="15%" class="text-center"></th>
            		</tr>
            		<c:set var="count" value="${count }"></c:set>
            		<c:forEach var="vo" items="${list }">
	            		<tr>
	            			<td width="10%" class="text-center">${count }</td>
	            			<td width="40%">
	            				<c:if test="${vo.group_tab==1 }">
	            					&nbsp;&nbsp;<img src="../img/images/re_icon.png">
	            				</c:if>
	            				<a href="#">
		            				${vo.subject }
		            			</a>
		            			<c:if test="${vo.dbday==today }">
		            				<sup><img src="../img/images/new.gif"></sup>
		            			</c:if>
	            			</td>
	            			<td width="10%" class="text-center">${vo.name }</td>
	            			<td width="15%" class="text-center">${vo.dbday }</td>
	            			<td width="10%" class="text-center">${vo.hit }</td>
	            			<td width="15%" class="text-center">
	            				<c:if test="${vo.anok=='y' }">
	            					<a href="../qna/qna_admin_update.do?gi=${vo.group_id }" class="btn btn-warning btn-sm">수정</a>
	            					<a href="../qna/qna_admin_delete.do?gi=${vo.group_id }" class="btn btn-danger btn-sm">삭제</a>
	            				</c:if>
	            				<c:if test="${vo.anok=='n' }">
	            					<a href="../qna/qna_admin_insert.do?gi=${vo.group_id }" class="btn btn-danger btn-sm">답변대기</a>
	            				</c:if>
	            			</td>
	            		</tr>
	            		<c:set var="count" value="${count-1 }"></c:set>
            		</c:forEach>
            	</table>
            	<table class="table">
            		<tr>
            			<td class="text-right">
            				<a href="../board/board_list.do?page=${curpage>1?curpage-1:curpage }" class="btn btn-info btn-sm">이전</a>
            				${curpage }page / ${totalpage }pages
            				<a href="../board/board_list.do?page=${curpage<totalpage?curpage+1:curpage }" class="btn btn-success btn-sm">다음</a>
            			</td>
            		</tr>
            	</table>
</body>
</html>