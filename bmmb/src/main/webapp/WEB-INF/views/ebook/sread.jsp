<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>e북 미리보기</title>
<style>
	.sread { padding : 20px 0 0 0;}
	tr td a { color:black;}

</style>
<script>	
</script>
</head>
<body>
	<h2 style="padding-bottom: 20px;">sread</h2>

<div class="container">

${dto.ebook_ID }<br>
${dto.page1}<br>
${dto.page2}<br>
${dto.page3}


</div>
</body>
</html>