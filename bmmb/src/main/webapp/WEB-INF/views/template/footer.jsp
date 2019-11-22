<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>footer</title>
<style>
	.container { padding-top : 20px; display: flex; flex-direction : column;}
	.footer_01 > div > p, .footer_02 > p { color: #848c94; font-size: 12px; line-height: 1.67;}
	h4 { font-size: 15px; font-weight: 700; line-height: 1.6; color: #666d75;}
	ul { padding : 0;}
	ul li{ list-style: none; line-height: 2.29; margin:0 15px 0 0;}
	a { color: #666d75;}
	.footer_01 { display: flex; flex-direction : row;}
	.footer_02 { padding-top : 10px; margin-top : 10px;display:flex; flex-direction : column; border-top : 1px solid rgb(222, 226, 230);}
	.footer_02 ul{ display:flex; flex-direction: row;}
	button { background-color: rgb(255, 255, 255); border : 1px solid rgb(206, 212, 218); border-radius: 4px; padding : 8px;}
	.footer_nav li a { text-decoration: none;}
	.footer_nav li a:hover { color :#2b96ed;}
</style>
</head>
<body>
<div style="border-top	 : 1px solid rgb(222, 226, 230);">
	<div class="container">
		<div class="footer footer_01">
			<div style="width: 50%;">
				<h4>고객센터</h4>
				<h5>1588-0000</h5>
				<p>일반문의 09:00-22:00 / 실시간 항공권 문의 09:00-18:00</p>
				<p>연중무휴 / 점심시간 12:00-13:00</p>
				<button type="button">1:1문의하기</button>
			</div>
			<div style=" display: flex; flex-direction : row; width: 50%;">
				<div style="width:50%;">
					<h4>소개</h4>
					<ul class="footer_nav">
						<li><a href="#">회사소개</a></li>
						<li><a href="#">채용</a></li>
					</ul>
				</div>
				<div style="width:50%;">
					<h4>지원</h4>
					<ul class="footer_nav">
						<li><a href="#">자주묻는 질문</a></li>
						<li><a href="${root }/notices/list">공지사항</a></li>
						<li><a href="#">고객센터</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="footer footer_02">
			<ul class="footer_nav">
				<li><a href="#">이용약관</a></li>
				<li><a href="#">개인정보 처리방침</a></li>
				<li><a href="#">취소 및 환불 정책</a></li>
			</ul>
			<p>상호명 (주)..... | 대표 박철휘 | 개인정보보호책임자 박철휘 | 사업자등록번호 000-00-00000 사업자정보확인 | 통신판매업신고번호 0000-경기구리-0000</p>
			<p>경기도 구리시 벌말로 226, 17층(수택동) | 이메일 cjfgnl9205@naver.com | 마케팅/제휴 문의 cjfgnl9205@naver.com</p>
			<p>자사는 서울특별시관광협회 공제영업보증보험에 가입되어 있습니다. 마이리얼트립은 통신판매중개자이며 통신판매의 당사자가 아닙니다. 따라서 상품·거래정보 및 거래에 대하여 책임을 지지않습니다.</p>
		</div>
		
	</div>
</div>
</body>
</html>