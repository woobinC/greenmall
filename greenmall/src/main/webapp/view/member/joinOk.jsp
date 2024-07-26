<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/member/font.css" />
<link rel="stylesheet" href="../../css/member/loginJoin.css" />
</head>
<body>
<div class="joinForm">
        <div class="location_wrap">
            <div class="location_cont">
                <em>
                    <a href="../display/main.wb">Home</a>> 회원가입 > 가입완료
                </em>
            </div>
        </div>
        <div class="content_box">
            <div class="member_wrap">
                <div class="member_title">
                    <h2>회원가입</h2>
                </div>
                <div class="member_cont">
                    <div class="join_ok_box">
                        <div class="join_ok_title">
                        <c:if test="${result > 0 }">
                            <p class="complete">회원가입이 <strong>완료</strong> 되었습니다.</p>
                            <p><span>${mId }</span>님의 회원가입을 축하합니다. <br> 알차고 실속있는 서비스로 찾아뵙겠습니다.</p>
                        </c:if>    
                        <c:if test="${result == 0 || result < 0 }">
                        <script type="text/javascript">
                        	alert("회원가입 실패")
                        	history.back();
                        </script>
                        </c:if>
                        </div>
                        <div class="member_btn_sec">
                            <ul>
                                <li>
                                    <button id="btn_home" onclick="location.href='/greenmall/view/display/main.wb'">홈으로</button>
                                </li>
                                <li>
                                    <button class="btn_login" onclick="location.href='/greenmall/view/member/loginForm.wb'">로그인</button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>