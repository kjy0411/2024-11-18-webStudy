package com.sist.controller;

import java.io.IOException;

import com.sist.model.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
/*  
 * 		   요청		   해당 Model 찾기
 *  사용자 ====== 컨트롤러 ====== Model <===> 데이터베이스 연동
 *  	 ======		   ======
 *  	   응답		   데이터베이스 연동후 데이터 읽기
 *  1. MVC => MVP / MVVM(VueJS)
 *     => 양방향 통신이 안된다 (단방향 통신만 가능)
 *     			** 웹에서 통신 : jsp / servlet
 *     			java	jsp		servlet
 *     => 약자 (Model - View - Controller (Spring은 라이브러리로 제공))
 *     			|		|		  |
 *     			|		|		송수신 (요청=>응답)
 *     			|	 처리된 데이터 출력
 *     		  데이터베이스처리 DAO
 *     		  데이터를 모아준다 VO
 *     		  처리내용 전송 Model
 *   		  서비스 처리단
 *  => 장점 => Front (Vscode) / Back (Spring-Boot)
 *  	구성요소가 명확히 나눠져 있다 (Front, Back) => 역할 분담이 좋다
 *  	데이터 흐름이 단방향 => 분석이 쉽다
 *  	재사용성이 좋다
 *  	리팩토링 비용이 낮아진다
 *  	------ 변수/메소드 => 가독성
 *  => 단점
 *  	컨트롤러가 복잡해지고 코드 중복이 발생
 *  	뷰와 모델을 수동으로 처리
 *  	양방향 통신으로 변경하면 추가 작업이 필요
 *  	컨트롤러에 의존하는 경향이 많다
 *  	------ 분산 (MSA)
 *  ---------------------------- JSP
 *  	=> RestFul / MVC / Cookie VS Session
 *  	   ------- GET / POST / PUT / DELETE
 *  = 역할
 *  	1. Controller
 *  		사용자 요청 받기
 *  		요청 처리 Model클래스 호출
 *  		요청 처리된 데이터를 View로 전송
 *  	2. Model
 *  		요청 처리 담당(비지니스로직)
 *  	3. View
 *  		전송 데이터를 출력
 *  		request		request		request		request
 *  	View => Controller => Model => Controller => View
 *  	
 *  Controller : 서빙
 *  Model : 주방
 *  View : 손님
 *  
 *  손님 => 주문 => 서빙 => 주방에 요청
 *  서빙 => 완성된 음식 => 손님
 *  
 *  단점 => 손님이 많으면 늦어지거나 실수
 *  	   ---------------------
 *  		메뉴가 많으면 혼란스러울 수 있다
 *  
 *  웹사이트 : 98% MVC
 *  
 *  요청 => ?cmd=list => ListModel = list.jsp
 *  	   ?cmd=insert => InsertModel = insert.jsp
 *  	   ?cmd=update => UpdateModel = update.jsp
 *  	   ?cmd=delete => DeleteModel = delete.jsp
 *  	    
 */
@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// GET / POST => 동시에 처리하는 메소드
		// Servlet은 화면 출력은 없다 => 자바와 JSP를 연결
		// 1. 사용자 주문을 받는다
		String cmd=request.getParameter("cmd");
		if(cmd==null) cmd="list";
		// 2. Model(주방)에 요청 => 해당 Model을 찾는다
		// 2-1. 테이블 지정
		String jsp="";
		if(cmd.equals("list")) {
			ListModel model=new ListModel();
			model.execute(request);
			jsp="list.jsp";
		}else if(cmd.equals("insert")) {
			InsertModel model=new InsertModel();
			model.execute(request);
			jsp="insert.jsp";
		}else if(cmd.equals("update")) {
			UpdateModel model=new UpdateModel();
			model.execute(request);
			jsp="update.jsp";
		}else if(cmd.equals("delete")) {
			DeleteModel model=new DeleteModel();
			model.execute(request);
			jsp="delete.jsp";
		}
		// 3. Model(주방)에서 데이터(음식)을 가지고 온다 => request에 담는다
		// 4. View(테이블)에 전송한다 => jsp찾아서 보내준다
		RequestDispatcher rd = request.getRequestDispatcher("board/"+jsp);
		rd.forward(request, response);
	}
}
