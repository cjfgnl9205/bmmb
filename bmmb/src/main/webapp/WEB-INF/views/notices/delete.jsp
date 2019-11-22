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
	<h2>공지사항 삭제</h2>
	<form class="form-group" action="delete" method="post" enctype="multipart/form-data" onsubmit="return check(this)">
		<input type="hidden" name="oldfile" value="${oldfile }">
		<script>
			var result = confirm('정말로 삭제하시겠습니까?');
			
			if(result){
				alert('삭제되었습니다.');
				
			}else{
				alert('삭제안됨');
				location.href="read"+"?notices_no=${dto.notices_no}&word=${word}&nowPage=${nowPage}";
			}
		</script>
	</form>
</div>
</body>
</html>