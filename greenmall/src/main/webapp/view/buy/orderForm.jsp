<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="/greenmall/css/buy/order.css">
<link rel="stylesheet" href="/greenmall/css/mypage/cartList.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- CDN 방식 사용 -->
<script>
	function execDaumPostcode() {
		new daum.Postcode({
			oncomplete : function(data) {
				// 팝업을 통한 검색 결과 항목 클릭 시 실행
				var addr = ''; // 주소_결과값이 없을 경우 공백 
				var extraAddr = ''; // 참고항목

				//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
				if (data.userSelectedType === 'R') { // 도로명 주소를 선택
					addr = data.roadAddress;
				} else { // 지번 주소를 선택
					addr = data.jibunAddress;
				}

				if (data.userSelectedType === 'R') {
					if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
						extraAddr += data.bname;
					}
					if (data.buildingName !== '' && data.apartment === 'Y') {
						extraAddr += (extraAddr !== '' ? ', '
								+ data.buildingName : data.buildingName);
					}
					if (extraAddr !== '') {
						extraAddr = ' (' + extraAddr + ')';
					}
				} else {
					document.getElementById("bAddr").value = '';
				}

				// 선택된 우편번호와 주소 정보를 input 박스에 넣는다.
				document.getElementById('bPostCode').value = data.zonecode;
				document.getElementById("bAddr").value = addr;
				document.getElementById("bAddr").value += extraAddr;
				document.getElementById("bAddrDe").focus(); // 우편번호 + 주소 입력이 완료되었음으로 상세주소로 포커스 이동
			}
		}).open();
	}
</script>
</head>

