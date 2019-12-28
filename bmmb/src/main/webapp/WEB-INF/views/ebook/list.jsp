<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="util" uri="/ELFunctions"%>
<c:set var="root" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>eBook 목록</title>
<style>

 .div_entry{
 	float:left;
 	width:33%;
} 

/* .entry {
	float: left;
	width: 33%;

} */

/* display로 list 데이터 확인 */
.temp_console3 {
	display: none;
}

/* s: 사이드바 */
.side_bar:first-child {
	
}

/* e: 사이드바 */
.row {
	margin-left: 0px;
}

.ebook_list {
	padding: 20px 0 0 0;
}

.cntr {
	margin: 0 auto;
}

/* s: bcmk 레이아웃 스타일 */
.box_main_best {
	height: 100%;
	/*     height: 351px; */
	position: relative;
	/*  display: none; */
}

div {
	display: block;
	width: auto;
	height: auto;
}

.box_main_best .section h3 {
	margin-left: 6px;
}

.box_main_best h3 {
	/* float: left; */
	margin: 0 20px 10px 35px;
}

h3 a {
	margin: 0 10px 0px 0px;
	padding: 0px;
}

h3 {
	display: block;
	font-size: 1.1em;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	font-weight: bold;
}

/* body {
    font-size: 12px;
    font-family: dotum, sans-serif;
    color: #666;
    line-height: 1.2em;
} */

/* e: bcmk 레이아웃 스타일 */
</style>
<script>
	function read(no) {
		var url = "read";
		url += "?ebook_ID=" + no;
		url += "&word=${word}";
		url += "&nowPage=${nowPage}";

		location.href = url;
	}
	function downFile(fname) {
		var url = "${pageContext.request.contextPath}/download";
		url += "?dir=/ebook_storage";
		url += "&filename=" + fname;
		location.href = url;
	}

	function extrac(){
		var sourcetxt = document.getElementById("best-seller-titles");
		
		extracted = sourcetxt.textContent;
		alert(extracted);
		
	}
</script>
</head>
<body>


	<div class="container">


		<div id="extractor">
		<br><br><br><br><br>
						<button type="button" onclick="extrac();">통째 추출</button>
						
		</div>


		<!--** s: 검색창 **-->
		<form class="form-inline" action="list" method="post">
			<div class="form-group col-sm-6"
				style="float: left; padding-left: 0px;">
				<input type="text" class="form-control" name="word"
					placeholder="검색어를 입력하세요">
				<button type="submit" class="btn btn-light"
					style="margin-left: 10px;">검색</button>
				<button type="button" class="btn btn-light"
					style="margin-left: 10px;" onclick="location.href='create'">등록</button>
			</div>
		</form>
		<!--** e: 검색창 **-->
		<br>
		<div class="box_main_best" id="newBook"><!-- s: 총 도서섹션 -->
			<br><br>
			
            <div class="section first"> <!-- s:  도서 섹션1 -->
                
					<h3><a href="#">오늘의책</a></h3>
					<div class="row"
						style="background-color: white; text-align: center">
						<table class="cntr" width="500" border="0" cellspacing="10"
							cellpadding="5">
							<tbody>
								<tr class="rand_tr">							
									<td class="rand_td">
                                        <div class="rnamebox">rand1</div>
                                        <br><div class="ridbox">rid1</div>  
                                        <br><div class="rimgbox">rimg1</div>                                      
                                    </td> 
                                    <td class="rand_td">
                                        <div class="rnamebox">rand2</div>
                                        <br><div class="ridbox">rid2</div>
                                        <br><div class="rimgbox">rimg2</div>     
                                    </td> 
                                    <td class="rand_td">
                                        <div class="rnamebox">rand3</div>
                                        <br><div class="ridbox">rid3</div>
                                        <br><div class="rimgbox">rimg3</div>     
                                    </td> 
                                    <td class="rand_td">
                                        <div class="rnamebox">rand4</div>
                                        <br><div class="ridbox">rid4</div>
                                        <br><div class="rimgbox">rimg4</div>     
                                    </td> 
                                    <td class="rand_td">
                                        <div class="rnamebox">rand5</div>
                                        <br><div class="ridbox">rid5</div>
                                        <br><div class="rimgbox">rimg5</div>     
                                    </td>     
								</tr>
							</tbody>
						</table>
					</div>
				
		</div> <!-- e: 도서섹션 1-->
		<br><br>
				
