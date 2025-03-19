<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="wrapper row1">
		<header id="header" class="clear">
			<div id="logo" class="fl_left">
				<h1>
					<a href="../main/main.do">맛집 & 여행</a>
				</h1>
			</div>
			<div class="fl_right">
				<ul class="inline">
					<li><i class="fa fa-phone"></i> +00 (123) 456 7890</li>
					<li><i class="fa fa-envelope-o"></i> info@domain.com</li>
				</ul>
			</div>
		</header>
	</div>
	<div class="wrapper row2">
		<nav id="mainav" class="clear">
			<ul class="clear">
				<li class="active"><a href="index.html">Home</a></li>
				<li>
					<a class="drop" href="#">회원</a>
					<ul>
						<li><a href="#">회원가입</a></li>
						<li><a href="#">아이디찾기</a></li>
						<li><a href="#">비밀번호찾기</a></li>
					</ul>
				</li>
				<li>
					<a class="drop" href="#">맛집</a>
					<ul>
						<li><a href="../food/list.do">맛집목록</a></li>
						<li><a href="#">지역별검색</a></li>
						<li><a href="#">맛집예약</a></li>
					</ul>
				</li>
				<li>
					<a class="drop" href="#">여행</a>
					<ul>
						<li><a href="#">명소</a></li>
						<li><a href="#">자연 & 관광</a></li>
						<li><a href="#">쇼핑</a></li>
					</ul>
				</li>
				<li>
					<a class="drop" href="#">커뮤니티</a>
					<ul>
						<li><a href="#">자유게시판</a></li>
						<li><a href="#">묻고답하기</a></li>
						<li><a href="#">공지사항</a></li>
						<li><a href="#">실시간 채팅</a></li>
					</ul>
				</li>
				<li><a href="#">스토어</a></li>
				<li><a href="#">마이페이지</a></li>
				<li><a href="../emp/list.do">사원정보</a></li>
			</ul>
		</nav>
	</div>
	<div class="wrapper row3">
		<div id="slider" class="clear">
			<div class="flexslider basicslider">
				<ul class="slides">
					<li><a href="#"><img class="radius-10"
							src="../images/demo/slides/back1.jpg"
							style="width: 978px; height: 400px"></a></li>
					<li><a href="#"><img class="radius-10"
							src="../images/demo/slides/back2.jpg"
							style="width: 978px; height: 400px"></a></li>
					<li><a href="#"><img class="radius-10"
							src="../images/demo/slides/back3.jpg"
							style="width: 978px; height: 400px"></a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>