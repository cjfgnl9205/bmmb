<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>eBook 목록</title>
<style>
.ebook_list {
	padding: 20px 0 0 0;
}

tr td a {
	color: black;
}

.cntr {
	margin: 0 auto;
}
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
	<div class="ebook_list">
		<h2 style="padding-bottom: 20px;">eBook</h2>
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
									<td><img
										src="${pageContext.request.contextPath}/images/booksample.jpg"
										width="178" height="264" /></td>
															
									<c:if test="${status.count % 5 == 0}">
											</tr>
											
															<c:choose>
																<c:when test="${status.count < 6}">
																<tr class="namebox"></tr>
																</c:when>
																<c:otherwise><tr class="namebox2"></tr>
																</c:otherwise>
															</c:choose>
														
											<tr>
										</c:if>

					</c:forEach>
					</tr>
					

					</c:otherwise>
					</c:choose>
					
												
													
				</tbody>
			</table>
			
		
	<div class="temp_console"></div>
	</div>
	
<script type="text/javascript">
$(document).ready(function(){	
	 var namebox = $(".namebox");
	 var namebox2 = $(".namebox2");
	var temp_console = $(".temp_console");
	 
	var str;
	var str2;
	
	var list = new Array();
	
	<c:forEach items="${list}" var="dto">
		var json = new Object();
		json.name = "${dto.name}";
		json.ebook_ID = "${dto.ebook_ID}";
		list.push(json);
	</c:forEach>
	
	alert("JSON객체="+JSON.stringify(list));
	
	for (var i = 0; i < 5; i++) {	  		  
 		  str += "<td><a href='#'>" +list[i].name+"</a></td>";
 		  namebox.html(str);
	  } 

for (var v = 5, len = list.length; v < len; v++) {	  
		 str2 += "<td><a href='#'>"+list[v].name+"</a></td>";
 		  namebox2.html(str2); 
	  } 
	
	
});// e: $(document).ready  

</script>	
</body>
</html>