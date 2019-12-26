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
	
	function randPop(n){

		/* alert(shuffleRandom(n));*/
	
		var shuffleRet = shuffleRandom(n); 
		/* alert(shuffleRet);
		alert(shuffleRet[0]);
		alert(shuffleRet[1]);
		alert(shuffleRet[2]);
		alert(shuffleRet[3]);
		alert(shuffleRet[4]); */
		
		var vlist = new Array();

		<c:forEach items="${list}" var="dto">
			var vjson = new Object();
			vjson.ebook_ID = "${dto.name}";
			vlist.push(vjson);  
		</c:forEach>

		/* alert(vlist[shuffleRet[0]]);
		alert(vlist[shuffleRet[1]]);
		alert(vlist[shuffleRet[2]]);
		alert(vlist[shuffleRet[3]]);
		alert(vlist[shuffleRet[4]]);
		 */
/* 		var ret0 = document.getElementById("ret0");
		var ret1 = document.getElementById("ret1");
		var ret2 = document.getElementById("ret2");
		var ret3 = document.getElementById("ret3");
		var ret4 = document.getElementById("ret4"); */
		   
		/* ret0.innerHTML =   Object.values(JSON.stringify(vlist[shuffleRet[0]]));
		 *//* {,",e,b,o,o,k,_,I,D,",:,",1,5,",} */
		
/* 		ret0.innerHTML =   Object.values(vlist[shuffleRet[0]]); 
		ret1.innerHTML =   Object.values(vlist[shuffleRet[1]]); 
		ret2.innerHTML =   Object.values(vlist[shuffleRet[2]]); 
		ret3.innerHTML =   Object.values(vlist[shuffleRet[3]]); 
		ret4.innerHTML =   Object.values(vlist[shuffleRet[4]]);  */
		
		// 이상 북네임 밸류들을..반복문 틀에 붙여보기. 온로딩 시에. 

	}

	
</script>
</head>
<body>

	<div class="randTest">
		[오늘의책]<br>
		<a href="javascript:randPop(5)">																	
			난수생성 														
		</a>
	</div>
	
	<div class="randPanel">
		<p id="ret0"></p>
		<p id="ret1"></p>
		<p id="ret2"></p>
		<p id="ret3"></p>
		<p id="ret4"></p>
	</div>

	<div class="container">
		<div class="temp_console"></div>
		<div class="temp_console2"></div>
		<div class="temp_console3">${list}</div>

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
			
            <div class="section zero"> <!-- s:  도서 섹션0 -->
                
					<h3><a href="#">랜덤pick</a></h3>
					<div class="row"
						style="background-color: white; text-align: center">
						<table class="cntr" width="500" border="0" cellspacing="10"
							cellpadding="5">
							<tbody>
								<tr class="rand_tr">							
									<td class="rand_td">
                                        <div class="rnamebox">rand1</div>
                                    </td> 
                                    <td class="rand_td">
                                        <div class="rnamebox">rand2</div>
                                    </td> 
                                    <td class="rand_td">
                                        <div class="rnamebox">rand3</div>
                                    </td> 
                                    <td class="rand_td">
                                        <div class="rnamebox">rand4</div>
                                    </td> 
                                    <td class="rand_td">
                                        <div class="rnamebox">rand5</div>
                                    </td>     
	                 				<td class="rand_td">
                                        <div class="rnamebox">rand6</div>
                                    </td> 
                                    <td class="rand_td">
                                        <div class="rnamebox">rand7</div>
                                    </td> 
                                    <td class="rand_td">
                                        <div class="rnamebox">rand8</div>
                                    </td> 
                                    <td class="rand_td">
                                        <div class="rnamebox">rand9</div>
                                    </td> 
                                    <td class="rand_td">
                                        <div class="rnamebox">rand10</div>
                                    </td>         
                                    
								</tr>
								
							</tbody>
						</table>
					</div>
				
		</div> <!-- e: 도서섹션 0 -->

			
			
			<div class="section first"> <!-- s:  도서 섹션1 -->
			<c:choose>
				<c:when test="${empty kmid}">
					<h3><a href="#">오늘의책</a></h3>
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
													<c:when test="${status.count % 5 == 0}">
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
																		</div>  
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
		</div> <!-- e: 도서섹션 1 -->
		
		
		<br><br><br><br>
		
		<div class="section second"> <!-- s:  도서 섹션2 -->
			<c:choose>
				<c:when test="${empty kmid}">
					<h3><a href="#">신간도서</a></h3>
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
													<c:when test="${status.count % 5 == 0}">
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
													<c:when test="${status.count % 5 == 0}">
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
							
							
						var shuffleRet = shuffleRandom(10);   // 온로딩으로 할때는 n=5로 대입해야 함!		
						
						var vlist = new Array();

						
						<c:forEach items="${list}" var="dto">
								var vjson = new Object();
								vjson.name = "${dto.name}";
								vlist.push(vjson);  
						</c:forEach>
						

					   // 포문화
					   					   
					   var rnamebox = document.getElementsByClassName("rnamebox");
					   
					   
					   for(i=0; i<rnamebox.length; i++){
						  alert(Object.values(vlist[shuffleRet[i]]));
						  rnamebox[i].innerHTML = Object.values(vlist[shuffleRet[i]]);
					   }
					   					   
/*                       var  str001 = Object.values(vlist[shuffleRet[0]]);
                      var namebox001 = document.getElementById("namebox001");
                      namebox001.innerHTML =  str001; */
							 
					// e: 섹션0 테스트
					
					
					
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

							
							
						});// e: $(document).ready
						
function paramCheck(p){
							alert(p);
							alert(typeof p);
							alert(  p.includes('0')    );
						}
	</script>
</body>
</html>