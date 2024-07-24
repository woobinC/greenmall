<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="deco" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8"><title>그린몰</title>
<style type="text/css">
@import url("/greenmall/css/display/main.css");
@import url("/greenmall/css/index.css");
</style>
<deco:head></deco:head>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<deco:body></deco:body>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>