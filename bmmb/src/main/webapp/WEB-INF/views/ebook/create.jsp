<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>eBook 등록</title>
<style>
	.ebook_list { padding : 20px 0 0 0;}
</style>
<script>
	function check(f){
		if(f.name.value==''){
			alert("제목을 입력하세요");
			f.name.focus();
			return false;
		}
		if(f.desc1.value==''){
			alert("내용을 입력하세요");
			f.desc1.focus();
			return false;
		}
	}
</script>
</head>
<body>

<div class="ebook_list">
	<h2 style="padding-bottom: 20px;">eBook 등록</h2>
	<form class="form-group" action="create" method="post" enctype="multipart/form-data" onsubmit="return check(this)">
		<table class="table">			
			<tr>
				<th>대분류</th>
				<td><input type="text" class="form-control" name="category_code" placeholder="제목을 입력하세요"></td>
			</tr>
			<tr>
				<th>중분류</th>
				<td><input type="text" class="form-control" name="midclass" placeholder="제목을 입력하세요"></td>
			</tr>
			<tr>
				<th>저자</th>
				<td><input type="text" class="form-control" name="author"></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" class="form-control" name="name" placeholder="제목을 입력하세요"></td>
			</tr>
			<tr>
				<th>가격</th>
				<td><input type="text" class="form-control" name="price" placeholder="제목을 입력하세요"></td>
			</tr>
			<tr>
				<th>파일</th>
				<td><input type="file" class="form-control" name="filenameMF" id="imgInp"></td>
			</tr>
			<tr>
				<th>내용1</th>
				<td><textarea name="desc1" style="height:400px; width:790px;"></textarea></td>
			</tr>
			<tr>
				<th>내용2</th>
				<td><textarea name="desc2" style="height:400px; width:790px;"></textarea></td>
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