<div class="section second"> <!-- s:  도서 섹션2 -->
			<h3><a href="#">신간도서</a></h3>
			<div class="row"
				style="background-color: white; text-align: center">
				<table class="cntr" width="500" border="0" cellspacing="10"
					cellpadding="5">
					<tbody>
								<tr>
									<c:forEach var="dto" items="${list}" varStatus="status" >
									  <!-- 1~5번째 요소 -->						
										<c:choose>
											<c:when test="${util:newElems(dto.rdate)}"> 
												<td class="imgpanel">
													<a href="javascript:read('${dto.ebook_ID}')">																	
														<img src="${pageContext.request.contextPath}/ebook_storage/${dto.image}"
																width="178" height="264" />
													</a>
													<div class="n_namebox">${dto.name}</div>
													<div class="midbox">${dto.midclass}</div>
													<div class="viewbox">${dto.viewcnt}</div>
													<!-- <div class="textbox">PRINT ME!</div> -->
													<div class="utilbox">
													${dto.rdate}
													</div>
												</td>
											</c:when>
											
											<!-- 6~10번째 요소 -->
											<otherwise>
											</otherwise>
											
										</c:choose>
										
									</c:forEach>
								</tr>
					</tbody>
				</table>
			</div>	
</div> <!-- e: 도서 섹션2-->

			<br>
			<br>
			<br>
			<br>
	
