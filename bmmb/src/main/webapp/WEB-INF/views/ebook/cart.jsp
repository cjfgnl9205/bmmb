<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니(임시)</title>
<style>
	.sread { padding : 20px 0 0 0;}
	tr td a { color:black;}

</style>
<script>	
</script>
</head>
<body>

<div class="container">
	<h2 style="padding-bottom: 20px;">장바구니</h2><br>
	<h4>내가 선택한 도서</h4><br>

	<p>${dto.ebook_ID }</p>
	<p>${dto.name }</p>
	<p>${dto.price }</p>

	<button onclick="#">결제</button>
</div>
</body>
</html>