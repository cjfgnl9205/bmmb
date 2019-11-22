<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><tiles:getAsString name="title"/></title> 
</head>
<body>
<tiles:insertAttribute name="header"/>
<div class="container">
	<tiles:insertAttribute name="body"/>
</div>
<tiles:insertAttribute name="footer"/> 
</body>
</html>
