<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/greenmall/css/mypage/cartList.css">
</head>
<body>
	<div class="cart_wrap">
		<div class="sub_content">
			<div class="location_content">
				<em><a href="/greenmall/view/display/main.wb" class="local_home">HOME</a> > 장바구니</em>
			</div>
			<div class="content_box">
				<div class="order_title">
					<h2>장바구니</h2>
					<ol>
						<li class="page_on"><span>01</span>장바구니<span><img
								src="/greenmall/images/member/icon_join_step_on.png" alt=""></span></li>
						<li><span>02</span>주문서작성/결제<span><img
								src="/greenmall/images/member/icon_join_step_off.png" alt=""></span></li>
						<li><span>03</span>주문완료</li>
					</ol>
				</div>
				<div class="cart_content">
					<form action="#" name="frmCart">
						<input type="hidden" name="cartKey">
						<input type="hidden" name="p_No">
						<input type="hidden" name="cartId">
						<input type="hidden" name="cPrice">
						<input type="hidden" name="cCnt">
						<div class="cart_cont_list">
							<div class="order_table_type">
								<table>
									<colgroup>
										<col style="width:3%">
										<col>
										<col style="width:5%">
										<col style="width:10%">
										<col style="width:13%">
										<col style="width:10%">
										<col style="width:10%">
									</colgroup>
									<thead>
									<tr><th><div class="form_element">
											<input type="checkbox" class="gd_select_all_goods" checked="checked">
										</div></th>
										<th>상품/옵션 정보</th>
										<th>수량</th>
										<th>상품금액</th>
										<th>할인/적립</th>
										<th>합계금액</th>
										<th>배송비</th>
									</tr>
									</thead>
									<tbody>
									<tr>
										<td class="td_chk"><div class="form_element">
											<input type="checkbox" value="상품번호">
										</div></td>
										<td class="td_left"><div class="pick_add_cont">
											<span class="pick_add_img">
												<a href="#"><img src="/greenmall/images/0.jpg" width="40" class="middle"></a>
											</span>
											<div class="pick_add_info">
												<em><a href="#">상품이름</a></em>
											</div>
										</div></td>
										<td class="td_order_amount">
											<div class="order_goods_num"><strong>1개</strong></div>
										</td>
										<td>
											<strong class="order_sum_txt price">8,000원</strong>
										</td>
										<td class="td_benefit">
											<ul class="benefit_list">
												<li class="benefit_mileage">
												<em>적립</em>
												<span>상품
												<strong>+400원</strong>
												</span>
											</ul>
										</td>
										<td>
											<strong class="order_sum_txt">8,000원</strong>
										</td>
										<td class="td_delivery">
											배송비무료
										</td>
									</tr>
									</tbody>
								</table>
							</div>
						</div>
						<p class="no_data">장바구니에 담겨있는 상품이 없습니다.</p>
					</form>
					<div class="btn_left_box">
						<a href="/greenmall/view/display/main.wb" class="shop_go_link"><em>&lt; 쇼핑 계속하기</em></a>
					</div>
					<div class="price_sum">
						<div class="price_sum_content">
							<div class="price_sum_list">
								<dl>
									<dt>
										총<strong id="totalGoodsCnt">0</strong>개의 상품금액
									</dt>
									<dd>
										<strong id="totalGoodsPrice">0</strong>원
									</dd>
								</dl>
								<span><img src="/greenmall/images/member/order_price_plus.png"
									alt=""> </span>
								<dl>
									<dt>배송비</dt>
									<dd>
										<strong id="totalDeliveryCharge">0</strong>원
									</dd>
								</dl>
								<span><img src="/greenmall/images/member/order_price_total.png"
									alt=""></span>
								<dl class="price_total">
									<dt>합계</dt>
									<dd>
										<strong id="totalSettlePrice">0</strong>원
									</dd>
								</dl>
							</div>
							<em class="tobe_mileage"> 적립예정 마일리지 : <span
								id="totalGoodsMileage">0</span>원
							</em>
						</div>
					</div>
					<div class="btn_order_box">
						<span class="btn_left_box">
							<button class="btn_order_choice_del">선택 상품 삭제</button>
						</span>
						<span class="btn_right_box">
							<button class="btn_order_choice_buy" onclick="location.href='/greenmall/view/buy/orderForm.wb'">선택 상품 주문</button>
							<button class="btn_order_whole_buy" onclick="location.href='/greenmall/view/buy/orderForm.wb'">전체 상품 주문</button>
						</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>