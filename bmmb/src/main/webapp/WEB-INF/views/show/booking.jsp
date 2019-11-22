<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	
	.notices_read { padding : 20px 0 20px 0;}
	.booking_info { display:flex; flex-direction : column;  border : 1px solid rgb(222, 226, 230);}
	.booking_info > div { padding : 20px 20px 20px 0; border-bottom : 1px solid rgb(222, 226, 230);}
	.booking_info > div > div > input { width : 70%;border:1px solid #ececec;}
	.personal_info > div {   padding : 0 15px 0 15px;}
	#booking_sb1, #booking_sb2 { display : none; padding : 10px 0 0 0;}
	
	#booking { line-height : 38px; text-align : center; color : #2b96ed; font-size:14px; font-weight: 700; width:100%; height:100%;
									border : 1px solid #a7d4f9; } 
	#booking:hover { background-color: #e7f4fd;}	 
	
</style>
<script>
	function booking_st1(){
		if(document.getElementById("booking_sc1").innerHTML == "(보기)"){
			document.all['booking_sb1'].style.display = "block";
			document.getElementById("booking_sc1").innerHTML = "(접기)";
		} else {
			document.all['booking_sb1'].style.display = "none";
			document.getElementById("booking_sc1").innerHTML = "(보기)";
		}
	}
	function booking_st2(){
		if(document.getElementById("booking_sc2").innerHTML == "(보기)"){
			document.all['booking_sb2'].style.display = "block";
			document.getElementById("booking_sc2").innerHTML = "(접기)";
		} else {
			document.all['booking_sb2'].style.display = "none";
			document.getElementById("booking_sc2").innerHTML = "(보기)";
		}
	}
</script>
</head>
<body>
<div class="notices_read">
	<h2>예매하기</h2>
	<div style="display:flex; flex-direction : row;">
		<div style="width : 48%;">
			<div>
				<img src="${pageContext.request.contextPath }/images/show/aida.jpg" width="100%" height="100%">
			</div>
		</div>
		<div style="width : 4%;">
		</div>
		<div style="width : 48%;">
			<div class="booking_info">
				<div>
					<h3 style="padding-left:20px;">예매자 정보</h3>
				</div>
				<div>
					<div>
						<label class="col-sm-3 col-form-label">예매자</label> 
						<input type="text" value="이름" class="btn btn-default">
					</div>
					<div>
						<label class="col-sm-3 col-form-label">연락처</label> 
						<input type="text" class="btn btn-default" value="010-1111-1111">
					</div>
					<div>
						<label class="col-sm-3 col-form-label">이메일</label> 
						<input type="text" class="btn btn-default"value="admin@naver.com">
					</div>
					<div>
						<label class="col-sm-3 col-form-label">예매내용</label> 
						<label class="col-form-label">11. 13(수), 18:00, 2매(블루스퀘어 인터파크홀)</label> <!-- 뒤에 버튼하나 넣고 찾아오는길 넣기 -->
					</div>
					<div>
						<label class="col-sm-3 col-form-label" >요청사항</label> 
						<input type="text" class="btn btn-default" value="요청사항을 입력하세요">
					</div>
				</div>
				
				<div style=" padding-left : 20px;">
					<input type="radio" style="padding-left:20px;">이용자 약관 동의
				</div>
				<div class="personal_info">
					<div style="padding-bottom:10px; border-bottom : 1px solid rgb(222, 226, 230);">
						<div >&rarr;개인정보 수집 동의<span id="booking_sc1" onclick="booking_st1();">(보기)</span></div>
							<div id="booking_sb1">
							이용약관이란 특정 서비스의 이용조건과 절차 등에 관한 사항을 규정하고 이를 명시한 문서를 말한다. 이용약관은 서비스 이용자에게 공시함으로써 효력이 발생하며, 영업상 중요 사유가 있을 시 변경할 수 있다.
							이용약관에는 이용계약의 체결, 서비스 이용, 이자의 의무 등에 관한 조항을 상세히 명시해야 한다. 또 이용 요금 납부, 계약 해지 등의 사항을 구체적으로 기재하도록 한다.
							그 밖에 면책조항을 기재하여 차후 발생할 수 있는 고객과의 갈등 상황을 사전에 방지하도록 한다.
							[네이버 지식백과] 이용약관 [利用約款, access terms] (예스폼 서식사전, 2013.)
							</div>
					</div>
					<div>
						<div style="padding-top:10px;">&#8594;개인정보 제공 동의<span id="booking_sc2" onclick="booking_st2();">(보기)</span></div>
							<div id="booking_sb2">
							이용약관이란 특정 서비스의 이용조건과 절차 등에 관한 사항을 규정하고 이를 명시한 문서를 말한다. 이용약관은 서비스 이용자에게 공시함으로써 효력이 발생하며, 영업상 중요 사유가 있을 시 변경할 수 있다.
							이용약관에는 이용계약의 체결, 서비스 이용, 이자의 의무 등에 관한 조항을 상세히 명시해야 한다. 또 이용 요금 납부, 계약 해지 등의 사항을 구체적으로 기재하도록 한다.
							그 밖에 면책조항을 기재하여 차후 발생할 수 있는 고객과의 갈등 상황을 사전에 방지하도록 한다.
							[네이버 지식백과] 이용약관 [利用約款, access terms] (예스폼 서식사전, 2013.)
							</div>
					</div>
				</div>
			</div>
			<div  style=" padding : 20px 0 0 0; text-align: right; ">
				<span style="color: #f66044; font-size: 22px; line-height: 1.2; font-weight: bold;">최종 결제 금액 : 100,000원</span>
			</div>
			<div style=" padding : 20px 0 0 0;">
				<button id="booking" type="button" >결제하기</button>
			</div>
		</div>
		
	</div>
</div>
</body>
</html>