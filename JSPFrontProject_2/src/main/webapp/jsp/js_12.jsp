<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	1. HTML태그 읽기 => 객체모델
		document : 문서저장 공간
		document.getElementById("ID")
		document.getElementByTagName("태그명")
		document.getElementByClassName("class명")
	 ***document.querySelector("CSS")
	 							-----
	 							id => #아이디명
	 							Class => .클래스명
	 							태그명 => 태그명
	 							선택자 => 이벤트 처리가 가능
	 
	 2. let 변수명=[]
	 	=> List list=new ArrayList()
	 	let 변수명={} : 객체
	 			---- JSON (******)
	 		=> MovieVO
	 		
	 	사용법
	 	let sawon={sabun:1, name:"홍길동", sex:"남자", dept:"개발부"}
	 	=> sawon.sabun ==> 1
	 	
	 	class Sawon{
	 		int sabun;
	 		String name, sex, dept;
	 	} 
	 	
	 	Sawon sa=new Sawon();
	 	sa.sabun=1;
	 	sa.name="홍길동"
	 	sa.sex="남자"
	 	sa.dept="개발부"
 --%>
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
	width: 900px;
}
</style>
<script type="text/javascript">
// [] JSONArray
// {} JSONObject => JSON {변수:값}

const sawons=[
	{sabun:1,name:"홍길동",dept:"개발부",job:"대리",pay:3500},
	{sabun:2,name:"박문수",dept:"재무부",job:"사원",pay:2800},
	{sabun:3,name:"춘향이",dept:"법무부",job:"과장",pay:4000},
	{sabun:4,name:"심청이",dept:"홍보부",job:"인턴",pay:2400},
	{sabun:5,name:"이순신",dept:"총무부",job:"부장",pay:5000}
]
window.onload=function(){
	let html=""
	sawons.map(function(sawon){
		html+='<li>'+(sawon.sabun+" "+sawon.name+" "+sawon.dept)+'</li>'
	})
	document.querySelector('ul').innerHTML=html
	// 어떤 태그에 첨부 => 객체모델
	// document.querySelector('ul')
	//						 $('ul') => <c:out/>
	// 함수 => 이벤트 처리
}
</script>
</head>
<body>
	<ul>
	</ul>
</body>
</html>