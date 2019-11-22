<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	
	.notices_read { padding : 20px 0 0 0;}
	.first_div { display : flex; flex-direction : row;}
	.left_div { width : 75%;}
	.left_div > div { padding : 20px 0 20px 0; border-bottom : 1px solid rgb(222, 226, 230);}
	.right_div { width : 25%;}
	.right_div > div { border : 1px solid rgb(222, 226, 230); margin-left:10px;}
	.right_div > div > div { padding : 5px 15px 5px 15px;}
	
	.content_ex { color:#333; font-weight: 400; font-size: 20px; padding : 10px 0 10px 0; }
	
	#booking { line-height : 38px; text-align : center; color : #2b96ed; font-size:14px; font-weight: 700; width:100%; height:100%;
								background-color:rgb(255, 255, 255);	border : 1px solid #a7d4f9; } 
	#booking:hover { background-color: #e7f4fd;}	 
	 
	 .read_right_Fixed {
        position: fixed;
        top: 0px;
      }
</style>
<script>
	
	/* 하단부분 펼치기 접기 */
	function st1(){
		if(document.getElementById("sc1").innerHTML == "[펼치기]"){
			document.all['sb1'].style.display = "block";
			document.getElementById("sc1").innerHTML = "[접기]";
		} else {
			document.all['sb1'].style.display = "none";
			document.getElementById("sc1").innerHTML = "[펼치기]";
		}
	}
	/* 우측메뉴 스크롤고정 */
	 $( document ).ready( function() {
	        var jbOffset = $( '.right_menu' ).offset();
	        $( window ).scroll( function() {
	          if ( $( document ).scrollTop() > jbOffset.top ) {
	            $( '.right_menu' ).addClass( 'read_right_Fixed' );
	          }
	          else {
	            $( '.right_menu' ).removeClass( 'read_right_Fixed' );
	          }
	        });
	      } );
</script>

</head>
<body>
<div class="notices_read">
	<div class="first_div">
		<div class="left_div">
			<div>
				<button type="button" onclick="location.href='list'">목록</button>
				<button type="button" onclick="#">수정</button>
				<button type="button" onclick="#">삭제</button>
				<button type="button" onclick="location.href='create'">등록</button>
			</div>
			<div>
				<h2>뮤지컬 [아이다] </h2>
				<span>블루스퀘어 인터파크홀<a href="#">(찾아오시는 길)</a></span>
			</div>
			<div style=" display : flex; flex-direction : row;">
				<div style="width:50%;">
					<h3>기간</h3>
					<span class="content_ex">2020. 04. 05(토) ~</span>
				</div>
				<div style="width:50%;">
					<h3>러닝타임</h3>
					<span class="content_ex"> 100분</span>
				</div>
			</div>
			<div style=" display : flex; flex-direction : row;">
				<div style="width:50%;">
					<h3>관람 가능 연령</h3>
					<span class="content_ex">13세 관람가</span>
				</div>
				<div style="width:50%;">
					<h3>공연 날짜</h3>
					<span class="content_ex"> 화~금(1회) 20:00 | 토, 일(2회) : 16:00, 20:00</span>
				</div>
			</div>
			<div>
				<h3>주연</h3>
				<span class="content_ex">홍길동, 이길동, 김길동</span>
			</div>
			<div>
				<h3>요금안내</h3>
				<span class="content_ex">R석 : 80,000원 | S석 : 50,000원</span><br>
				<span class="content_ex">청소년 : 10% 할인, 우대(장애인, 국가유공자 등) : 20% 할인</span>
			</div>
			<div>
				<h3>시놉시스</h3>
				<span class="content_ex">소년원에 수감중이던 소매치기 출신 희숙(임예진 분)은 신문사 편집국장 송대규(최불암 분)의 집에 가석방 형식으로 보호받게 된다. 송국장의 아들 영민은 소아마비로 성격이 삐뚤어지고 또 자신감이 부족한 아이다. 희숙이 또한 떠돌아다니며 혼자 자라온 탓에 매사가 제멋대로이다. 그런 희숙과 영민은 당연히 마주치기만 하면 싸움이다. 그러나 희숙은 영민을 도와주지 않으면 안된다는 결심을 하고 사랑으로 돌본다. 처음으로 남을 도울 수 있다는 기쁨! 희숙은 영민을 등에 업고 약속한 6개월 동안 등교, 하교한다. 결국 그녀는 영민이 다시 걸을 수 있는 기적을 가져다주었고 동시에 희숙도 본연의 착한 여자로 되돌아가 약속된 6개월 후 아무도 모르게 그집을 떠나가 버린다.</span>
			</div>
			<div>
				<img src="${pageContext.request.contextPath }/images/show/show02.jpg" style="width: 100%; height:100%;">
			</div>
			
			<div>
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
				<h3>온라인 문의사항</h3>
				<button>문의하기</button>
				<p>안녕하세요, 온라인투어 유럽팀입니다.</p>
				<p>서울 중구 한진빌딩에 위치해 있으며, 온라인투어 유럽팀은 다양한 패키지 상품을 보유하고 있습니다.</p>
				<p>서유럽,동유럽,북유럽 그리고 지중해까지 다양한 상품이 있으니,</p>
				<p>보시고 궁금하신 점 있으시면 언제든지 연락주세요^^</p>
				<p>감사합니다.</p>
			</div>
			
		</div>
		
		<div class="right_div">
			<div class="right_menu">
				<div>
					<h4>*날짜와 옵션을 선택하세요</h4>
					<input type="text" class="btn btn-default" value="날짜선택" style="width:100%; border:1px solid #ececec;">
				</div>
				<div>
					<input type="text" class="btn btn-default" value="시간선택" style="width:100%; border:1px solid #ececec;">
				</div>
				<div>
					<input type="button" id="booking" value="예약하기" style="width:100%;" onclick="location.href='seat_select'">
				</div>
				<div>
					<button class="btn btn-primary" style="width:100%; ">문의하기</button>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>