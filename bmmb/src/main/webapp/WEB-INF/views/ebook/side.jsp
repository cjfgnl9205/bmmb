<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터</title>
<style>
.cat2 {
	
}

.side_bar {
	padding: 20px 0 0 0;
}



.side_bar ul li a {
	display: block;
	height: 50px;
	text-decoration: none;
	padding: 0px 0 0 0px;
}

.side_bar ul li a:hover {
	background-color: #e9ecef;
}

.side_bar ul li a:checked {
	background-color: #e9ecef;
}
/* 이벤트리스너에도 적용 */
.side_bar ul li div {
	display: block;
	height: 50px;
	text-decoration: none;
	padding: 0px 0 0 0px;
}

.side_bar ul li div:hover {
	background-color: #e9ecef;
	cursor: pointer;
}

.side_bar ul li div:checked {
	background-color: #e9ecef;
}


</style>
</head>
<body>
	<div class="fromlistbox"></div>
	<div class="side_bar">
		<ul>
			<li><a href="${root }/notices/list">공지사항</a></li>
			<li><div id="cat1">문학/인문</div></li>
			<li><div id="cat2">경제/교양</div></li>
			<li><div id="cat3">유아/실용</div></li>
			<li><div id="cat4">어학/학습</div></li>
			<li><div id="cat5">외국어</div></li>
			<li><div id="cat6">참고서</div></li>
			<li><div id="cat7">컴퓨터/IT</div></li>
		</ul>
	</div>

	<c:forEach var="dto" items="${list}" varStatus="status">
		<ul>
			<li>+</li>
		</ul>
	</c:forEach>

	<script type="text/javascript">
var cat1 = document.getElementById("cat1");
cat1.addEventListener('click', testClick1);
var cat2 = document.getElementById("cat2");
cat2.addEventListener('click', testClick2);
var cat3 = document.getElementById("cat3");
cat3.addEventListener('click', testClick3);
var cat4 = document.getElementById("cat4");
cat4.addEventListener('click', testClick4);
var cat5 = document.getElementById("cat5");
cat5.addEventListener('click', testClick5);
var cat6 = document.getElementById("cat6");
cat6.addEventListener('click', testClick6);
var cat7 = document.getElementById("cat7");
cat7.addEventListener('click', testClick7);


function testClick1(){
	if (cat1.innerHTML = "문학/인문"){
		var x = "01";
		var url = "list";
		url += "?kmidclass="+x;
		location.href = url;
	}
}
function testClick2(){
	if (cat1.innerHTML = "경제/교양"){
		var x = "02";
		var url = "list";
		url += "?kmidclass="+x;
		location.href = url;
	}
}
function testClick3(){
	if (cat1.innerHTML = "유아/실용"){
		var x = "03";
		var url = "list";
		url += "?kmidclass="+x;
		location.href = url;
	}
}
function testClick4(){
	if (cat1.innerHTML = "어학/학습"){
		var x = "04";
		var url = "list";
		url += "?kmidclass="+x;
		location.href = url;
	}
}
function testClick5(){
	if (cat1.innerHTML = "외국어"){
		var x = "05";
		var url = "list";
		url += "?kmidclass="+x;
		location.href = url;
	}
}
function testClick6(){
	if (cat1.innerHTML = "참고서"){
		var x = "06";
		var url = "list";
		url += "?kmidclass="+x;
		location.href = url;
	}
}
function testClick7(){
	if (cat1.innerHTML = "컴퓨터/IT"){
		var x = "07";
		var url = "list";
		url += "?kmidclass="+x;
		location.href = url;
	}
}

var list = new Array();

<c:forEach items="${list}" var="dto">
	var json = new Object();
	json.name = "${dto.name}";
	json.ebook_ID = "${dto.ebook_ID}";
	list.push(json);
</c:forEach>


</script>
</body>
</html>