<div class="section third"> <!-- s:  도서 섹션3-->
			<c:choose>
				<c:when test="${empty kmid}">
					<h3><a href="#">HOT</a></h3>
					<div class="row"
						style="background-color: white; text-align: center">
						<table class="cntr" width="500" border="0" cellspacing="10"
							cellpadding="5">
							<tbody>
								<c:choose>
									<c:when test="${empty list}">
										<tr>
											<td colspan="4">등록된 글이 없습니다.</td>
										</tr>
									</c:when>
									<c:otherwise>
										<tr>
											<c:forEach var="dto" items="${list}" varStatus="status" >
											
																				
												<c:choose>
													<c:when test="${dto.viewcnt > 20}">
														<td class="imgpanel">
															<a href="javascript:read('${dto.ebook_ID}')">																	
																<img src="${pageContext.request.contextPath}/ebook_storage/${dto.image}"
																		width="178" height="264" />
															</a>
															<div class="midbox">${dto.midclass}</div>
															<div class="viewbox">${dto.viewcnt}</div>
															<!-- <div class="textbox">PRINT ME!</div> -->
															<div class="utilbox">
															${dto.rdate}
															</div>
														</td>
														
														</tr>
																<c:choose>
																	<c:when test="${status.count > 5}">
																		<tr class="namebox2"></tr>
																	</c:when>																	
																	<c:otherwise>
																		<tr class="namebox"></tr>
																	</c:otherwise>
																</c:choose>
														<tr>
														
													</c:when>
													<c:otherwise>
														<td class="imgpanel">
															<a href="javascript:read('${dto.ebook_ID}')">
																<img src="${pageContext.request.contextPath}/ebook_storage/${dto.image}"
																			width="178" height="264" />
															</a>
															<div class="midbox">${dto.midclass}</div>	
															<div class="viewbox">${dto.viewcnt}</div>
															<div class="utilbox">
															${dto.rdate}
															</div>
														</td>
													</c:otherwise>
												</c:choose>
												
												
											
											</c:forEach>
										</tr>
									</c:otherwise>
								</c:choose>
							</tbody>
						</table>
					</div>
				</c:when>
				
				
				<c:when test="${not empty kmid}"> 	
				<div class="noempty_kmid"><!-- s: noempty kmid -->
								
								<div class="midsection1"> <!-- s: midsection1 -->
										${kmid}
										<br><br>
										<tr>
												<c:forEach var="dto" items="${list}" varStatus="status">											
														<c:choose>
																<c:when test="${dto.midclass == kmid}">
																		<div class="pickbook1">
																			<c:choose>
																					<c:when test="${status.count % 5 == 0}">
																						<td class="imgpanel">
																							<a href="javascript:read('${dto.ebook_ID}')">
																									<img src="${pageContext.request.contextPath}/ebook_storage/${dto.image}"
																									width="178" height="264" />
																							</a>
																							<div class="midbox">${dto.midclass}</div>
																						</td>
																						</tr>
																								<c:choose>
																										<c:when test="${status.count > 5}">
																											<tr class="namebox2"></tr>
																										</c:when>																	
																										<c:otherwise>
																											<tr class="namebox"></tr>
																										</c:otherwise>
																								</c:choose>
																						<tr>
																					</c:when>	
																					<c:otherwise>
																						<td class="imgpanel">
																							<a href="javascript:read('${dto.ebook_ID}')">
																									<img src="${pageContext.request.contextPath}/ebook_storage/${dto.image}"
																									width="178" height="264" />
																							</a>
																							<div class="midbox">${dto.midclass}</div>	
																						</td>
																					</c:otherwise>
																			</c:choose>
																		</div>  <!-- e: 도서 섹션 1 --> 
																</c:when>
																
																
																
																<c:otherwise></c:otherwise>
														</c:choose>
														
												</c:forEach>
											</tr>
								</div><!-- e: midsection1 -->
				</div> <!-- e: noempty kmid -->	 				
				</c:when>
				
							
				<c:otherwise>
					<div>Oops</div>
				</c:otherwise>
				
				
			</c:choose>
		</div> <!-- e: 도서 섹션3-->	
	
		<br>
		<br>
		<br>
		<br>
	
			</div>	<!-- e: 총 도서 섹션 -->
		
		
					<!-- s:testSection -->
		<div class="testSection"> 
		<!-- 신간도서 테이블 -->
		<table class="table table-striped" id="testTable">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>viewcnt</th>
					<th>rdate</th>
				</tr>
			</thead>
			<tbody>
			
			<c:choose>
				<c:when test="${empty list}">
						<tr>
							<td colspan="7">등록된 글이 없습니다.</td>
				</c:when>
			
			<c:otherwise>	
																<c:forEach var="dto" items="${list}">
																	<c:choose> 
																		<c:when test="${dto.viewcnt > 20}"> 
																
																				<tr>		
																					<td id="test_id">${dto.ebook_ID}</td>
																					<td>
																												
																							 <a href="javascript:read('${dto.ebook_ID}') ">${dto.name}</a>												
																				</td>
																				<td>
																				 ${dto.author} 
																				</td>					
																				<td>${dto.viewcnt}</td>	
																				<td>${dto.rdate}</td>
																				</tr>
																				
																		</c:when>			
																		<c:when test="${util:newElems(dto.rdate)}">
																																							<tr>		
																					<td id="test_id">${dto.ebook_ID}</td>
																					<td>
																												
																							 <a href="javascript:read('${dto.ebook_ID}') ">${dto.name}</a>												
																				</td>
																				<td>
																				 ${dto.author} 
																				</td>					
																				<td>${dto.viewcnt}</td>	
																				<td>${dto.rdate}</td>
																				</tr>
																		</c:when>
																																
																		<c:otherwise>																												
																			util 작동 x												
																		</c:otherwise> 	
																</c:choose> 
															</c:forEach>			
				
					</c:otherwise>
			</c:choose>
				
			</tbody>
		</table>
				
			</div> 
			<!-- e:testSection -->
		
		<br><br>
		<h3><a href="#">해외 베스트셀러</a></h3>
	<!-- s: NYT API -->
<div class="nyt_test">

	<div id="reviews">
	   <!-- reviews -->
	</div>
	
	<div id="best-seller-titles">
	  <!-- best sellers -->
	</div>

