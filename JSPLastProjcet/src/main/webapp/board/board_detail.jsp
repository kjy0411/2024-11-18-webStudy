<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
let bClick=false
$(function(){
	$('#del').click(function(){
		if(bClick===false){
			bClick=true
			$(this).text("취소")
			$('#delTr').show()
		}
		else{
			bClick=false
			$(this).text("삭제")
			$('#delTr').hide()
		}
	})
	
	$('#pwd').keyup(function(){
		let no=$('#delTr').attr("data-no")
		let pwd=$('#pwd').val()
		
		$.ajax({
			type:'post',
			url:'../board/board_pwd_ajax.do',
			data:{"no":no,"pwd":pwd},
			success:function(result){
				let res=parseInt(result)
				if(res===0){
					$('#delBtn').hide()
					$('#print').text('비밀번호가 틀립니다')
				}else{
					$('#delBtn').show()
					$('#print').text('')
				}
			}
			
		})
	})
	$('#delBtn').click(function(){
		let no=$('#delTr').attr("data-no")
		let page=$('#delTr').attr("data-page")
		$.ajax({
			type:'post',
			url:'../board/board_delete_ajax.do',
			data:{"no":no},
			success:function(result){
				if(result==="yes"){
					location.href='../board/board_list.do?page='+page
				}else{
					alert("게시물 삭제 실패하였습니다\n다시 시도하세요")
				}
			}
		})
	})
})
</script>
</head>
<body>
	<!-- ****** Breadcumb Area Start ****** -->
    <div class="breadcumb-area" style="background-image: url(../img/bg-img/breadcumb.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="bradcumb-title text-center">
                        <h2>내용 보기</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="breadcumb-nav">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#"><i class="fa fa-home" aria-hidden="true"></i> Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Archive Page</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- ****** Breadcumb Area End ****** -->

    <!-- ****** Archive Area Start ****** -->
    <section class="archive-area section_padding_80">
        <div class="container">
            <div class="row" style="width:800px;margin:0px auto">
            	<table class="table">
            		<tr>
            			<th class="text-center" width="20%">번호</th>
            			<td class="text-center" width="30%">${vo.no }</td>
            			<th class="text-center" width="20%">작성일</th>
            			<td class="text-center" width="30%">${vo.dbday }</td>
            		</tr>
            		<tr>
            			<th class="text-center" width="20%">이름</th>
            			<td class="text-center" width="30%">${vo.name }</td>
            			<th class="text-center" width="20%">조회수</th>
            			<td class="text-center" width="30%">${vo.hit }</td>
            		</tr>
            		<tr>
            			<th class="text-center" width="20%">제목</th>
            			<td colspan="3">${vo.subject }</td>
            		</tr>
            		<tr>
            			<td colspan="4" class="text-left" valign="top" headers="200">
            				<pre style="white-space: pre-wrap; border: none; border-color: white;">${vo.content }</pre>
            			</td>
            		</tr>
            		<!-- 
            			board_update.do = DispatcherServlet
            							  Controller
            							  	  |
            							  	~Model => @RequestMapping
            							  			  ===============
            							  			  제어하는 위치
            							  			  아래 / 옆
            							  	
           							  		  | 결과값 => request에 담아서 전송
           							  		 JSP			|
           							  		 			session / request
           							  		 						| 출력후 초기화
           							  		 			| 유지(사용자 정보, 장바구니)
           							  		 JSP는 메소드 제작을 할 수 없다
           							  		 ---- 메소드 영역
           							  		 	  public void _jspService(HttpServletRequest request,HttpServletResponse)
           							  		 	  {
           							  		 	  	JSP => 코딩
           							  		 	  }
           							  		 
            							  	@ => 클래스 A를 구분
            							  	class A
            							  	{
            							  		@Autowired
            							  		B b;
            							  		
            							  		public A(@Component B b){}
            							  		
            							  		@RequestMapping
            							  		public void display(){} => 구현
            							  	}
            		 -->
            		<tr>
            			<td colspan="4" class="text-right">
            				<a href="../board/board_update.do?no=${vo.no }&page=${page }" class="btn btn-outline-info btn-xs">수정</a>
            				<span href="#" class="btn btn-outline-success btn-xs" id="del">삭제</span>
            				<a href="../board/board_list.do?page=${page }" class="btn btn-outline-warning btn-xs">목록</a>
            			</td>
            		</tr>
            		<tr id="delTr" style="display: none;" data-no="${vo.no }" data-page="${page }">
            			<td colspan="4" class="text-right">
            				비밀번호:<input type="password" size="15" class="form-control-sm" id="pwd">
            				<input type="button" value="삭제" class="btn-danger bnt-sm" style="display: none;" id="delBtn">
            			</td>
            		</tr>
            		<tr>
            			<td colspan="4" class="text-right">
            				<span style="color: red" id="print"><a></a></span>
            			</td>
            		</tr>
            	</table>
            </div>
        </div>
    </section>
</body>
</html>