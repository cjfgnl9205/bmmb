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
		<li><a href="javascript:sendTest()"><div class="cats">경제/교양</div></a></li>
		<li><a href="#"><div class="cats">유아/실용</div></a></li>
		<li><a href="#"><div class="cats">어학/학습</div></a></li>
		<li><a href="#"><div class="cats">외국어</div></a></li> 
		<li><a href="#"><div class="cats">참고서</div></a></li> 
		<li><a href="#"><div class="cats">컴퓨터/IT</div></a></li>		
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
	var cats = document.getElementsByClassName("cats");
	for(i=0; i<cats.length; i++){
		var x = cats[i].innerHTML;
		
		switch(x){
			case "컴퓨터/IT":
				alert("컴퓨터/IT");
				break;
			case "참고서":
				alert("참고서");
				break;
			case "외국어":
				alert("외국어");
				break;
			case "어학/학습":
				alert("어학/학습");
				break;
			case "유아/실용":
				alert("유아/실용");
				break;
			case "경제/교양":
				alert("경제/교양");
				break;
			default:
				alert("Oops");
				break;
		}
	}
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