</div>
<!-- e: NYT API -->
	
	
	
	
	
	</div>


	
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							// s: 섹션0 테스트
							
							//셔플 함수
						function shuffleRandom(n){
					        var ar = new Array();
					        var temp;
					        var rnum;

					        for(var i=1; i<=n; i++){
					            ar.push(i);                             // ar = [1,2,3]
					        }

					        for(var i=0; i< ar.length ; i++)
					        {
					            rnum = Math.floor(Math.random() *n);     //2
					            /* alert(rnum);  */      // ex) 1,2,1 순 출력
					            temp = ar[i];        // 0회차: temp=ar[0]
					            ar[i] = ar[rnum];  //0회차: ar[0] = ar[2]   -->  ar[0]  = 3  ...  ar =  [3,2,3]  ,  먼저 0번 자리에 0회차 난수 입.
					            ar[rnum] = temp;       //0회차: ar[2] = ar[0]                      ... ar  = [ 3,2,1 ] , ar[0]과 ar[2] 자리 교체. 
					        }
					       
					        return ar;
					}
							
							
						var shuffleRet = shuffleRandom(5	);   // 온로딩으로 할때는 n=5로 대입해야 함!		
						
						var vlist = new Array();
                        var vlist2 = new Array();
                        var vlist3 = new Array();
                        
						<c:forEach items="${list}" var="dto">
								var vjson = new Object();
								vjson.name = "${dto.name}";
								vlist.push(vjson);  
									
		                        var vjson2 = new Object();
		                        vjson2.ebook_ID = "${dto.ebook_ID}";
		                        vlist2.push(vjson2);  
									
		                        var vjson3 = new Object();
		                        vjson3.image = "${dto.image}";
		                        vlist3.push(vjson3);  
		                        
						</c:forEach>
		
					   //0~4까지 포문화
					   /* alert(JSON.stringify(vlist2));
					    */
					   var rnamebox = document.getElementsByClassName("rnamebox");
					   var ridbox = document.getElementsByClassName("ridbox");  
					   var rimgbox = document.getElementsByClassName("rimgbox");  
					    
					   
					   for(i=0; i<rnamebox.length; i++){
						  rnamebox[i].innerHTML = Object.values(vlist[shuffleRet[i]]);
						  ridbox[i].innerHTML = Object.values(vlist2[shuffleRet[i]]);			
						  
						  var str = "<a href=\"javascript:read('"+Object.values(vlist2[shuffleRet[i]])+"')\"><img src='"+
						  "${pageContext.request.contextPath}/ebook_storage/"+
						   Object.values(vlist3[shuffleRet[i]])+"' width='178' height='264' />";
						   
							
/* 						  rimgbox[i].innerHTML = Object.values(vlist3[shuffleRet[i]]);			 */
						  rimgbox[i].innerHTML = str;
					   }
					   		  
					
							var namebox = $(".namebox");
							var namebox2 = $(".namebox2");
							var temp_console = $(".temp_console");
							var temp_console2 = $(".temp_console2");

							var str;
							var str3;

							var list = new Array();

							<c:forEach items="${list}" var="dto">
								var json = new Object();
								json.name = "${dto.name}";
								json.ebook_ID = "${dto.ebook_ID}";
								list.push(json);
							</c:forEach>

/* 							alert("JSON객체="+JSON.stringify(list)); */
							/* alert(list[0].ebook_ID);  */
							 

							var list2 = new Array();
							var list3 = new Array();

							for (var i = 0; i < 5; i++) {
								str = "<td class='txtpanel'><a href='javascript:read("
										+ list[i].ebook_ID
										+ ")'>"
										+ list[i].name + "</a></td>";
								var json2 = new Object();
								json2.entry = str;
								list2.push(json2);
								/*  		  temp_console.html(JSON.stringify(list2)); */
								namebox.html(JSON.stringify(list2));
							}

							for (var i = 5; i < 10; i++) {
								str = "<td class='txtpanel'><a href='javascript:read("
										+ list[i].ebook_ID
										+ ")'>"
										+ list[i].name + "</a></td>";
								var json3 = new Object();
								json3.entry = str;
								list3.push(json3);
								/* 	  temp_console2.html(JSON.stringify(list3)); */
								namebox2.html(JSON.stringify(list3));
							}

							
							//s: NYT API 
														
