<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
let emp=[
	{"dbday":"1981-11-17","ename":"KING","empno":7839,"job":"PRESIDENT","sal":5000},
	{"dbday":"1981-05-01","ename":"BLAKE","empno":7698,"job":"MANAGER","sal":2850},
	{"dbday":"1981-05-09","ename":"CLARK","empno":7782,"job":"MANAGER","sal":2450},
	{"dbday":"1981-04-01","ename":"JONES","empno":7566,"job":"MANAGER","sal":2975},
	{"dbday":"1981-09-10","ename":"MARTIN","empno":7654,"job":"SALESMAN","sal":1250},
	{"dbday":"1981-02-11","ename":"ALLEN","empno":7499,"job":"SALESMAN","sal":1600},
	{"dbday":"1981-08-21","ename":"TURNER","empno":7844,"job":"SALESMAN","sal":1500},
	{"dbday":"1981-12-11","ename":"JAMES","empno":7900,"job":"CLERK","sal":950},
	{"dbday":"1981-02-23","ename":"WARD","empno":7521,"job":"SALESMAN","sal":1250},
	{"dbday":"1981-12-11","ename":"FORD","empno":7902,"job":"ANALYST","sal":3000},
	{"dbday":"1980-12-09","ename":"SMITH","empno":7369,"job":"CLERK","sal":800},
	{"dbday":"1982-12-22","ename":"SCOTT","empno":7788,"job":"ANALYST","sal":3000},
	{"dbday":"1983-01-15","ename":"ADAMS","empno":7876,"job":"CLERK","sal":1100},
	{"dbday":"1982-01-11","ename":"MILLER","empno":7934,"job":"CLERK","sal":1300}
]

const sawonList=()=>{
	console.log(emp)
}
const sawonDetail=(empno)=>{
	let sawon=emp.find(sa=>sa.empno)
	console.log(sawon)
	/* 
	for(let e of emp){
		if(e.empno===empno){
			console.log(e)
			break;
		}
	} */
}
const sawonInsert=()=>{
	emp.push({"dbday":"2025-02-25","ename":"홍길동","empno":8000,"job":"사원","sal":2500})
}
window.onload=function(){
	sawonInsert()
	sawonList()
	sawonDetail(8000)
}
</script>
</head>
<body>

</body>
</html>