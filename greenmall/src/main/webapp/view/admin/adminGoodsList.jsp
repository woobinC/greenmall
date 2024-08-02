<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function del(p_No) {
		let con = confirm("선택한 일반상품을 삭제하시겠습니까?");
		if (con) {
			location.href="/greenmall/view/admin/adminDelete.gw?p_No="+p_No;
		}
	}
	
</script>
</head>
<body>


	<!-- content -->
	<section class="notice">

		<!-- date_check_bok -->
		<div class="mypage_zone_title">
			<h3>상품 목록</h3>
		</div>

		<!-- board list area -->
		<div id="board-list">
			<div class="container">
				<table class="board-table">
					<thead>
						<tr>
							<th scope="col" class="th-num">번호</th>
							<th scope="col" class="th-title">상품명</th>
							<th scope="col" class="th-kind">종류</th>
							<th scope="col" class="th-price">가격</th>
							<th scope="col" class="th-sale">할인율</th>
							<th scope="col" class="th-date">등록일</th>
							<th scope="col" class="th-count">수량</th>
							<th scope="col" class="th-update">수정</th>
							<th scope="col" class="th-delete">삭제</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${empty list }">
							<tr>
								<td colspan="8">상품이 없습니다.</td>
							</tr>
						</c:if>
						<c:if test="${not empty list}">
						<c:forEach var="goods" items="${list }">
							<tr>
								<td>${goods.p_No }</td>
								<td align="center"><a href="#!">${goods.p_Name}</a></td>
								<td>${goods.c_Name }</td>
								<td>${goods.p_Price }</td>
								<td>${goods.p_Sale }</td>
								<td>${goods.p_Date }</td>
								<td>${goods.p_Cnt }</td>
								<td><a href="/greenmall/view/admin/adminUpdateForm.gw?p_No=${goods.p_No }"> <input type="button"
										class="btn update" value="수정"></a></td>
								<td><a onclick="del(${goods.p_No})"> <input
										type="button" class="btn del" value="삭제"></a></td>
							</tr>

						</c:forEach>
						</c:if>
					</tbody>
				</table>

				<div align="center">
					<!-- 앞에 보여줄게 남아있어 -->
					<c:if test="${startPage > PAGE_PER_BLOCK }">
						<button class="pageBtn"
							onclick="location.href='adminGoodsList.wb?pageNum=1'">
							<img alt="" src="">
						</button>
						<button class="pageBtn"
							onclick="location.href='adminGoodsList.wb?pageNum=${startPage - 1}'">
							<img alt="" src="">
						</button>
					</c:if>
					<c:forEach var="i" begin="${startPage }" end="${endPage }">
						<button class="pageBtn"
							onclick="location.href='adminGoodsList.wb?pageNum=${i}'">${i }</button>
					</c:forEach>
					<!-- 아직 보여줄게 남아있다 -->
					<c:if test="${endPage < totalPage }">
						<button class="pageBtn"
							onclick="location.href='adminGoodsList.wb?pageNum=${endPage + 1}'">
							<img alt="" src="">
						</button>
						<button class="pageBtn"
							onclick="location.href='adminGoodsList.wb?pageNum=${totalPage}'">
							<img alt="" src="">
						</button>
					</c:if>
					<!--  					<ul>
						<li><a href="#"><span>1</span></a></li>
						<li><a href="#"><span>2</span></a></li>
						<li><a href="#"><span>3</span></a></li>
						<li><a href="#"><span>4</span></a></li>
					</ul>
				</div> -->
					<div class="add_goods">
						<button class="add_goods_btn"
							onclick="location.href='/greenmall/view/admin/adminGoodsAddForm.wb'">상품
							추가</button>
					</div><br>
				</div>
			</div>
	</section>
</body>
</html>