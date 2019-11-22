<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.seat_select_main > div { padding : 20px 0 20px 0; border-bottom : 1px solid rgb(222, 226, 230);}
	.seat_row { border:1px solid #c2c2c2; background:#f9f9f9; font-weight:700; color:#333; padding : 5px 5px 5px 5px;
							width:20px; height : 20px; margin : 5px 5px 5px 0;	}
	.seat_select_4 { margin : 5px 50px 5px 0;}
	.seat_select_12 { margin : 5px 50px 5px 0;}
	.seat_stage { text-align:center; background:#ececec; height:25px; font-size:18px;}
</style>
</head>
<body>
<div class="seat_select_main">
	<div>
		<h2>인원/좌석 선택</h2>
	</div>
	
	<div>
	일반
		<select>
			<c:forEach var="i" begin="0" end="10">
				<option><c:out value="${i }"/></option>
			</c:forEach>
		</select>
	청소년
		<select>
			<c:forEach var="i" begin="0" end="10">
				<option><c:out value="${i }"/></option>
			</c:forEach>
		</select>
	우대
		<select>
			<c:forEach var="i" begin="0" end="10">
				<option><c:out value="${i }"/></option>
			</c:forEach>		
		</select>
		<span style=" float:right;">인원 : 2명, 선택한 좌석 : A1, A2</span>
	</div>

	
	<div>
		<div>
			<p class="seat_stage">Stage</p>
		</div>
		<div style=" width: 100%; text-align: center;">
			<div>
				<span class="seat_row">A</span>
				<c:forEach var="i" begin="1" end="16">
					<button class="seat_select_<c:out value="${i }"/>"><c:out value="${i }"/></button>
				</c:forEach>
			</div>
			<div>
				<span class="seat_row">B</span>
				<c:forEach var="i" begin="1" end="16">
					<button class="seat_select_<c:out value="${i }"/>"><c:out value="${i }"/></button>
				</c:forEach>
			</div>
			<div>
				<span class="seat_row">C</span>
				<c:forEach var="i" begin="1" end="16">
					<button class="seat_select_<c:out value="${i }"/>"><c:out value="${i }"/></button>
				</c:forEach>
			</div>
			<div>
				<span class="seat_row">D</span>
				<c:forEach var="i" begin="1" end="16">
					<button class="seat_select_<c:out value="${i }"/>"><c:out value="${i }"/></button>
				</c:forEach>
			</div>
			<div>
				<span class="seat_row">E</span>
				<c:forEach var="i" begin="1" end="16">
					<button class="seat_select_<c:out value="${i }"/>"><c:out value="${i }"/></button>
				</c:forEach>
			</div>
			<div>
				<span class="seat_row">F</span>
				<c:forEach var="i" begin="1" end="16">
					<button class="seat_select_<c:out value="${i }"/>"><c:out value="${i }"/></button>
				</c:forEach>
			</div>
			<div>
				<span class="seat_row">G</span>
				<c:forEach var="i" begin="1" end="16">
					<button class="seat_select_<c:out value="${i }"/>"><c:out value="${i }"/></button>
				</c:forEach>
			</div>
			<div>
				<span class="seat_row">H</span>
				<c:forEach var="i" begin="1" end="16">
					<button class="seat_select_<c:out value="${i }"/>"><c:out value="${i }"/></button>
				</c:forEach>
			</div>
			<div>
				<span class="seat_row">I</span>
				<c:forEach var="i" begin="1" end="16">
					<button class="seat_select_<c:out value="${i }"/>"><c:out value="${i }"/></button>
				</c:forEach>
			</div>
			<div>
				<span class="seat_row">J</span>
				<c:forEach var="i" begin="1" end="16">
					<button class="seat_select_<c:out value="${i }"/>"><c:out value="${i }"/></button>
				</c:forEach>
			</div>			
		</div>
	</div>
	<div style=" width: 100%; text-align: right;">
		<div>
			<button class="btn btn-default" onclick="history.back();">이전</button>
			<button class="btn btn-primary" onclick="location.href='booking'">다음</button>
		</div>
	</div>
</div>
</body>
</html>
