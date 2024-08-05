<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <header>
    <div id="wrap">
      <div class="logo">
        <a href="/greenmall/view/admin/adminMain.wb">
          <img src="/greenmall/images/greenmall.png" alt="">
        </a>
      </div>
      <div>
        <div class="admin-log" style="display: block;">
        <c:if test="${adminId == null}">
          <a href="/greenmall/view/admin/adminLoginForm.wb">로그인</a>
        </c:if>
        <c:if test="${adminId != null}">
          <a href="/greenmall/view/admin/adminLogout.wb">로그아웃</a>
        </c:if>
          <a href="/greenmall/view/display/main.wb">홈페이지</a>
        </div>
        <div class="admin-menu">
        <c:if test="${adminId != null}">
          <a href="/greenmall/view/admin/adminBuyList.wb">주문 관리</a>
          <a href="/greenmall/view/admin/adminGoodsList.wb">상품 관리</a>
          <a href="/greenmall/view/admin/adminMemberList.wb">고객 관리</a>
          <a href="#">게시판 관리</a>
        </c:if>
        </div>
      </div>
    </div>
  </header>
</body>
</html>