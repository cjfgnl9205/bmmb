<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<!-- 합쳐지고 최소화된 최신 CSS -->
<meta name="viewport" content="width=640, user-scalable=yes">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.min.js" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<style>									
	header a { color : black; }
	header input[type=text] { box-sizing: border-box; border: 2px solid #ccc; border-radius: 4px; font-size: 16px; background-color: (245, 246, 247);
								background-image: url('${pageContext.request.contextPath}/images/searchicon.png'); background-position: 10px 10px;   background-repeat: no-repeat; padding: 12px 20px 12px 40px;
								 background-size: 20px 20px;}
	header .main {} 
	 
	header .main_left { float :left;}
	header .main_left h1{ float : left;}
	header .main_left  h1  a { display : block; width : 130px; height : 50px; background: url("${pageContext.request.contextPath}/images/logo.png") no-repeat; color : transparent;
								margin-right : 30px; }
	header .main_left input { float : left; margin-top : 20px; width : 300px;}	
	header .main_left input[type=text]:focus { border: 3px solid #a7d4f9;}
	
	
	header .main_right { float : right; height: 36px; position: relative; padding-top : 20px;}
	header .main_right .signin_button { display : inline-block; height : 38px; line-height : 38px; text-align : center; color : #666d75; font-size:14px; font-weight: 700; margin-left: 12px;
									padding : 0 12px 0 12px;}
	header .main_right .signin_button:hover {background-color: #e9ecef;} 
	
	header .main_right .signup_button { display : inline-block;  height : 38px; line-height : 38px; text-align : center; color : #2b96ed; font-size:14px; font-weight: 700; margin-left: 12px;
									border : 1px solid #a7d4f9; padding : 0 32px 0 32px;} 
	header .main_right .signup_button:hover { background-color: #e7f4fd;}	
	header nav ul { list-style : none;}
	header nav ul li{ float : left; display : inline-block; height : 38px; line-height : 38px; text-align : center; color : rgba(73, 80, 86, 0.7); font-size:14px;
					font-weight: 700; margin-left: 12px; padding : 0 12px 0 12px;
	}
	.top_nav li a{ text-decoration: none; color : rgba(73,80,86,.7); padding : 10px 0 10px 0;}
	.top_nav li a:hover { border-bottom: 2px solid #2b96ed;}
	.main_common a{ text-decoration: none;}
</style>
</head>
<body>
<div style="  border-bottom : 1px solid rgb(222, 226, 230);">
	<div class = "container">
		<header>
			<div class="d-flex flex-column">
				<div class="main p-2">
					<div class="main_left main_common">
						<h1><a href="${root }/">홈페이지 로고</a></h1>
						<input type="text" placeholder="여행지나 상품을 검색하세요"> 
					</div>
					<div class="main_right main_common">
						<a href="#" class="signin_button">로그인</a>
						<a href="#" class="signup_button">회원가입</a>
					</div>
					<div style="clear:both;"></div>
				</div>
				<div class="p-2">
					<div>
						<nav>
							<ul class="top_nav">
								<li><a href="#">도서상품</a></li>
								<li><a href="${root }/ebook/list">e-Book</a></li>
								<li><a href="${root }/show/list">공연 예매</a></li>
								<li><a href="#">자유게시판</a></li>
								<li><a href="#">고객센터</a></li>
								<li><a href="${root }/notices/list">공지사항</a></li>
								<li><a href="${root }/sample/list">sample(beta)</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</header>
	</div>
</div>
</body>
</html>