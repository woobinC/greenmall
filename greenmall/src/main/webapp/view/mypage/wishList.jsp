<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
    @import url("/greenmall/css/index.css");
    @import url("/greenmall/css/mypage/mypage.css");
  </style>
</head>
<c:set var="uri" value="${pageContext.request.requestURI }"></c:set>
<body>
  <div id="container">
    <div id="contents">
      <div class="sub_content">
        <div class="location_cont">
          <em><a href="#" class="local_home">HOME</a> > 마이페이지 > 찜리스트</em>
        </div>
        <div class="side_cont">
          <div class="sub_menu_box">
            <h2>마이페이지</h2>
            <ul class="sub_menu_mypage">
              <li> 
                쇼핑정보
                <ul class="sub_depth1">
                  <li><a href="/greenmall/view/mypage/tracking.wb">- 주문목록/배송조회</a></li>
                  <li><a href="/greenmall/view/mypage/goodsReturn.wb">- 취소/반품/교환 내역</a></li>
                  <li><a href="/greenmall/view/mypage/refund.wb">- 환불/입금 내역</a></li>
                  <li><a href="/greenmall/view/mypage/wishList.wb" <c:if test="${uri == '/greenmall/view/mypage/wishList.jsp' }">class="active"</c:if>>- 찜리스트</a></li>
                </ul>
              </li>
              <li>
                혜택관리
                <ul class="sub_depth1">
                  <li><a href="/greenmall/view/mypage/coupon.wb">- 쿠폰</a></li>
                  <li><a href="/greenmall/view/mypage/couponZone.wb">- 쿠폰존</a></li>
                  <li><a href="/greenmall/view/mypage/mileage.wb">- 마일리지</a></li>
                </ul>
              </li>
              <li>
                고객센터
                <ul class="sub_depth1">
                  <li><a href="/greenmall/view/mypage/customerService.wb">- 1:1 문의</a></li>
                </ul>
              </li>
              <li>
                회원정보
                <ul class="sub_depth1">
                  <li><a href="/greenmall/view/mypage/infoChange.wb">- 회원정보 변경</a></li>
                  <li><a href="/greenmall/view/mypage/withDrawal.wb">- 회원 탈퇴</a></li>
                  <li><a href="/greenmall/view/mypage/deliveryAddress.wb">- 배송지 관리</a></li>
                </ul>
              </li>
              <li class="sub_depth1">
                나의 상품문의
                <ul class="sub_depth1">
                  <li><a href="/greenmall/view/mypage/productInquiry.wb">- 나의 상품문의</a></li>
                </ul>
              </li>
              <li class="sub_depth1">
                나의 상품후기
                <ul class="sub_depth1">
                  <li><a href="/greenmall/view/mypage/myGoodsReview.wb">- 나의 상품후기</a></li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
        <div class="content">
          <div class="mypage_cont">
            <div class="mypage_top_info">
              <div class="mypage_top_txt">
                <p>천우빈님의</p>
                <p>마이페이지 입니다</p>
              </div>
              <div class="mypage_top_wallet">
                <ul>
                  <li>
                    <span><img src="/greenmall/images/icon_coupon.png" alt="쿠폰"></span>
                    <span>
                      <em>쿠폰</em>
                      <a href="#"><strong>0</strong></a>장
                    </span>
                  </li>
                  <li>
                    <span><img src="/greenmall/images/icon_mileage.png" alt="마일리지"></span>
                    <span>
                      <em>마일리지
                        <em>(구매확정 후 지급)</em>
                      </em>
                      <a href="#"><strong>0</strong></a>원
                    </span>
                  </li>
                </ul>
              </div>
            </div>

            <div class="mypage_wish_list">
              <div class="mypage_zone_tit">
                <h3>찜리스트</h3>
              </div>
              <div class="mypage_table_type">
                <form id="frmWish" name="frmWish" method="post">
                  <input type="hidden" name="mode">
                  <input type="hidden" name="isCart">
                  <table>
                    <colgroup>
                      <col style="width: 8%;">
                      <col>
                      <col style="width: 15%;">
                      <col style="width: 15%;">
                      <col style="width: 10%;">
                    </colgroup>
                    <thead>
                      <tr>
                        <th>
                          <div class="form_element">
                            <input type="checkbox" id="allCheck" name="allCheck" class="gd_checkbox_all"
                              data-target-name="sno[]" data-target-form="#frmWish">
                            <label for="allCheck" class="check_s"></label>
                          </div>
                        </th>
                        <th>상품명/옵션</th>
                        <th>상품금액/수량</th>
                        <th>혜택</th>
                        <th>합계</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td colspan="5">
                          <p class="no_data">찜리스트에 상품이 없습니다.</p>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                  <button class="btn_wish_choice_del">
                    <em>선택 상품 삭제</em>
                  </button>
                  <button class="btn_wish_choice_cart">
                    <em>선택 상품 장바구니</em>
                  </button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  </div>
</body>

</html>