<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>e북 조회</title>
<style>
	.ebook_read { padding : 20px 0 0 0;}
</style>
<script>

	function preview(f){
		var excerpt = f;
		alert(excerpt);
	}
	
	function downFile(fname){
		var url="${pageContext.request.contextPath}/download";
		url+="?dir=/ebook_storage";
		url+="&filename="+image;
		location.href=url;
	}
	
	function listM(){
		var url = "list";
		url += "?ebook_ID=${param.ebook_ID}";
		url += "&word=${param.word}";
		url += "&nowPage=${param.nowPage}";
		
		location.href=url;
	}
	function updateM(){
		var url = "update";
		url += "?ebook_ID=${param.ebook_ID}";
		url += "&word=${param.word}";
		url += "&nowPage=${param.nowPage}";
		url += "&oldfile=${dto.image}";
		
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
<div class="ebook_read">
	<h2>eBook</h2>
	<form action="delete" name="frm" method="post" enctype="mulipart/form-data">
		<input type="hidden" name="notices_no" value="${param.ebook_ID }">
		<input type="hidden" name="word" value="${param.word }">
		<input type="hidden" name="nowPage" value="${param.nowPage }">
		<input type="hidden" name="oldfile" value="${dto.image }">
		<table class="table">
			<tr>
				<td colspan="2" align="right" style="border-top-color:rgb(255, 255, 255)">조회수 : ${dto.viewcnt } 등록일 : ${dto.rdate } </td>
			</tr>
			<tr>	
				<th style="width : 20%;">번호</th>
				<td>${dto.ebook_ID }</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>${dto.name }</td>
			</tr>
			<c:if test="${not empty dto.image}">
				<tr>
					<th>첨부파일</th>
					<td>
					${dto.image }
					<a href="javascript:downFile('${dto.image }')"><img src="${pageContext.request.contextPath }/images/download.jpg" width="30px" height="30px"></a>
					</td>
				</tr>
			</c:if>
			<tr>
				<th>내용</th>
				<td>${dto.desc1 }</td>
			</tr>
			<tr>
				<th>e북 미리보기</th>
				<td><a href="javascript:preview('${dto.desc2 }')">뷰어에서 보기</a></td>
			</tr>
			<c:if test="${not empty dto.image }">
				<tr>
					<th>사진</th>
					<td><img src="${pageContext.request.contextPath }/ebook_storage/${dto.image}"></td>
				</tr>
			</c:if>
		</table>
		<div class="form-group">
			<button class="btn btn-light" type="button" onclick="location.href='create'">등록</button>
			<button class="btn btn-light" type="button" onclick="updateM();">수정</button>
			<button class="btn btn-light" type="button" onclick="deleteM();">삭제</button>
			<button class="btn btn-light" type="button" onclick="listM();">목록</button>
			<button class="btn btn-light" type="button" onclick="#">장바구니 담기</button>
		</div>
	</form>
</div>
</body>
</html>