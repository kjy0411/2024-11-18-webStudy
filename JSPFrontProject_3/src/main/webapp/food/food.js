let food_list=[]
let startPage=0
let endPage=0
let curpage=0
let totalpage=0
window.onload=()=>{
	let input=document.querySelector("#fd")
	input.value='마포'
	dataRecv("마포",1)
}
function foodFind(){
	let fd=document.querySelector("#fd").value
	if(fd===""){
		alert("검색어를 입력하세요")
		document.querySelector("#fd").focus()
		return
	}
	
	dataRecv(fd,1)
}
function pageChange(page){
	let fd=document.querySelector("#fd").value
	dataRecv(fd,page)
}
/*
address:"서울 마포구 상암동 1603 지하 1층"
content:"송추가마골로 유명한 맛집을 더 고급스러운 분위기로 만들어 낸 가마골 인 어반을 소개한다. 넓은 내부와 룸, 그리고 칸막이로 인해 조용히 식사할 수 있다. 이곳의 한우는 저온 숙성되어서 제공되기에 우리가 보통 먹는 고기보다 훨씬 부드러운 맛을 자아낸다. 숯불이 아닌 철판에 구워 더 좋은 육질의 고기를 즐길 수 있는 것도 장점이다."
name:"가마골인어반 "
parking:"주차가능, 주차방법: 무료, 주차장소: 전용/영수증 2시간 무료"
phone:"(02) 371-0015"
poster:"https://www.menupan.com/restaurant/restimg/009/zzmenuimg/h1201191_z.jpg"
score:4.4
theme:"가족외식 , 술 마시는 친구와 함께 , 전통 한국 음식(for 외국인) , 특별한 날엔 , 주차공간 , 포장 가능 , 구이 , 고급 한정식 , 서울 억새축제 , 서울 하늘공원"
time:
"11:00 ~ 22:00"
type:"한식-생고기/등심"
 */
let detail=function(fno){
	let div=document.querySelector("#detail")
	div.style.display=''
	// <div style="display:"> => show
	// <div style="display:none"> => hide
	axios.get('http://localhost:8080/JSPFrontProject_3/food/detail_js.do?fno='+fno,{
		params:{
			fno:fno
		}
	}).then((res)=>{
		// 태그 document.querySelector("#poster1")
		// => 클래스로 인식
		// => 속성을 멤버변수로 인식
		
		// web 2.0 => web 3.0 angularjs = vue / react
		// back-end : MSA / DevOps => CI/CD
		console.log(res.data)
		let food_detail=res.data
		let html='<img src="'+food_detail.poster+'" style=width:100%>'
		document.querySelector("#poster1").innerHTML=html
		
		document.querySelector("#title").textContent=food_detail.name
		document.querySelector("#score").textContent=food_detail.score
		document.querySelector("#address").textContent=food_detail.address
		document.querySelector("#phone").textContent=food_detail.phone
		document.querySelector("#type").textContent=food_detail.type
		document.querySelector("#price").textContent=food_detail.price
		document.querySelector("#parking").textContent=food_detail.parking
		document.querySelector("#time").textContent=food_detail.time
		document.querySelector("#theme").textContent=food_detail.theme
		document.querySelector("#content").textContent=food_detail.content
	})
}
function dataRecv(fd,page){
	let html='';
	// axios.get() axios.post()
	axios.get('http://localhost:8080/JSPFrontProject_3/food/find_js.do',{
		params:{
			page:page,
			fd:fd
		}
	}).then((response)=>{
		console.log(response.data)
		food_list=response.data
		curpage=response.data[0].curpage
		totalpage=response.data[0].totalpage
		startPage=response.data[0].startPage
		endPage=response.data[0].endPage
		
		console.log("curpage="+curpage)
		console.log("totalpage="+totalpage)
		console.log("startPage="+startPage)
		console.log("endPage="+endPage)
		
		food_list.map(function(vo){
			html+='<div class="col-sm-4">'
				+'<div class="thumbnail">'
				+'<img src="'+vo.poster+'" style="width:100%" onclick="detail('+vo.fno+')">'
				+'<p>'+vo.name+'</p>'
				+'</div>'
				+'</div>'
		})
		let main=document.querySelector('#poster');
		//
		main.innerHTML=html
		
		let pages=document.querySelector("#pages")
		let pp='<ul class="pagination">'
		if(startPage>1)
			pp+='<li><a onclick="pageChange('+(startPage-1)+')">&lt;</a></li>'
		for(let i=startPage; i<endPage; i++){
			let style=''
			if(i==curpage)
				style="class=active"
			pp+='<li '+style+'><a onclick="pageChange('+(i)+')">'+i+'</a></li>'
		}
		if(endPage<totalpage)
			pp+='<li><a onclick="pageChange('+(endPage+1)+')">&gt;</a></li>'
		pp+='</ul>'
		
		pages.innerHTML=pp
	})
}
