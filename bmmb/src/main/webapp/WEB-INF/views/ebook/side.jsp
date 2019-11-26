<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터</title>
<style>
	.side_bar { padding : 20px 0 0 0;}
	.side_bar ul li a { display : block;  height : 50px; text-decoration: none; padding : 0px 0 0 0px; }
	.side_bar ul li a:hover { background-color: #e9ecef;}
	.side_bar ul li a:checked { background-color: #e9ecef;}
</style>
</head>
<body>
<div class="side_bar">
	<ul>
		<li><a href="${root }/notices/list">공지사항</a></li>
		<li><a href="#">문학/인문</a></li>
		<li><a href="#">경제/교양</a></li>
		<li><a href="#">유아/실용</a></li>
		<li><a href="#">어학/학습</a></li>
		<li><a href="#">외국어</a></li>
		<li><a href="#">참고서</a></li>
		<li><a href="#">컴퓨터/IT</a></li>
		
		
	</ul>
</div>
</body>
</html>