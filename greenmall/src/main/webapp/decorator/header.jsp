<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="mId" value="${sessionScope.id }"></c:set>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <div id="header_wrap">
        <div id="header">
            <header>
                <div class="header_div">
                    <div class="top_bar">
                        <div class="top_image top_logo">
                            <a href="#"><img
                                    src="/greenmall/images/greenmall_log.png"
                                    alt="로고"></a>
                        </div>
                        <div class="top_image top_member">
                            <ul>
                            <c:if test="${empty mId }">
                                <li><a href="../member/loginForm.wb"><i class="xi-log-in"></i>로그인</a></li>
                                <li><a href="../member/join.wb"><i class="xi-user-plus-o"></i>회원가입</a></li>
                                <li style="display: none"><a href="#"><i class="xi-log-out"></i>로그아웃</a></li>
                            </c:if>
                            <c:if test="${not empty mId }">
 								<li style="display: none"><a href="../member/loginForm.wb"><i class="xi-log-in"></i>로그인</a></li>
                                <li style="display: none"><a href="../member/join.wb"><i class="xi-user-plus-o"></i>회원가입</a></li>
                                <li><a href="#"><i class="xi-log-out"></i>로그아웃</a></li>                           
                            </c:if>
                                <li><a href="/greenmall/view/mypage/cartList.wb"><span>장바구니(
                                            <strong>0</strong> )
                                        </span></a></li>
                                <li><a href="/greenmall/view/mypage/tracking.wb"><span>주문배송</span></a></li>
                                <li><a href="/greenmall/view/mypage/mypage.wb"><span>마이페이지</span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="header_div">
                    <div class="top_category">
                        <div class="category">
                            <div class="menubox">
                                <ul class="menu">
                                    <li>익산몰 소개</li>
                                    <li class="hover_ctg">
                                        곡류
                                        <ul class="ctg" >
                                            <li style="color: black;">쌀</li>
                                            <li style="color: black;">잡곡류</li>
                                        </ul>
                                    </li>
                                    <li>
                                        버섯류
                                    </li>
                                    <li class="hover_ctg">
                                        과일류
                                        <ul class="ctg">
                                            <li>
                                                <a href="#">사과</a>
                                            </li>
                                            <li>
                                                <a href="#">배</a>
                                            </li>
                                            <li>
                                                <a href="#">딸기</a>
                                            </li>
                                            <li>
                                                <a href="#">기타</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="hover_ctg">
                                        채소/나물류
                                        <ul class="ctg">
                                            <li>
                                                <a href="#">뿌리채소</a>
                                            </li>
                                            <li>
                                                <a href="#">열매채소</a>
                                            </li>
                                            <li>
                                                <a href="#">잎줄기채소</a>
                                            </li>
                                            <li>
                                                <a href="#">콩류</a>
                                            </li>
                                            <li>
                                                <a href="#">기타채소류</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="hover_ctg">
                                        건강식품/기타
                                        <ul class="ctg">
                                            <li>
                                                <a href="#">건강즙</a>
                                            </li>
                                            <li>
                                                <a href="#">환/분말/차</a>
                                            </li>
                                            <li>
                                                <a href="#">꿀</a>
                                            </li>
                                            <li>
                                                <a href="#">반찬류/간식류</a>
                                            </li>
                                            <li>
                                                <a href="#">기타</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="hover_ctg">
                                        기획전
                                        <ul class="ctg">
                                            <li>
                                                <a href="#">금주특가</a>
                                            </li>
                                            <li>
                                                <a href="#">건강음료</a>
                                            </li>
                                            <li>
                                                <a href="#">쌀 사는 날!</a>
                                            </li>
                                            <li>
                                                <a href="#">여름과일기획전</a>
                                            </li>
                                            <li>
                                                <a href="#">두릅</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="hover_ctg">
                                        고객센터
                                        <ul class="ctg">
                                            <li><a href="#">공지사항</a></li>
                                            <li><a href="#">품질관리</a></li>
                                            <li><a href="#">이벤트 게시판</a></li>
                                            <li><a href="#">묻고답하기</a></li>
                                            <li><a href="#">이용후기</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="top_search">
                            <form action="#">
                                <input type="search" size="10">
                                <input type="image" src="../team project2/img/common/btn/btn_top_search.png" alt="">
                            </form>
                        </div>
                    </div>
                </div>
            </header>
        </div>

    </div>

</body>
</html>