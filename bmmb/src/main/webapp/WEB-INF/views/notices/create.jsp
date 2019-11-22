<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	<h2 style="padding-bottom: 20px;">공지사항 작성</h2>
	<form class="form-group" action="create" method="post" enctype="multipart/form-data" onsubmit="return check(this)">
		<table class="table">
			<tr>
				<th>작성자</th>
				<td><input type="text" class="form-control" name="notices_name" value="admin"></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" class="form-control" name="notices_title" placeholder="제목을 입력하세요"></td>
			</tr>
			<tr>
				<th>파일</th>
				<td><input type="file" class="form-control" name="filenameMF" id="imgInp"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea name="notices_content" style="height:400px; width:790px;"></textarea></td>
			</tr>
		</table>

		<div class="form-group">
			<button class="btn btn-light" type="submit">등록</button>
			<button class="btn btn-light" type="button" onclick="history.back();">취소</button>
		</div>
	</form>
</div>
</body>
</html>