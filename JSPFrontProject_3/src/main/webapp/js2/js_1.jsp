<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	자바스크립트는 브라우저에서 실행 => 인터프리터 => 에러출력(X)
		=> 개발자 도구에서 에러 확인
	
	1. 변수 => 대입값에 따라 데이터형이 변경
		let : 지역 변수 / const : 상수 변수
		=> number : 숫자형 (int, double)
		=> string : 문자형 (char,string)
		=> object : 배열 / 객체
					[]	  {} => JSON
		=> function : 함수
		
	2. 연산자
		=> 단항연산자
			1) 증감연산자 ++, --
			2) 형변환연산자
				숫자변환 : Number("10"), ***parseInt("10")
				문자변환 : ***String(10) => "10"
				논리변환 : Boolean(1) > true
						 Boolean(0) > false
						 0, 0.0이 아닌 수는 true
						 null이 아닌 경우 true
			=> HTML 태그에서 읽는 값 => String
		=> 이항연산자
		   1) 산술연산자 : +,-,*,/,%
		   		+ : 문자열 결합 / 덧셈
		   		/ : 0으로 나누면 infinity, 정수/정수=실수
		   2) 비교연산자 : true
		   			 문자 / 숫자 / 날짜 => 비교가능
		   			 ==, !=, <, >, <=, >=
		   			 -------
		   			 ===, !==
		   			 엄격한 기준 => 권장
		   			 
		   			 5 == '5' => true
		   			 	  --- paseInt('5')
		   			 5 === '5' => false
		   			 => 자동형변환을 해주지 않는다
		   3) 논리연산자 : &&(범위 포함), ||(포함 범위 밖)
		   4) 대입련산자 : =, +=, -=
		   5) 삼항연산자 : (조건)?값1:값2
		   				true => 값1
		   				false => 값2
			=> 문자열 결합 / 상품 갯수 => 종합(오라클)
			=> 모든 처리 => 자바(서버)
			=> 자바스크립트/HTML => 출력
			   -------- ---- 데이터변경 불가능 (정적 페이지)
			   데이터 변경이 가능 (동적 페이지)
			   
	3. 제어문
		조건문 : if
			=> 일반조건문
				if(조건문)
				{
					조건이 true
				}
			=> 선택조건문
				if(조건문)
				{
					조건이 true
				}
				else
				{
					조건이 false
				}
		반복문 : for / for-each
			=> 일반 for
				for(let i=0; i<10; i++)
				{
					반복 수행문
				}
			=> for-each => 배열일 경우에만 사용이 가능
				for(변수 in 배열)
					--- 배열의 index번호 => 0,1,2...
				ex)	let arr=[1,2,3,4,5]
					for(let i in arr)
						----- 0,1,2,3,4
				for(변수 in 객체)
					--- 객체의 key값을 받는다
				ex)	let sa={sabun:1, name:"", sex:""}
					for(let key in sa)
						------- sabun, name, sex
				------------------------------------
				for(변수 of 배열)
					--- 배열의 실제 저장된 값
				ex)	let arr=[1,2,3,4,5]
					for(let i of arr)
						----- 1,2,3,4,5
			=> forEach
				배열.forEach(function(value){})
							----------------- callback => 자동실행되는 함수
				ex)	let arr=[1,2,3,4,5]
					arr.forEach(function(value){})
										------- 1 2 3 4 5
						
			=> map(*****)
				배열.map(function(value){})
				ex)	let arr=[1,2,3,4,5]
					arr.map(function(value){})
										------- 1 2 3 4 5
		반복제어문 : break : 반복문 중단 => 출력 갯수를 정해서
						  서버에서 전송
						  
	4. 함수 : 기능처리 (이벤트:사용자가 행위를 했을 때
							=> 사용자 요청에 대한 처리
							=> 브라우저에서만 작동)
					=> 키보드, 마우스
					ex) onclick / onmouseover / onmouseout
						onchange / onkeydown / onkeyup...
		=> 함수 생성 방법
		   선언적 함수
		   => 리턴형이 없다
		   => 매개변수의 변수명 설정 (name) => (let name)(X)
			function 함수명(매개변수)
			{
				function 함수명() => X
			}
		   익명의 함수 (*****)
		   let 함수명=function(){} 
		   let 함수명=()=>{} 
		   
		   => 사용자 정의 함수 => 자동 호출이 안된다
		   => 언제 호출?
		   
		-------------------------------
				리턴형	매개변수
		-------------------------------
				  O		  O
			function func(name)
			{
				return name
			}
			let name=func("홍길동")
		-------------------------------
				  O		  X
			function func()
			{
				return ""
			}
			let msg=func("")
		-------------------------------
				  X		  O
			function func(name)
			{
				...
				...
			}
			func("홍길동")
		-------------------------------
				  X		  X
			function func()
			{
			}
			func()
		-------------------------------
		권장 => (화살표함수 이용)
			-- function / return 제거 : 람다식(함수포인터)
			function func(){}
			let func=function(){}
			let func=()=>{}
	
	5. 배열 / 객체
		객체 : {} (JSON) ==> 서버에서 값 전송
			=> 자바 : VO
			=> 객체
			let a=(aa:, bb:)
				=> a.aa / a['aa']
				=> a.bb / a['bb']
		배열 : []
			=> 자바 : List
				값 추가 : push()
				자르기 : slice()
				값 제거 : pop()
				
	6. 객체 문서 모델
		=> HTML태그를 선택해서 제어
		   ------------
		   이벤트 처리
		   속성값 변경
		   CSS 적용
		   
		***HTML 파일 => 전체를 가지고 있는 객체 : document
		   태그 1개
		   	= document.getElementById(아이디명)
		   	= document.querySelector(CSS의 Selector)
		   							--------------- 화면 디자인
		   											태그 선택
		   											크롤링
		   태그 여러개
		   	= document.getElementByClassName(클래스명)
		   	= document.getElementByTagName(태그명)
		   	= document.querySelectorAll(class명, 태그명)
		   	
		   => Jquery
		   	  $('태그|아이디명|클래스명')
		   --------------------------
		   => Vue => <a ref="id"> : 양방향
		   	  $refs.id
		   => React => target.id : 단방향
		      Next
		   --------------------------
	
	7. 이벤트 등록
	
	8. 내장객체
		내장객체
		브라우저 내장객체
	   -------------------------- 라이브러리화 : JQuery
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
// 시작점 => 자동 호출 => main
/*
		Jquery	: $(function(){})
		Vue		: mounted(){}
		React	: componentDidMount(){}
				  => 고전
				  useEffect() => hooks => 16버전 => 17버전 ~ 19버전(tanstack query)
				  										  ------
				  										   18버전 내용이 호환이 안된다
				  										   react-query
 */
window.onload=function(){
	/* 
	// id
	let h1=document.getElementById("h1")
	console.log("h1="+typeof h1)
	// 태그는 자바 => class
	// 속성은 자바 => 멤버변수
	h1.style.backgroundColor='yellow'
	// <h1 style="background-color:yellow"></h1>
	let h1=document.querySelector("h1")
	h1.style.backgroundColor='pink'
	 */
	let h1=document.querySelectorAll("h1") // 배열
	h1[0].style.backgroundColor='yellow'
	h1[1].style.backgroundColor='pink'
	
	// h2 => 글자 색상을 red로 출력
	let h2=document.querySelector("h2")
	h2.style.color='red'
	
}
</script>
</head>
<body>
	<h1>Hello JavaScript-1</h1>
	<h2>Hello JavaScript-2</h2>
	<h1 id="h1">Hello JavaScript-3</h1>
</body>
</html>