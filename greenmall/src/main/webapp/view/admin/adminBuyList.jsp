<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function deleteChk(){
	if(confirm("삭제 하시겠습니까?")==true){
		return true;
	}else{
		return false;
	}
}
</script>
</head>
<body>


	<!-- content -->
	<section class="notice">

		<!-- date_check_bok -->
		<div class="mypage_zone_title">
			<h3>주문 목록</h3>
		</div>

		<!-- board list area -->
		<div id="board-list">
			<div class="container">
				<table class="board-table">
					<thead>
						<tr>
							<th scope="col" class="th-num">주문번호</th>
							<th scope="col" class="th-title">회원번호</th>
							<th scope="col" class="th-kind">결제 총액</th>
							<th scope="col" class="th-price">주문 날짜</th>
							<th scope="col" class="th-sale">주문 현황</th>
							<th scope="col" class="th-sale">상품 이름</th>
							<th scope="col" class="th-date">주문 상품 개수</th>
							<th scope="col" class="th-update">수정</th>
							<th scope="col" class="th-delete">삭제</th>
						</tr>
					</thead>
					<tbody>
<c:if test="${empty list }">
	<tr><th colspan="8">데이터가 없습니다</th></tr>
</c:if>
<c:if test="${not empty list}">
	<c:forEach var="buy" items="${list}">
						<tr>
							<td>${buy.bNum}</td>
							<td>${buy.mId}</td>
							<td>${buy.totalPrice}</td>
							<td>${buy.bRdate}</td>
							<td>${buy.bSatus}</td>
							<td>${buy.bName}</td>
							<td>${buy.bCnt}</td>
							<td><a href="/greenmall/view/admin/adminBuyUpdateForm.wb?bNum=${buy.bNum}">수정</a></td>
							<td><a href="/greenmall/view/admin/adminBuyDelete.wb?bNum=${buy.bNum}" onclick="return deleteChk()">삭제</a></td>
						</tr>
	</c:forEach>
</c:if>
				</tbody>
				</table>

				<div align="center" class="blink">
					<!-- 앞에 보여줄 께 있다 -->
					<c:if test="${startPage > PAGE_PER_BLOCK }">
						<button onclick="location.href='/greenmall/view/admin/adminBuyList.wb?pageNum=${startPage-1}'">이전</button>
					</c:if>
					<c:forEach var="i" begin="${startPage}" end="${endPage}">
						<button onclick="location.href='/greenmall/view/admin/adminBuyList.wb?pageNum=${i}'">${i}</button>
					</c:forEach>
					<!-- 아직 보여줄께 남아있다 -->
					<c:if test="${endPage < totalPage }">
						<button onclick="location.href='/greenmall/view/admin/adminBuyList.wb?pageNum=${endPage+1}'">다음</button>
					</c:if>
				</div>
			</div>
		</div>

	</section>
</body>
</html>