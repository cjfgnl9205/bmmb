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
<script>
function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function(e) {
            $('#foo').attr('src', e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
    }
}

$("#imgInp").change(function() {
    readURL(this);
});
</script>


<div class="notices_list">
	<h2 style="padding-bottom: 20px;">패키지 여행 작성</h2>
	<form class="form-group" action="create" method="post" enctype="multipart/form-data" onsubmit="return check(this)">
		<table class="table">
			<tr>
				<td rowspan="5" style="width : 20%;"><img src="#" id="foo"></td>
				<th style="width : 10%;">작성자</th>
				<td><input type="text" class="form-control" name="notices_name" value="admin"></td>
			</tr>
			<tr>
				<th>구분</th>
				<td>
					<select name="package_country" class="form-control">
						<option value="package_eu">유럽</option>
						<option value="package_vietnam">베트남</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" class="form-control" name="notices_title" placeholder="제목을 입력하세요"></td>
			</tr>
			<tr>
				<th>최소가격</th>
				<td><input type="text" class="form-control" name="notices_title" placeholder="제목을 입력하세요"></td>
			</tr>
			<tr>
				<th>파일</th>
				<td><input type="file" class="form-control" name="filenameMF" id="imgInp"></td>
			</tr>
		</table>
		<table class="table">
			<tr>
				<th style="width : 10%;">내용</th>
				<td><textarea name="notices_content" style="height:400px; width:1000px;"></textarea></td>
			</tr>
		</table>
		<div class="form-group">
			<button class="btn btn-default" type="submit">등록</button>
			<button class="btn btn-default" type="button" onclick="history.back();">취소</button>
		</div>
	</form>
</div>
</body>
</html>