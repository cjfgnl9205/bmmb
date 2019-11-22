<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 작성</title>
<style>
	.notices_list { padding : 20px 0 0 0;}
</style>
<script>
	function check(f){
		if(f.notices_title.value==''){
			alert("제목을 입력하세요");
			f.notices_title.focus();
			return false;
		}
		if(f.notices_content.value==''){
			alert("내용을 입력하세요");
			f.notices_content.focus();
			return false;
		}
	}
</script>
</head>
<body>
<div class="notices_list">
	<h2>공지사항 수정</h2>
	<form class="form-group" action="update" method="post" enctype="multipart/form-data" onsubmit="return check(this)">
		<input type="hidden" name="oldfile" value="${dto.notices_filename }">
		<input type="hidden" name="notices_no" value="${dto.notices_no }">
		<input type="hidden" name="word" value="${param.word }">
		<input type="hidden" name="nowPage" value="${param.nowPage }">
		<table class="table">
			<tr>
				<th>작성자</th>
				<td>${dto.notices_name }</td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" class="form-control" name="notices_title" placeholder="제목을 입력하세요" value="${dto.notices_title }"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea name="notices_content" style="height:400px; width:760px;">${dto.notices_content }</textarea></td>
			</tr>
			<c:if test="${not empty dto.notices_filename }">
				<tr>
					<th>기존파일</th>
					<td>${dto.notices_filename } (${dto.notices_filesize })</td>
				</tr>
			</c:if>
			<tr>
				<th>파일</th>
				<td><input type="file" class="form-control" name="filenameMF"></td>
			</tr>
		</table>
		<div class="form-group">
			<button class="btn btn-light" type="submit">수정</button>
			<button class="btn btn-light" type="button" onclick="location.href='list'">취소</button>
		</div>
	</form>
</div>
</body>
</html>