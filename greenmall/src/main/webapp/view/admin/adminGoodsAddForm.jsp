<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url("/greenmall/css/index.css");

@import url("/greenmall/css/mypage/mypage.css");

@import url("/greenmall/css/mypage/drawal.css");

@import url("/greenmall/css/mypage/addressForm.css");
</style>
</head>
<body>
	<div class="content">
		<div class="mypage_cont">
			<div class="my_page">
				<div class="join_base_wrap">
					<div class="member_cont">
						<form action="adminGoodsInsert.gw" method="post" enctype="multipart/form-data">
							<div class="base_info_box">
								<h3>상품추가</h3>
								<div class="base_info_sec">
									<table>
										<colgroup>
											<col width="25%">
											<col width="75%">
										</colgroup>
										<tbody>
											<tr>
												<th>상품명</th>
												<td><input type="text" name="pName" required="required"
													autofocus="autofocus"></td>
											</tr>
											<tr>
												<th>카테고리</th>
												<td><select name="cNum">
													<c:forEach var="category" items="${categoryList}">
															<option value="${category.cnum }">${category.cname }(${category.cnum })</option>
													</c:forEach>
											</select></td>
											</tr>
											<tr>
												<th>가격</th>
												<td><input type="number" name="pPrice"
													required="required"> 원</td>
											</tr>
											<tr>
												<th>할인율</th>
												<td><input type="number" name="pSale"
													required="required"> %</td>
											</tr>
											<tr>
												<th>수량</th>
												<td><input type="number" name="pCnt"
													required="required"> 개</td>
											</tr>
											<tr>
												<th>이미지1</th>
												<td><input type="file" name="pImg1" required="required"></td>
											</tr>
											<tr>
												<th>이미지2</th>
												<td><input type="file" name="pImg2" required="required"></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>

							<div class="btn_center_box">
								<button type="button" class="btn_member_cancel"
									onclick="location.href='/greenmall/view/admin/adminGoodsList'">취소</button>
								<input type="submit" value="상품 추가"
									class="btn_comfirm js_btn_join">
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>