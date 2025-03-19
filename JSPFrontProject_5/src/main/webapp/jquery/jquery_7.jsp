<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	width: 350px;
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	//$('span:nth-child(1)').text("Hello JQuery")
	// 같은 태그 여러개 있는 경우에 인덱스로 이용 => eq (0번부터 시작)
	// nth-child(1)
	$('span:eq(0)').text("Hello JQuery")
	// textContent
	$('span:eq(1)').html("<font color=red>Hello JQuery</font>")
	// innerHTML
	// appendChild() => append()
})
</script>
</head>
<body>
	<span>
	</span>
	<br>
	<span>
	</span>
</body>
</html>