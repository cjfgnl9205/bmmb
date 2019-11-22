<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 작성</title>
<style>
	.notices_read { padding : 20px 0 0 0;}
</style>
<script>
	function downFile(fname){
		var url="${pageContext.request.contextPath}/download";
		url+="?dir=/notices_storage";
		url+="&filename="+fname;
		location.href=url;
	}
	
	function listM(){
		var url = "list";
		url += "?notices_no=${param.notices_no}";
		url += "&word=${param.word}";
		url += "&nowPage=${param.nowPage}";
		
		location.href=url;
	}
	function updateM(){
		var url = "update";
		url += "?notices_no=${param.notices_no}";
		url += "&word=${param.word}";
		url += "&nowPage=${param.nowPage}";
		url += "&oldfile=${dto.notices_filename}";
		
		location.href=url;
	}
	function deleteM(){
		if (confirm("정말 삭제하시겠습니까??") == true){    //확인
		     document.frm.submit();
		 }else{   //취소
		     return false;
		 }
	}
</script>
</head>
<body>
<div class="notices_read">
	<h2>공지사항</h2>
	<form action="delete" name="frm" method="post" enctype="mulipart/form-data">
		<input type="hidden" name="notices_no" value="${param.notices_no }">
		<input type="hidden" name="word" value="${param.word }">
		<input type="hidden" name="nowPage" value="${param.nowPage }">
		<input type="hidden" name="oldfile" value="${dto.notices_filename }">
		<table class="table">
			<tr>
				<td colspan="2" align="right" style="border-top-color:rgb(255, 255, 255)">조회수 : ${dto.notices_viewcnt } 등록일 : ${dto.notices_date } <c:if test="${not empty dto.notices_udate }">마지막 수정일자 : ${dto.notices_udate }</c:if></td>
			</tr>
			<tr>	
				<th style="width : 20%;">작성자</th>
				<td>${dto.notices_no }</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>${dto.notices_title }</td>
			</tr>
			<c:if test="${not empty dto.notices_filename }">
				<tr>
					<th>첨부파일</th>
					<td>
					${dto.notices_filename }
					<a href="javascript:downFile('${dto.notices_filename }')"><img src="${pageContext.request.contextPath }/images/download.jpg" width="30px" height="30px"></a>
					</td>
				</tr>
			</c:if>
			<tr>
				<th>내용</th>
				<td>${dto.notices_content }</td>
			</tr>
			<c:if test="${not empty dto.notices_filename }">
				<tr>
					<th>사진</th>
					<td><img src="${pageContext.request.contextPath }/notices_storage/${dto.notices_filename}"></td>
				</tr>
			</c:if>
		</table>
		<div class="form-group">
			<button class="btn btn-light" type="button" onclick="location.href='create'">등록</button>
			<button class="btn btn-light" type="button" onclick="updateM();">수정</button>
			<button class="btn btn-light" type="button" onclick="deleteM();">삭제</button>
			<button class="btn btn-light" type="button" onclick="listM();">목록</button>
		</div>
	</form>
</div>
</body>
</html>