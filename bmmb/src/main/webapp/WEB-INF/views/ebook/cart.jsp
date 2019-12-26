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


	<table class="cntr" width="500" border="0" cellspacing="10"	cellpadding="5">
		<tbody>
		<tr>
							<td>${dto.ebook_ID }</td>
							<td>${dto.name }</td>
							<td>${dto.price }</td>
							<td>
							<img src="${pageContext.request.contextPath}/ebook_storage/${dto.image}"
																		width="178" height="264" />
							</td>
		</tr>
		</tbody>
		</table>		
							

	<button onclick="#">결제</button>
</div>
</body>
</html>