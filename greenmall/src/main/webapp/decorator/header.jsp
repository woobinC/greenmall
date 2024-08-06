<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mId" value="${sessionScope.mId }"></c:set>
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
							<a href="/greenmall/view/display/main.wb">
								<img src="/greenmall/images/greenmall_log.png" alt="로고">
							</a>
						</div>
						<div class="top_image top_member">
							<ul>
								<c:if test="${mId == null}">
									<li>
										<a href="/greenmall/view/member/loginForm.wb">
											<i class="xi-log-in"></i>로그인
										</a>
									</li>
									<li>
										<a href="/greenmall/view/member/join.wb">
											<i class="xi-user-plus-o"></i>회원가입
										</a>
									</li>
								</c:if>
								<c:if test="${mId != null }">
									<li>
										<a href="/greenmall/view/member/logout.wb">
											<i class="xi-log-out"></i>로그아웃
										</a>
									</li>
								</c:if>
								<li>
									<a href="/greenmall/view/mypage/cartList.wb">
										<span>장바구니( <strong>0</strong> )
										</span>
									</a>
								</li>
								<li>
									<a href="/greenmall/view/mypage/tracking.wb">
										<span>주문배송</span>
									</a>
								</li>
								<li>
									<a href="/greenmall/view/mypage/mypage.wb">
										<span>마이페이지</span>
									</a>
								</li>
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
										<a href="/greenmall/view/goods/goodsList.gw?c_Num=100">곡류</a>
										<ul class="ctg">
											<li style="color: black;">
												<a href="/greenmall/view/goods/goodsList.gw?c_Num=101">쌀</a>
											</li>
											<li style="color: black;">
												<a href="/greenmall/view/goods/goodsList.gw?c_Num=102">잡곡류</a>
											</li>
										</ul>
									</li>
									<li>
										<a href="/greenmall/view/goods/goodsList.gw?c_Num=200">버섯류</a>
									</li>
									<li class="hover_ctg">
										<a href="/greenmall/view/goods/goodsList.gw?c_Num=300">과일류</a>
										<ul class="ctg">
											<li>
												<a href="/greenmall/view/goods/goodsList.gw?c_Num=301">사과</a>
											</li>
											<li>
												<a href="/greenmall/view/goods/goodsList.gw?c_Num=302">배</a>
											</li>
											<li>
												<a href="/greenmall/view/goods/goodsList.gw?c_Num=303">딸기</a>
											</li>
											<li>
												<a href="/greenmall/view/goods/goodsList.gw?c_Num=304">기타</a>
											</li>
										</ul>
									</li>
									<li class="hover_ctg">
										<a href="/greenmall/view/goods/goodsList.gw?c_Num=400">채소/나물류</a>
										<ul class="ctg">
											<li>
												<a href="/greenmall/view/goods/goodsList.gw?c_Num=401">뿌리채소</a>
											</li>
											<li>
												<a href="/greenmall/view/goods/goodsList.gw?c_Num=402">열매채소</a>
											</li>
											<li>
												<a href="/greenmall/view/goods/goodsList.gw?c_Num=403">잎줄기채소</a>
											</li>
											<li>
												<a href="/greenmall/view/goods/goodsList.gw?c_Num=404">콩류</a>
											</li>
											<li>
												<a href="/greenmall/view/goods/goodsList.gw?c_Num=405">기타채소류</a>
											</li>
										</ul>
									</li>
									<li class="hover_ctg">
										<a href="/greenmall/view/goods/goodsList.gw?c_Num=500">건강식품/기타</a>
										<ul class="ctg">
											<li>
												<a href="/greenmall/view/goods/goodsList.gw?c_Num=501">건강즙</a>
											</li>
											<li>
												<a href="/greenmall/view/goods/goodsList.gw?c_Num=502">환/분말/차</a>
											</li>
											<li>
												<a href="/greenmall/view/goods/goodsList.gw?c_Num=503">꿀</a>
											</li>
											<li>
												<a href="/greenmall/view/goods/goodsList.gw?c_Num=504">반찬류/간식류</a>
											</li>
											<li>
												<a href="/greenmall/view/goods/goodsList.gw?c_Num=505">기타</a>
											</li>
										</ul>
									</li>
									<li class="hover_ctg">
										고객센터
										<ul class="ctg">
											<li>
												<a href="#">공지사항</a>
											</li>
											<li>
												<a href="#">품질관리</a>
											</li>
											<li>
												<a href="#">이벤트 게시판</a>
											</li>
											<li>
												<a href="#">묻고답하기</a>
											</li>
											<li>
												<a href="#">이용후기</a>
											</li>
										</ul>
									</li>
								</ul>
							</div>
						</div>
						<div class="top_search">
							<form action="#">
								<input type="search" size="10"> <input type="image" src="../team project2/img/common/btn/btn_top_search.png" alt="">
							</form>
						</div>
					</div>
				</div>
			</header>
		</div>

	</div>

</body>
</html>