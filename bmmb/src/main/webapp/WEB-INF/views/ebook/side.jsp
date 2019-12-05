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
		<li><a href="#"><div class="cats">문학/인문</div></a></li>
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



<script type="text/javascript">

var list = new Array();

<c:forEach items="${list}" var="dto">
	var json = new Object();
	json.name = "${dto.name}";
	json.ebook_ID = "${dto.ebook_ID}";
	list.push(json);
</c:forEach>


function sendTest(){
	var cats = document.getElementsByClassName("cats");
	for(i=0; i<cats.length; i++){
		var x = cats[i].innerHTML;
		
		switch(x){
			case "문학/인문":
			x = "01";
			alert(x);
			break;		
			case "경제/교양":
				x = "02";
				alert(x);
				break;
			case "유아/실용":
				x = "03";
				alert(x);
				break;
			case "어학/학습":
				x = "04";
				alert(x);
				break;
			case "외국어":
				x = "05";
				alert(x);
				break;
			case "참고서":
				x = "06";
				alert(x);
				break;
			case "컴퓨터/IT":
				x = "07";
				alert(x);
				break;
			default:
				alert("Oops");
				break;
		}
	}
}	





</script>
</body>
</html>