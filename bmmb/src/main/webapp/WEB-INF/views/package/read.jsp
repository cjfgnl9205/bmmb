<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.notices_read { padding : 20px 0 0 0;}
</style>
<script>
	function st1(){
		if(document.getElementById("sc1").innerHTML == "[펼치기]"){
			document.all['sb1'].style.display = "block";
			document.getElementById("sc1").innerHTML = "[접기]";
		} else {
			document.all['sb1'].style.display = "none";
			document.getElementById("sc1").innerHTML = "[펼치기]";
		}
	}
</script>
</head>
<body>
<div class="notices_read">
	<div style="display : flex; flex-direction : row;">
		<div style="width : 75%;">
			<div style=" padding : 0 0 20px 0; border-bottom : 1px solid rgb(222, 226, 230);">
				<h2>(제목)[아시아나] 프랑스/베네룩스/독일 7일 (브뤼셀 환상 야경투어 포함!)</h2>
			</div>
			<div style=" padding : 20px 0 20px 0; border-bottom : 1px solid rgb(222, 226, 230);">
				<h4>날짜와 옵션을 선택하세요</h4>
				<h4>금액조회하기가 무엇인가요?</h4>
				<input type="text" class="btn btn-default" value="날짜선택">
				<input type="text" class="btn btn-default" value="인원선택">
				<button>금액 조회하기</button>
			</div>
			<div style=" padding : 20px 0 20px 0; border-bottom : 1px solid rgb(222, 226, 230);">
				<img src="${pageContext.request.contextPath }/images/package/read/read01.jpg" style="width: 100%; height:100%;">
				<img src="${pageContext.request.contextPath }/images/package/read/read02.jpg" style="width: 100%; height:100%;">
				<img src="${pageContext.request.contextPath }/images/package/read/read03.jpg" style="width: 100%; height:100%;">
				<img src="${pageContext.request.contextPath }/images/package/read/read04.jpg" style="width: 100%; height:100%;">
				<img src="${pageContext.request.contextPath }/images/package/read/read05.jpg" style="width: 100%; height:100%;">
			</div>
			
			<div style=" padding : 20px 0 20px 0; border-bottom : 1px solid rgb(222, 226, 230);">
				<div>
					<h3>포함사항</h3>
					<p>1. [교통] 왕복항공권, 전용차량비</p>
					<p>2. [제세금] 유류할증료, 국내공항시설이용료, 해외공항시설이용료, 관광진흥기금, 빈곤퇴치기금, 전쟁보험료 등</p>
					<p>3. [숙박] 숙박비(2인 1실 기준)</p>
					<p>4. [관광] 관광지 입장료(선택관광 제외)</p>
					<p>5. [여행자보험] 최대 1억원 여행자보험(보장내용 상세보기)(보장내용 상세보기)</p>
				</div>
				
					<div  id="sb1" style="display:none;">
						<p>※ 유류할증료는 예약 당시 금액으로 책정되었으며, 월별 국제선 유류할증료 변경에 따라 유류할증료는 증감될 수 있습니다.</p>
						<p>※ 본 여행상품의 숙박시설은 1~2급호텔로 진행되며, 현재 미정으로 출발 1일전까지 SMS 또는 이메일로 안내드리겠습니다.</p>
								
					<h3>불포함사항</h3>
						<p>1. [가이드/기사 경비] 1인당 전 일정에 대한 가이드/기사경비 70유로를 현지에서 지불해야 합니다.</p>
						<p>2. [선택경비] 선택관광, 싱글차지, 항공권 업그레이드, 쇼핑비</p>
						<p>3. [개인경비] 물값, 자유시간 시 개인비용 등</p>
						<p>4. [매너팁] 매너팁은 소비자의 자율적 선택으로 지불여부에 따른 불이익은 없습니다.</p>
						
						<p>※ 여행요금의 변경-국외여행 표준약관 제 12조 참조</p>
						<p>국외여행을 실시함에 있어서 이용운송, 숙박기관에 지급하여야 할 요금이 계약 체결시보다 5%이상 증감하거나</p>
						<p>여행 요금에 적용된 외화 환율이 계약 체결시보다 2% 이상 증감한 경우 여행사는 그 증감된 금액을 상대방에게 청구 할 수 있습니다.</p>
						<p>환율에 대한 추가금액은 출발 10일전 외환은행 마감시간(16:00) 유로 현찰 살 때 환율 기준하여 추가 징수 될 수 있습니다.</p>
					</div>
					<div id="sc1" onclick="st1();">[펼치기]</div> 
				
			</div>
			
			<div style=" padding : 20px 0 20px 0; border-bottom : 1px solid rgb(222, 226, 230);">
				<h3>사용방법</h3>
				<p>1. 원하시는 출발일 선택</p>
				<p>2. 옵션 타입과 , 인원수 선택 후 구매</p>
				<p>3. 실시간 좌석 체크 후 해피콜 시 확정 안내</p>
			</div>
			
			<div style=" padding : 20px 0 20px 0; border-bottom : 1px solid rgb(222, 226, 230);">
				<h3>유의사항</h3>
				<p>1. 귀국편 변경여부 : 변경불가</p>
				<p>2. 쇼핑정보(품목 및 횟수) : 1회</p>
				<p>3. 최소출발인원 : 20명</p>
			</div>
			
			<div style=" padding : 20px 0 20px 0; border-bottom : 1px solid rgb(222, 226, 230);">
				<h3>온라인 유럽팀</h3>
				<button>문의하기</button>
				<p>안녕하세요, 온라인투어 유럽팀입니다.</p>
				<p>서울 중구 한진빌딩에 위치해 있으며, 온라인투어 유럽팀은 다양한 패키지 상품을 보유하고 있습니다.</p>
				<p>서유럽,동유럽,북유럽 그리고 지중해까지 다양한 상품이 있으니,</p>
				<p>보시고 궁금하신 점 있으시면 언제든지 연락주세요^^</p>
				<p>감사합니다.</p>
			</div>
			
		</div>
		
		<div style="width : 25%;">
			<div style=" border : 1px solid rgb(222, 226, 230); margin-left:10px;">
				<div style=" padding : 15px 15px 15px 15px">
					<h3>가격 : 00000원</h3>
				</div>
				<div style=" padding : 15px 15px 15px 15px">
					<input type="button" class="btn btn-primary" value="예약하기">
				</div>
				<div style=" padding : 15px 15px 15px 15px">
					<button class="btn btn-primary">문의하기</button>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>