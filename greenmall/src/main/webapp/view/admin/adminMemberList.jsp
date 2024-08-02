<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<!-- content -->
	<section class="notice">

		<!-- date_check_bok -->
		<div class="mypage_zone_title">
			<h3>회원 목록</h3>
		</div>

		<!-- board list area -->
		<div id="board-list">
			<div class="container">
				<table class="board-table">
					<thead>
						<tr>
							<th scope="col" class="th-num">아이디</th>
							<th scope="col" class="th-title">이름</th>
							<th scope="col" class="th-kind">이메일</th>
							<th scope="col" class="th-price">전화번호</th>
							<th scope="col" class="th-sale">우편번호/주소</th>
							<th scope="col" class="th-date">상세주소</th>
							<th scope="col" class="th-count">마일리지</th>
							<th scope="col" class="th-update">탈퇴여부</th>
							<th scope="col" class="th-delete">등록일</th>
							<th scope="col" class="th-delete">삭제</th>
						</tr>
					</thead>
					<tbody>
<c:if test="${empty list }">
	<tr><th colspan="9">데이터가 없습니다</th></tr>
</c:if>
<c:if test="${not empty list}">
	<c:forEach var="member" items="${list}">
						<tr>
							<td>${member.mId}</td>
							<td>${member.mName}</td>
							<td>${member.mEmail}</td>
							<td>${member.mTel}</td>
							<td>${member.mPostCode} / ${member.mAddr}</td>
							<td>${member.mAddrDe}</td>
							<td>${member.mileage}</td>
							<td>${member.mDel}</td>
							<td>${member.mRdate}</td>
							<td><a href="/greenmall/view/admin/adminMemberDelete.wb?mId=${member.mId}">삭제</a></td>
						</tr>
	</c:forEach>
</c:if>
				</tbody>
				</table>

				<div align="center" class="blink">
					<!-- 앞에 보여줄 께 있다 -->
					<c:if test="${startPage > PAGE_PER_BLOCK }">
						<button onclick="location.href='/greenmall/view/admin/adminMemberList.wb?pageNum=${startPage-1}'">이전</button>
					</c:if>
					<c:forEach var="i" begin="${startPage}" end="${endPage}">
						<button onclick="location.href='/greenmall/view/admin/adminMemberList.wb?pageNum=${i}'">${i}</button>
					</c:forEach>
					<!-- 아직 보여줄께 남아있다 -->
					<c:if test="${endPage < totalPage }">
						<button onclick="location.href='/greenmall/view/admin/adminMemberList.wb?pageNum=${endPage+1}'">다음</button>
					</c:if>
				</div>
			</div>
		</div>

	</section>
</body>
</html>