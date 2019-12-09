<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>e북 조회</title>
	<script type="text/javascript" src="../js/jquery.js"> /* 경로 확인 필요 */	
	</script>
	<style>
		.desc_read { padding : 20px 0 0 0;}
		
		h1{
		margin-left:400px;
		}
		
		.container{
		margin-left: 0px;
		}
	</style>
</head>
<body>
<div class="container">	
<h1>미리보기</h1>
<div class="desc_read">
		<table class="table">
			<tr>
				<td colspan="2" align="right" style="border-top-color:rgb(255, 255, 255)">(본문 중) </td>
			</tr>
			<tr>	
				<th style="width : 20%;">본문</th>
				<td>${desc2}</td>
				<td>${id}</td>
				<td>${author}</td>
			</tr>
		</table>
</div>
</div>




</body>
</html>