<body>
	<div class="cart_wrap">
		<div class="sub_content">

			<div class="content_box">
				<div class="order_title">
					<h2>주문서작성/결제</h2>
					<ol>
						<li><span>01</span>장바구니<span><img
								src="/greenmall/images/icon_join_step_off.png" alt=""></span></li>
						<li class="page_on"><span>02</span>주문서작성/결제<span><img
								src="/greenmall/images/icon_join_step_on.png" alt=""></span></li>
						<li><span>03</span>주문완료</li>
					</ol>
				</div>
				<div class="cart_content">
					<form action="/greenmall/view/buy/order.wb" name="frmCart">
						<input type="hidden" name="totalBuyPrice" value="${totalGoodsCnt * totalGoodsPrice}">
						<input type="hidden" name="bCnt" value="${totalGoodsCnt}">
						<div class="cart_cont_list">
							<div class="order_table_type">
								<table>
									<colgroup>
										<col>
										<col style="width: 5%">
										<col style="width: 10%">
										<col style="width: 13%">
										<col style="width: 10%">
										<col style="width: 10%">
									</colgroup>
									<thead>
										<tr>
											<th>상품/옵션 정보</th>
											<th>수량</th>
											<th>상품금액</th>
											<th>할인/적립</th>
											<th>합계금액</th>
											<th>배송비</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="basket" items="${list}">
											<tr>
												<td class="td_left"><div class="pick_add_cont">
														<span class="pick_add_img"> <a href="#"><img
																src="/greenmall/images/${basket.pImg1}" width="40"
																class="middle"></a>
														</span>
														<div class="pick_add_info">
															<em><a href="#">${basket.pName }</a></em>
														</div>
													</div></td>
												<td class="td_order_amount">
													<div class="order_goods_num">
														<strong>${basket.cCnt }개</strong>
													</div>
												</td>
												<td><strong class="order_sum_txt price">${basket.cPrice }원</strong>
												</td>
												<td class="td_benefit">
													<ul class="benefit_list">
														<li class="benefit_mileage"><em>적립</em> <span>상품
																<strong>+${basket.cCnt * basket.cPrice * 0.05 }원</strong>
														</span>
													</ul>
												</td>
												<td><strong class="order_sum_txt">${basket.cCnt * basket.cPrice }원</strong>
												</td>
												<td class="td_delivery">배송비무료</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>

						<div class="btn_left_box">
							<a href="#" class="shop_go_link"><em>< 장바구니 가기</em></a>
						</div>
						<div class="price_sum">
							<div class="price_sum_content">
								<div class="price_sum_list">
									<dl>
										<dt>
											총<strong id="totalGoodsCnt">${totalGoodsCnt }</strong>개의 상품금액
										</dt>
										<dd>
											<strong id="totalGoodsPrice">${totalGoodsCnt * totalGoodsPrice }</strong>원
										</dd>
									</dl>
									<span><img
										src="/greenmall/images/member/order_price_plus.png" alt="">
									</span>
									<dl>
										<dt>배송비</dt>
										<dd>
											<strong id="totalDeliveryCharge">0</strong>원
										</dd>
									</dl>
									<span><img
										src="/greenmall/images/member/order_price_total.png" alt=""></span>
									<dl class="price_total">
										<dt>합계</dt>
										<dd>
											<strong id="totalSettlePrice">${totalGoodsCnt * totalGoodsPrice}</strong>원
										</dd>
									</dl>
								</div>
								<em class="tobe_mileage"> 적립예정 마일리지 : <span
									id="totalGoodsMileage">${totalGoodsCnt * totalGoodsPrice * 0.05 }</span>원
								</em>
							</div>
						</div>

						<input type="hidden" name="simpleJoin">
						<div class="order_view_info">
							<div class="order_info">
								<div class="order_zone_tit">
									<h4>주문자 정보</h4>
								</div>
								<div class="order_table_type">
									<table class="table_left">
										<colgroup>
											<col style="width: 15%">
											<col style="width: 85%">
										</colgroup>
										<tbody>
											<tr>
												<th scope="row"><span class="important">주문하시는 분</span></th>
												<td><input type="text" name="mName" id="mName"
													value="${member.mName }" data-pattern="gdEngKor"
													maxlength="20"></td>
											</tr>
											<tr>
												<th scope="row"><span class="important">휴대폰 번호</span></th>
												<td><input type="text" id="mTel" name="mTel"
													value="${member.mTel }" maxlength="20"></td>
											</tr>
											<tr>
												<th scope="row"><span class="important">이메일</span></th>
												<td class="member_email"><input type="text"
													name="mEmail" value="${member.mEmail }"></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div class="delivery_info">
								<div class="order_zone_tit">
									<h4>배송정보</h4>
								</div>
								<div class="order_table_type shipping_info">
									<table class="table_left shipping_info_table">
										<colgroup>
											<col style="width: 15%;">
											<col style="width: 85%;">
										</colgroup>
										<tbody>
											<tr>
												<th scope="row"><span class="important">받으실분</span></th>
												<td><input type="text" name="bName"
													data-pattern="gdEngKor" maxlength="20"></td>
											</tr>
											<tr>
												<th scope="row"><span class="important">받으실 곳</span></th>
												<td class="member_address">
													<div class="address_postcode">
														<input type="text" name="bPostCode" id="bPostCode" readonly="readonly">
														<button type="button" class="btn_post_search" id="btnPostCode"
															onclick="execDaumPostcode()">우편번호검색</button>
													</div>
													<div class="address_input">
														<input type="text" name="bAddr" id="bAddr" readonly="readonly">
														<input type="text" name="bAddrDe" id="bAddrDe">
													</div>
												</td>
											</tr>
											<tr>
												<th scope="row"><span class="important">휴대폰 번호</span></th>
												<td><input type="text" id="receiverCellPhone"
													name="bTel"></td>
											</tr>
											<tr>
												<th scope="row">요청사항</th>
												<td class="td_last_say"><input type="text"
													name="bRequest" value="없음"></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<input type="hidden" name="addFieldConf" value="y">
							<div class="addition_info"></div>
							<div class="payment_info">
								<div class="order_zone_tit">
									<h4>결제정보</h4>
								</div>
								<div class="order_table_type">
									<table class="table_left">
										<colgroup>
											<col style="width: 15%;">
											<col style="width: 85%;">
										</colgroup>
										<tbody>
											<tr>
												<th scope="row">상품 합계 금액</th>
												<td><strong id="totalGoodsPrice"
													class="order_payment_sum">${totalGoodsCnt * totalGoodsPrice}</strong>원
												</td>
											</tr>
											<tr>
												<th scope="row">배송비</th>
												<td><span id="totalDeliveryCharge">0</span>원 <span
													class="multi_shipping_text"></span></td>
											</tr>
											<tr id="rowDeliveryInsuranceFee" class="dn">
												<th scope="row">해외배송 보험료</th>
												<td><span id="rowDeliveryInsuranceFee">0</span>원 <input
													type="hidden" name="rowDeliveryInsuranceFee" value="0">
												</td>
											</tr>
											<tr id="rowDeliverAreaCharge" class="dn">
												<th scope="row">지역별 배송비</th>
												<td><span id="deliveryAreaCharge">0</span>원 <input
													type="hidden" name="totalDeliveryCharge" value="0">
													<input type="hidden" name="deliveryAreaCharge" value="0"></td>
											</tr>
											<tr>
												<th scope="row">쿠폰 사용</th>
												<td>쿠폰이 없습니다</td>
											</tr>
											<tr>
												<th scope="row">최종 결제 금액</th>
												<td><Strong id="totalSettlePrice"
													class="order_payxment_sum">${totalGoodsCnt * totalGoodsPrice}</Strong>원
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div class="payment_final">
								<div class="payment_final_total">
									<dl>
										<dt>최종 결제 금액</dt>
										<dd>
											<span> <strong id="totalSettlePriceView">${totalGoodsCnt * totalGoodsPrice}</strong>원
											</span>
										</dd>
									</dl>
								</div>
								<div class="payment_final_check">
									<div class="form_element">
										<input type="checkbox" id="termAgree_orderCheck"
											class="require"> <label for="termAgree_orderCheck"
											class="check_s"> <em> <b>(필수)</b> 구매하실 상품의 결제정보를
												확인하였으며, 구매진행에 동의합니다.
										</em>
										</label>
									</div>
								</div>
								<div class="btn_center_box">
									<button type="submit" class="btn_order_buy order-buy">
										<em>결제하기</em>
									</button>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>

</html>