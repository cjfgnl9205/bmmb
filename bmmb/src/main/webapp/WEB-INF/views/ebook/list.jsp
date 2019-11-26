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

	.cntr{
		margin: 0 auto;
	}

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
	
	<!-- s: 테이블 실험 -->
	<div class="row" style="background-color: #eee;">
		<table class="cntr" width="950" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td><img src="../images/book1.jpg" width="178" height="264" /></td>
					<td><img src="../images/book2.jpg" width="178" height="264" /></td>
					<td><img src="../images/book3.jpg" width="178" height="264" /></td>
					<td><img src="../images/book4.jpg" width="178" height="264" /></td>
					<td><img src="../images/book5.jpg" width="178" height="264" /></td>
				</tr>
				<tr>
					<td>책설명1</td>
					<td>책설명2</td>
					<td>책설명3</td>
					<td>책설명4</td>
					<td>책설명5</td>
				</tr>
			
				<tr>
					<td><img src="../images/book6.jpg" width="178" height="264" /></td>
					<td><img src="../images/book7.jpg" width="178" height="264" /></td>
					<td><img src="../images/book8.jpg" width="178" height="264" /></td>
					<td><img src="../images/book9.jpg" width="178" height="264" /></td>
					<td><img src="../images/book10.jpg" width="178" height="264" /></td>
				</tr>
				<tr>
					<td>책설명1</td>
					<td>책설명2</td>
					<td>책설명3</td>
					<td>책설명4</td>
					<td>책설명5</td>
				</tr>
		</table>
	</div>

	<!-- e: 테이블 실험 -->


</div>
</body>
</html>