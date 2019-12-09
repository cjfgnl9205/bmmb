<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>e북 미리보기</title>
<style>
	.sample_list { padding : 20px 0 0 0;}
	tr td a { color:black;}

</style>
<script>	
</script>
</head>
<body>
<div class="sample_list">
	<h2 style="padding-bottom: 20px;">sample_list</h2>

	
	
	<table class="table"  style="margin-top:30px;">
		<tbody>
			<c:choose>
				<c:when test="${ empty list }">
					<tr><td colspan="4">등록된 글이 없습니다.</td></tr>
				</c:when>
				<c:otherwise>
					<c:forEach var="dto" items="${list}">
						<tr>
							<td>${dto.sampleID}</td>
							<td><a href="javascript:read('${dto.sampleID}')">${dto.sampleID}</a></td>
							<td>${dto.page1}</td>
							<td>${dto.page2}</td>
							<td>${dto.page3}</td>
							<td>${dto.page4}</td>
							<td>${dto.page5}</td>
							<td>${dto.spage}</td>
							
							</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>
	${paging }
</div>
</body>
</html>