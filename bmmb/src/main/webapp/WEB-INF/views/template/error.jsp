<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러 페이지</title>
</head>
<body>
<script>
	alert('${msg}');
	document.location.href='${url}'+"?notices_no=${notices_no}&word=${word}&nowPage=${nowPage}&oldfile=${oldfile}";
</script>
</body>
</html>