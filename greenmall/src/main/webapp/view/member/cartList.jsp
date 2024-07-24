<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/greenmall/css/member/cartList.css">
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
					<form action="#">
						<input type="hidden" name="cartno">
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
				</div>
			</div>
		</div>
	</div>
</body>
</html>