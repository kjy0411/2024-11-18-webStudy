<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	내장객체
	------
	  window : 브라우저 정보
		document : HTML문서제어
		history : 이동 기록
			back()
			foward()
			reload()
		location : 이동 경로
			href="이동파일 지정"
			
	데이터형
	------
		Number => 형변환 / parseInt()
		------ toLocaleString()
		String => "abcd" => 0부터
			length() = 문자 갯수 : 비밀번호 유효성 검사
			indexOf / lastIndexOf : 문자위치 찾기
			replace() => 문자변경
			splite() => 문자 분해 => 배열로 저장
			substring() : 문자 자르기
		  **substr(number,number) => 오라클
				   시작인덱스번호 갯수
			trim() : 좌우 공백 제거
		Array
			push() => 데이터 첨부
			pop() => 데이터 삭제
			slice() => 원하는 위치의 데이터를 잘라서 새로운 배열 생성
			length => 데이터 갯수
		Date : 날짜 시간 관리
			let today=new Date()
			year : 년도 => today.getFullYear()
			month : 월 => today.getMonth() => 0부터
			date : 일 => today.getDate()
			day : 요일 => today.getday()
		Math
			round() => 반올림
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload=function(){
	let today=new Date()
	let year=today.getFullYear()
	let month=today.getMonth()+1
	let date=today.getDate()
	let day=today.getDay()
	let strWeek=["일","월","화","수","목","금","토"]
	
	document.write("오늘은 "+year+"년 "+month+"월 "+date+"일 "+strWeek[day]+"요일 입니다")
}
</script>
</head>
<body>

</body>
</html>