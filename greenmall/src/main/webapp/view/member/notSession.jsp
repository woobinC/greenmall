<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="mId" value="${sessionScope.mId }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${empty mId }">
	<script type="text/javascript">
		alert("로그인이 필요합니다")
		location.href="/greenmall/view/member/loginForm.wb"
	</script>
</c:if>
</body>
</html>