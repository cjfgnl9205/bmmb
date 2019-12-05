<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터</title>
<style>
	.cat2{
	}

	.side_bar { padding : 20px 0 0 0;}
	.side_bar ul li a { display : block;  height : 50px; text-decoration: none; padding : 0px 0 0 0px; }
	.side_bar ul li a:hover { background-color: #e9ecef;}
	.side_bar ul li a:checked { background-color: #e9ecef;}
</style>
</head>
<body>
<div class="fromlistbox"></div>
<div class="side_bar">
	<ul>
		<li><a href="${root }/notices/list">공지사항</a></li>
		<li id="midclass01"><a href="javascript:elTest()">문학/인문(01)</a></li>
		<li><a href="javascript:sendTest()"><div id="cat2">경제/교양</div></a></li>
		<li><a href="#">유아/실용(03)</a></li>
		<li><a href="#">어학/학습(04)</a></li>
		<li><a href="#">외국어(05)</a></li>
		<li><a href="#">참고서(06)</a></li>
		<li><a href="#">컴퓨터/IT(07)</a></li>		
		<li><a href="#"></a></li>				
	</ul>
</div>

<c:forEach var="dto" items="${list}" varStatus="status">		
	<ul>
		<li>+</li>
	</ul>
</c:forEach>

<div class="midtr3"></div>

<script type="text/javascript">

var list = new Array();

<c:forEach items="${list}" var="dto">
	var json = new Object();
	json.name = "${dto.name}";
	json.ebook_ID = "${dto.ebook_ID}";
	list.push(json);
</c:forEach>


var midtr3 = $(".midtr3");
var nlist = new Array();
function elTest(){
	
	for (var i = 0; i < 5; i++) {	  		  		
		  str = "<td class='txtpanel'><a href='javascript:read("+list[i].ebook_ID+")'>"+list[i].name+"</a></td>";
		  var json2 = new Object();
		  json2.entry = str;
		  nlist.push(json2);
		  /* alert(JSON.stringify(nlist)); */
		  midtr3.html(JSON.stringify(nlist));	
	  }  	
}


function sendTest(){
	var cat2 = document.getElementById("cat2");
	var x = cat2.innerHTML;
	alert(typeof x); 
	alert(x);
	if (x=="경제/교양"){
		x = "02";
	}
	
	var url = "list";
	url += "?kmidclass="+x;
	location.href = url;
	
}



function pickmid2(f){
	alert(f);
	var midlist = new Array();

	if(f=='05'){
				for (var i = 0; i < 5; i++) {	  		  		  
					  strx = "<td class='txtpanel'>this is test</td>";
					  var jsonx = new Object();
					  jsonx.entry = strx;
					  midlist.push(jsonx);
					  midtr.html(JSON.stringify(midlist));	
				} 
	}

}
</script>
</body>
</html>