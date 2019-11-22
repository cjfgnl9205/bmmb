<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><tiles:getAsString name="title"/></title> 
<style>
	.body_wrap { display : flex; flex-direction : row;}
	.left_body { width : 20%;}
	.right_body { width : 80%;}
</style>
</head>
<body>
<tiles:insertAttribute name="header"/>
<div class="container">
	<div class="body_wrap" >
		<div class="left_body">
			<tiles:insertAttribute name="side"/>
		</div>
		<div  class="right_body">
			<tiles:insertAttribute name="body"/>
		</div>
	</div> 
</div>
<tiles:insertAttribute name="footer"/> 

 
 
 

 
 
</body>
</html>
