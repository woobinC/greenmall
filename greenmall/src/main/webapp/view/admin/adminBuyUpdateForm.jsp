<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.bNum, .mId{
		margin-right: 10px;
		width: 100px
	}
	input{
		text-align: center;
	}
</style>
</head>
<body>


	<!-- content -->
	<section class="notice">

		<!-- date_check_bok -->
		<div class="mypage_zone_title">
			<h3>주문 목록</h3>
		</div>
<form action="/greenmall/view/admin/adminBuyUpdate.wb" method="post">
		<!-- board list area -->
		<div id="board-list">
			<div class="container">
				<table class="board-table">
					<thead>
						<tr>
							<th scope="col" class="th-num">주문번호</th>
							<th scope="col" class="th-num">회원번호</th>
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
						<tr>
							<td><input type="text" name="bNum" value="${buy.bNum}" readonly="readonly" class="bNum"></td>
							<td><input type="text" name="mId" value="${buy.mId}" readonly="readonly" class="mId"></td>
							<td><input type="number" name="totalPrice" value="${buy.totalPrice}" required="required"></td>
							<td><input type="date" name="bRdate" value="${buy.bRdate}" required="required" readonly="readonly"></td>
							<td><input type="text" name="bSatus" value="${buy.bSatus}" required="required"></td>
							<td><input type="text" name="bName" value="${buy.bName}" required="required"></td>
							<td><input type="number" name="bCnt" value="${buy.bCnt}" required="required"></td>
							<td><button type="submit" value="확인">확인</button></td>
							<td><a href="/greenmall/view/admin/adminBuyDelete.wb?bNum=${buy.bNum}">삭제</a></td>
						</tr>
				</tbody>
				</table>

			</div>
		</div>
</form>
	</section>
</body>
</html>