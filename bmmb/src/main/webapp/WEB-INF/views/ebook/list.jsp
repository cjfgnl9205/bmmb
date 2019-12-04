<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="root" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>eBook 목록</title>
<style>

/* s: 사이드바 */ 
.side_bar:first-child{

}

/* e: 사이드바 */ 

.row{

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

.box_main_best .section.first h3 {
    margin-left: 50px;

}

.box_main_best h3 {
    float: left;
    margin: 0 0 40px 0px;
}

h3 a{
margin: 0 0 20px 0px;
padding: 10px;
}

h3 {
    display: block;
    font-size: 1.17em;
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
</script>
</head>
<body>
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

<div class="box_main_best" id="newBook"><!-- s:  도서 섹션 -->
	<br><br>
			<div class="section first"><!-- s: section1 -->
				<h3 class="section_head" ><a href="#">신간</a></h3>
		<br>
			
<!-- s: **섹션1 북데이터** -->
		<div class="row" style="background-color: white; text-align: center">
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
										<c:forEach var="dto" items="${list}" varStatus="status">		
											<c:choose>
														<c:when test="${status.count % 5 == 0}">
																<td class="imgpanel">
																<a href="javascript:read('${dto.ebook_ID}')">
																<img
																	src="${pageContext.request.contextPath}/ebook_storage/${dto.image}"
																	width="178" height="264" />
																	</a>
																	<div class="midbox">${dto.midclass}</div>
																	</td>
																		</tr>
																		<c:choose>
																					<c:when test="${status.count > 5}">
																						<!-- 순회5번 초과 -->
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
																<img
																		src="${pageContext.request.contextPath}/ebook_storage/${dto.image}"
																		width="178" height="264" />
																<div class="midbox">${dto.midclass}</div>		
																</td>	
																</a>	
															</c:otherwise>										
											</c:choose>																		
										</c:forEach>
							  	</tr> 				  
					</c:otherwise>
					</c:choose>										
				</tbody>
			</table>
			</div><!-- e: 섹션1 북데이터 -->					
		</div><!-- e:  섹션1 -->
		
	<br><br>
			<div class="section first"><!-- s: section1 -->
				<h3 class="section_head" ><a href="#">이벤트</a></h3>
		<br>		
	<!-- s: **섹션2 북데이터** -->
		<div class="row" style="background-color: white; text-align: center">
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
										<c:forEach var="dto" items="${list}" varStatus="status">		
											<c:choose>
														   <c:when test="${status.count % 5 == 0}">
																		<td class="imgpanel">
																		<a href="javascript:read('${dto.ebook_ID}')">
																		<img
																			src="${pageContext.request.contextPath}/ebook_storage/${dto.image}"
																			width="178" height="264" />
																			</a>
																			<div class="midbox">${dto.midclass}</div>
																			</td>	
																																										
																		</tr>									
																		<c:choose>
																				<c:when test="${status.count > 5}">	<!-- 순회5번 초과 -->
																					<tr class="namebox2"></tr>
																				</c:when>
																				<c:otherwise><!-- 순회5번 이하 -->		
																						<tr class="namebox"></tr>													
																				</c:otherwise>	
																		</c:choose>
																		<tr>																						
													    	</c:when>										
															<c:otherwise>
																<td class="imgpanel">
																<a href="javascript:read('${dto.ebook_ID}')">
																<img
																		src="${pageContext.request.contextPath}/ebook_storage/${dto.image}"
																		width="178" height="264" />
																</a>
																<div class="midbox"><a href="javascript:pickmid2('${dto.midclass}')">${dto.midclass}</div>
																</td>		
															</c:otherwise>										
											</c:choose>																		
										</c:forEach>											
							  	</tr> 				  
					</c:otherwise>
					</c:choose>										
				</tbody>
			</table>
			</div><!-- e: 섹션2 북데이터 -->					
		</div><!-- e:  섹션2 -->	
		

	</div><!-- e:  도서 섹션 -->

	</div>

<table>
<tr class="midtr"></tr>
</table>

<!-- <script type="text/javascript">
function pickmid2(f){
	
	alert(f);
	var midlist = new Array();
	var midtr = $(".midtr");

	if(f=='05'){
				for (var i = 0; i < 5; i++) {	  		  		  
					  strx = "<td class='txtpanel'>this is test</td>";
					  var jsonx = new Object();
					  jsonx.entry = strx;
					  midlist.push(jsonx);
					  midtr.html(JSON.stringify(midlist));	
				} 
	}

}
</script> -->

<script type="text/javascript">
$(document).ready(function(){	
	 var namebox = $(".namebox");
	 var namebox2 = $(".namebox2");
	var temp_console = $(".temp_console");
	var temp_console2 = $(".temp_console2");
	var fromlistbox = $(".fromlistbox"); 
	
	
	var str;
	var str3;
	
	var list = new Array();
	
	<c:forEach items="${list}" var="dto">
		var json = new Object();
		json.name = "${dto.name}";
		json.ebook_ID = "${dto.ebook_ID}";
		list.push(json);
	</c:forEach>
	
/* 	 alert("JSON객체="+JSON.stringify(list));
	 alert(list[0].ebook_ID); */

var list2 = new Array();	 
var list3 = new Array();


for (var i = 0; i < 5; i++) {	  		  		  
 		  str = "<td class='txtpanel'><a href='javascript:read("+list[i].ebook_ID+")'>"+list[i].name+"</a></td>";
 		  var json2 = new Object();
 		  json2.entry = str;
 		  list2.push(json2);
/*  		  temp_console.html(JSON.stringify(list2)); */
		  namebox.html(JSON.stringify(list2));	
	  }  

for (var i = 5; i < 10; i++) {	  		  		  
	  str = "<td class='txtpanel'><a href='javascript:read("+list[i].ebook_ID+")'>"+list[i].name+"</a></td>";
	  var json3 = new Object();
	  json3.entry = str;
	  list3.push(json3);
/* 	  temp_console2.html(JSON.stringify(list3)); */
	  namebox2.html(JSON.stringify(list3));	
}  

/* 필터링에 사용 고려 */
var tdcontainer = document.getElementsByClassName("nametd");

for (i=0; i<tdcontainer.length; i++){
	tdcontainer[i].addEventListener('click', function(){
		var no = $(this).html();
		temp_console.html(no);
	});
}





});// e: $(document).ready  

</script>	
</body>
</html>