/* fetch('https://api.nytimes.com/svc/books/v3/lists.json?list-name=hardcover-fiction&api-key=6ad84e249d054efeaefe1abb8f89df5b', {
    method: 'get',
  })
  .then(response => { return response.json(); })
  .then(json => { updateBestSellers(json); })
  .catch(error => {
    console.log('NYT API Error: Defaulting to nytimes archival data.', error);
    updateBestSellers(nytimesArchive);
  });

function updateBestSellers(nytimesBestSellers) {
  nytimesBestSellers.results.forEach(function(book) {
    var isbn = book.isbns[0].isbn10;
    var bookInfo = book.book_details[0];
    var lastWeekRank = book.rank_last_week || 'n/a';
    var weeksOnList = book.weeks_on_list || 'New this week!';
    var listing =
    	'<table class="table table-striped">'+
    	'<tr>'+
    	'<div class="div_entry">'+
        '<td id="' + book.rank + '" class="entry">' + 
          '<p>' + 
          '<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/387928/book%20placeholder.png" class="book-cover" id="cover-' 
          + book.rank + '" width="128" height="187">' + 
          '</p>' + 
          '<h2 class="btitle"><a href="' + book.amazon_product_url + '" target="_blank">.' + bookInfo.title + '.</a></h2>' +
          '<h4 class="author">' + bookInfo.author + '.</h4>' +
          '<h4 class="publisher">' + bookInfo.publisher + '.</h4>' +
          '<p class="bdescription">' + bookInfo.description + '</p>' + 
          '<div class="stats">' +
            '<hr>' + 
            '<p>Last Week: ' + lastWeekRank + '</p>' + 
            '<p>Weeks on list: ' + weeksOnList + '</p>' +
          '</div>' +
        '</td>'+
        '</div>'+
        '</tr>'+
        '</table>';

    $('#best-seller-titles').append(listing);
    $('#' + book.rank).attr('nyt-rank', book.rank);

    updateCover(book.rank, isbn);
  });
}

function updateCover(id, isbn) {
  fetch('https://www.googleapis.com/books/v1/volumes?q=isbn:' + isbn + "&key=AIzaSyAyINR2SYnt4K-0x6zh6S3x6NVUY15pY7Q", {
    method: 'get'
  })
  .then(response => { return response.json(); })
  .then(data => {
    var img = data.items[0].volumeInfo.imageLinks.thumbnail;
    img = img.replace(/^http:\/\//i, 'https://');
    $('#cover-' + id).attr('src', img);
  })
  .catch(error => {
    console.log(error); */
    // console.log('Googel API Error: Defaulting to archival images for book #' + id + ' ISBN: ' + isbn);
    // var index = id - 1;
    // var img = archivedImages[index];
    // $('#cover-' + id).attr('src', img);
      
/*   });
} */
		
/* var sourcetxt = document.getElementsByClassName("btitle");  */// 가정: 실행순서2

/* extracted = sourcetxt[0].textContent;  */// 가정: 실행순서1  --> 에러: 순서2 내용이 undefined남.
/* alert(extracted); */     // 결론: 순서 조정 없이는 못 가져옴... 아예 ajax로 세팅해보거나 다른 방법 강구.
 
 
							//e: NYT API
							
//s: PPG API 관련						
/* var entries = document.getElementsByClassName("entry");
 */

/* 	for (i=0; i<entries.length; i++){
alert(entries[i].innerText);
}	  */

/* var titles = document.getElementsByClassName("btitle");
var authors = document.getElementsByClassName("author");
var publishers = document.getElementsByClassName("publisher");
var descriptions = document.getElementsByClassName("bdescription");	
var stats = document.getElementsByClassName("stats"); */

/* 	var url = "eread"; */
/* 	var testParam = entries[0].innerText; */

/* var croppedTxt = titles[0].innerText;
var testParam = croppedTxt.toLowerCase();
alert(testParam);

alert("boo!");  */// 위 extracted 부분에서 에러나서 여기까지 안내려오는듯.

/* var testParam1 = authors[0].innerText;
alert(testParam1);

var testParam2 = publishers[0].innerText;
var testParam3 = descriptions[0].innerText;
var testParam4 = stats[0].innerText; */

/* 	url += "?testParam="+testParam;
url += "&testParam1="+testParam1;
url += "&testParam2="+testParam2;
url += "&testParam3="+testParam3;
url += "&testParam4="+testParam4; */

/* 	location.href = url;			 */ 
//e: PPG API 관련
							
							
							
						});// e: $(document).ready
						
function paramCheck(p){
							alert(p);
							alert(typeof p);
							alert(  p.includes('0')    );
						}
						
	</script>
</body>
</html>