<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="/greenmall/css/buy/order.css">
<link rel="stylesheet" href="/greenmall/css/mypage/cartList.css">
</head>

<body>
  <div class="cart_wrap">
    <div class="sub_content">
      <div class="location_content">
        <em><a href="#" class="local_home">HOME</a> > 주문서 작성 / 결제</em>
      </div>
      <div class="content_box">
        <div class="order_title">
          <h2>주문서작성/결제</h2>
          <ol>
            <li><span>01</span>장바구니<span><img src="/greenmall/images/icon_join_step_off.png" alt=""></span></li>
            <li class="page_on"><span>02</span>주문서작성/결제<span><img src="/greenmall/images/icon_join_step_on.png" alt=""></span></li>
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
										<col>
										<col style="width:5%">
										<col style="width:10%">
										<col style="width:13%">
										<col style="width:10%">
										<col style="width:10%">
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
									<tr>
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
					</form>
          <div class="btn_left_box">
            <a href="#" class="shop_go_link"><em>< 장바구니 가기</em></a>
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
                <span><img src="/greenmall/images/order_price_plus.png" alt="">
                </span>
                <dl>
                  <dt>배송비</dt>
                  <dd>
                    <strong id="totalDeliveryCharge">0</strong>원
                  </dd>
                </dl>
                <span><img src="/greenmall/images/order_price_total.png" alt=""></span>
                <dl class="price_total">
                  <dt>합계</dt>
                  <dd><strong id="totalSettlePrice">0</strong>원</dd>
                </dl>
              </div>
              <em class="tobe_mileage">
                적립예정 마일리지 : <span id="totalGoodsMileage">0</span>원
              </em>
            </div>
          </div>
        </div>
      </div>

      <input type="hidden" name="simpleJoin" value>
      <div class="order_view_info">
        <div class="order_info">
            <div class="order_zone_tit">
                <h4>주문자 정보</h4>
            </div>
            <div class="order_table_type">
                <table class="table_left">
                    <colgroup>
                        <col style="width:15%">
                        <col style="width:85%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th scope="row">
                                <span class="important">주문하시는 분</span>
                            </th>
                            <td><input type="text" name="orderName" id="orderName" value="홍길동" data-pattern="gdEngKor" maxlength="20"></td>
                        </tr>
                        <tr>
                            <th scope="row">전화번호</th>
                            <td><input type="text" id="phoneNum" name="orderPhone" value maxlength="20"></td>
                        </tr>
                        <tr>
                            <th scope="row">
                                <span class="important">휴대폰 번호</span>
                            </th>
                            <td><input type="text" id="mobileNum" name="orderCellPhone" value="010-1234-5678" maxlength="20"></td>
                        </tr>
                        <tr>
                            <th scope="row">
                                <span class="important">이메일</span>
                            </th>
                            <td class="member_email"><input type="text" name="orderEmail" value="gildong@naver.com">
                            </td>
                            <select id="emailDomain" class="chosen-select" style="display: none;">
                                <option value="self">직접입력</option>
                                <option value="naver.com">naver.com</option>
                                <option value="hanmail.com">hanmail.net</option>
                                <option value="daum.net">daum.net</option>
                                <option value="nate.com">nate.com</option>
                                <option value="hotmail.com">hotmail.com</option>
                                <option value="gmail.com">gmail.com</option>
                                <option value="icloud.com">icloud.com</option>
                            </select>
                            <div class="chosen-container chosen-container-single chosen-container-single-nosearch" title id="emailDomain_chosen" style="width: 120px;">
                                <div class="chosen-drop">
                                    <div class="chosen-search">
                                        <input class="chosen-search-input" type="text" autocomplete="off" readonly>
                                    </div>
                                    <ul class="chosen-results"></ul>
                                </div>
                            </div>
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
                        <th scope="row">배송지 확인</th>
                        <td>
                            <div class="form_element">
                                <ul>
                                    <li>
                                        <input type="radio" name="shipping" id="shippingBasic">
                                        <label for="shippingBasic" class="choice_s">기본 배송지</label>
                                    </li>
                                    <li>
                                        <input type="radio" name="shipping" id="shippingNew">
                                        <label for="shippingNew" class="choice_s on">직접 입력</label>
                                    </li>
                                </ul>
                                <input type="hidden" class="shipping-delivery-visit" value="n">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">
                            <span class="important">받으실분</span>
                        </th>
                        <td>
                            <input type="text" name="receiverName" data-pattern="gdEngKor" maxlength="20">
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">
                            <span class="important">받으실 곳</span>
                        </th>
                        <td class="member_address">
                            <div class="address_postcode">
                                <input type="text" name="receiverZonecode" readonly="readonly">
                                <input type="hidden" name="receiverZipcode">
                                <button type="button" class="btn_post_search" onclick="gd_postcode_search('receiverZonecode', 'receiverAddress', 'receiverZipcode');">우편번호 검색</button>
                            </div>
                            <div class="address_input">
                                <input type="text" name="receiverAddress" readonly="readonly">
                                <input type="text" name="receiverAddressSub">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">전화번호</th>
                        <td>
                            <input type="text" id="receiverPhone" name="receiverPhone">
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">
                            <span class="important">휴대폰 번호</span>
                        </th>
                        <td><input type="text" id="receiverCellPhone" name="receiverCellPhone"></td>
                    </tr>
                    <tr>
                        <th scope="row">남기실 말씀</th>
                        <td class="td_last_say">
                            <input type="text" name="orderMemo">
                        </td>
                    </tr>
                    <tr id="memberinfoApplyTr">
                        <th scope="row">회원정보 반영</th>
                        <td>
                            <div class="form_element">
                                <div id="memberinfoApplyTr1" class="member_info_delivery">
                                    <input type="checkbox" id="reflectApplyDelivery" name="reflectApplyDelivery" value="y">
                                    <label for="reflectApplyDelivery" class="check_s">
                                        <em>나의 배송지에 추가합니다.</em>
                                    </label>
                                </div>
                                <div id="memberinfoApplyTr2" class="member_info_apply">
                                    <input type="checkbox" id="reflectApplyMember" name="reflectApplyMember" value="y">
                                    <label for="reflectApplyMember" class="check_s">
                                        위 내용을 회원정보에 반영합니다.
                                        <span>(주소/전화번호/휴대폰번호)</span>
                                    </label>
                                </div>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            </div>
        </div>
        <input type="hidden" name="addFieldConf" value="y">
        <div class="addition_info">
        </div>
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
                            <td>
                                <strong id="totalGoodsPrice" class="order_payment_sum">7,000원</strong>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">배송비</th>
                            <td>
                                <span id="totalDeliveryCharge">0</span>원
                                <span class="multi_shipping_text"></span>
                            </td>
                        </tr>
                        <tr id="rowDeliveryInsuranceFee" class="dn">
                            <th scope="row">해외배송 보험료</th>
                            <td>
                                <span id="rowDeliveryInsuranceFee">0</span>원
                                <input type="hidden" name="rowDeliveryInsuranceFee" value="0">
                            </td>
                        </tr>
                        <tr id="rowDeliverAreaCharge" class="dn">
                            <th scope="row">지역별 배송비</th>
                            <td>
                                <span id="deliveryAreaCharge">0</span>원
                                <input type="hidden" name="totalDeliveryCharge" value="0">
                                <input type="hidden" name="deliveryAreaCharge" value="0">
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">할인 및 적립</th>
                            <td>
                                <ul class="order_benefit_list">
                                    <li class="order_benefit_sale">
                                        <em id="saleDefault">
                                            할인 :
                                            <strong>(-)
                                                <b class="total-member-dc-price">0</b>원
                                            </strong>
                                            <span>( 상품 0원, 회원
                                                <span class="member-dc-price">0원</span>, 쿠폰 <span class="goods-coupon-dc-price">0</span>원
                                            </span>
                                        </em>
                                        <em id="saleWithoutMember" class="dn">
                                            할인 :
                                            <strong>(-)
                                                <b class="total-member-dc-price-without-member">0</b>원
                                            </strong>
                                            <span>( 상품 0원, 회원 0원, 쿠폰 <span class="goods-coupon-dc-price-without-member">0</span>원</span>)
                                        </em>
                                    </li>
                                    <li class="order_benefit_mileage js_mileage">
                                        <em id="mileageDefault">
                                            적립 마일리지 :
                                            <strong>(+) <b class="total-member-mileage">350</b>원</strong>
                                            <span>( 상품 <span class="goods-mileage">350</span>원, 회원 <span class="member-mileage">0</span>원, 쿠폰<span class="goods-coupon-add-mileage">0</span>원)</span>
                                        </em>
                                        <em id="mileageWithoutMember" class="js_mileage dn">
                                            적립 마일리지 :
                                            <strong>(+) <b class="total-member-mileage-without-member">350</b></strong>
                                            <span>( 상품 350원, 회원 0원, 쿠폰 <span class="goods-coupon-add-mileage-without-member">0</span>원 )</span>
                                        </em>
                                    </li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">쿠폰 사용</th>
                            <td>쿠폰이 없습니다</td>
                        </tr>
                        <tr>
                            <th scope="row">마일리지 사용</th>
                            <td>
                                <div class="order_money_use">
                                    <b>
                                        <input type="text" name="useMileage" onblur="gd_mileage_use_check('y', 'y', 'y');" disabled="disabled">원
                                    </b>
                                    <div class="form_element">
                                        <input type="checkbox" id="useMileageAll" onclick="gd_mileage_use_all();">
                                        <label for="useMileageAll" class="check_s">전액 사용하기</label>
                                        <span class="money_use_sum">(보유 마일리지 : 0원)</span>
                                    </div>
                                    <em class="money_use_txt js-mileageInfoArea"></em>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">최종 결제 금액</th>
                            <td>
                                <input type="hidden" name="settlePrice" value="7000">
                                <input type="hidden" name="overseasSettlePrice" value="0">
                                <input type="hidden" name="overseasSettleCurrency" value="KRW">
                                <Strong id="totalSettlePrice" class="order_payment_sum">7000</Strong>원
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="payment_progress">
            <div class="order_zone_tit">
                <h4>결제수단 선택 / 결제</h4>
            </div>
            <div class="payment_progress_list">
               <div class="js_pay_content">
                    <div id="settlekind_general" class="general_payment">
                        <dl>
                            <dt>일반결제</dt>
                            <dd>
                                <div class="form_element">
                                    <ul class="payment_progress_select">
                                        <li id="settlekindType_gb">
                                            <input type="radio" id="settleKind_gb" name="settleKind" value="gb">
                                            <label for="settleKind_gb" class="choice_s on">무통장 입금</label>
                                        </li>
                                        <li id="settlekindType_pc">
                                            <input type="radio" id="settleKind_pc" name="settleKind" value="pc">
                                            <label for="settleKind_pc" class="choice_s">신용카드</label>
                                        </li>
                                        <li id="settlekindType_pb">
                                            <input type="radio" id="settleKind_pb" name="settleKind" value="pb">
                                            <label for="settleKind_pb" class="choice_s">계좌이체</label>
                                        </li>
                                    </ul>
                                </div>
                                <!-- 무통장 입금 -->
                                <div id="settleKind_general_gb" class="pay_bankbook_box" style="display:block;">
                                    <em class="pay_bankbook_txt">( 무통장 입금 의 경우 입금확인 후부터 배송단계가 진행됩니다. )</em>
                                    <ul>
                                        <li>
                                            <strong>입금자명</strong>
                                            <input type="text" name="bankSender">
                                        </li>
                                        <li>
                                            <strong>입금은행</strong>
                                            <select name="bankAccount" class="chosen-select" style="display: none;">
                                                <option value>선택하세요</option>
                                                <option value="3">우체국 40023401002990 그린몰</option>
                                            </select>
                                            <div class="chosen-container chosen-container -single chosen-container-single-nosearch" title style="width: 50px;">
                                                <a class="chosen-single">
                                                    <select class="button">선택하세요
                                                        <option value="농협은행">농협은행</option>
                                                        <option value="우리은행">우리은행</option>
                                                        <option value="국민은행">국민은행</option>
                                                        <option value="신한은행">신한은행</option>
                                                    </select>
                                                    <div>
                                                        <b></b>
                                                    </div>
                                                </a>
                                                <div class="chosen-drop">
                                                    <div class="chosen-search">
                                                        <input class="chosen-search-input" type="text" autocomplete="off" readonly>
                                                    </div>
                                                    <ul class="chosen-results"></ul>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="card" id="settleKind_general_pc" style="display: none;"></div>
                                <div class="account-bank" id="settlekind_general_pb" style="display: none;"></div>
                            </dd>
                        </dl>
                    </div>
               </div>
            </div>
            <div class="payment_final">
                <div class="payment_final_total">
                    <dl>
                        <dt>최종 결제 금액</dt>
                        <dd>
                            <span>
                                <strong id="totalSettlePriceView">7,000</strong>원
                            </span>
                        </dd>
                    </dl>
                </div>
                <div class="payment_final_check">
                    <div class="form_element">
                        <input type="checkbox" id="termAgree_orderCheck" class="require">
                        <label for="termAgree_orderCheck" class="check_s">
                            <em>
                                <b>(필수)</b> 구매하실 상품의 결제정보를 확인하였으며, 구매진행에 동의합니다.
                            </em>
                        </label>
                    </div>
                </div>
                <div class="btn_center_box">
                    <button class="btn_order_buy order-buy">
                        <em>결제하기</em>
                    </button>
                </div>
            </div>
        </div>
      </div>

    </div>
  </div>
</body>

</html>