<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<style>
	.ebook_list { padding : 20px 0 0 0;}
	tr td a { color:black;}

</style>
<script>
	function read(no){
		var url = "read";
		url += "?ebook_ID="+no;
		url += "&word=${word}";
		url += "&nowPage=${nowPage}";
		
		location.href = url;
	}
	function downFile(fname){
		var url="${pageContext.request.contextPath}/download";
		url+="?dir=/ebook_storage";
		url+="&filename="+fname;
		location.href=url;
	}
</script>
</head>
<body>
<div class="ebook_list">
	<h2 style="padding-bottom: 20px;">eBook</h2>
	<form class="form-inline" action="list" method="post">
		<div class="form-group col-sm-6" style="float:left; padding-left:0px;">
			<input type="text" class="form-control"  name="word" placeholder="검색어를 입력하세요">
			<button type="submit" class="btn btn-light" style="margin-left : 10px;">검색</button>
			<button type="button" class="btn btn-light" style="margin-left : 10px;" onclick="location.href='create'">등록</button>
		</div>
	</form>
	
	
	<table class="table"  style="margin-top:30px;">
		<thead>
			<tr>
				<th style="width:10%">번호</th>
				<th style="width:55%">제목</th>
				<th style="width:15%">등록일</th>
				<th style="width:10%">조회수</th>
				<th style="width:10%">파일</th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${empty list}">
					<tr><td colspan="4">등록된 글이 없습니다.</td></tr>
				</c:when>
				<c:otherwise>
					<c:forEach var="dto" items="${list}">
						<tr>
							<td>${dto.ebook_ID}</td>
							<td><a href="javascript:read('${dto.ebook_ID}')">${dto.name}</a></td>
							<td>${dto.rdate}</td>
							<td>${dto.viewcnt}</td>
							<td>
								<c:if test="${not empty dto.image}">
									<a href="javascript:downFile('${dto.image}')"><img src="${pageContext.request.contextPath}/images/download.jpg" width="30px" height="30px"></a>
								</c:if>
							</td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>
	${paging}
</div>
</body>
</html>