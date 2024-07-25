<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <title>Document</title>
  <style>
    @import url("/greenmall/css/index.css");
    @import url("/greenmall/css/mypage/mypage.css");
  </style>
</head>

<body>
  <div id="container">
    <div id="contents">
      <div class="sub_content">
        <div class="location_cont">
          <em><a href="/greenmall/view/display/main.wb" class="local_home">HOME</a> > 쿠폰존</em>
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
                 <li><a href="/greenmall/view/mypage/wishList.wb">- 찜리스트</a></li>
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
            <div class="coupon_content">
              <h2>쿠폰존</h2>

              <div class="cp_list_wrap" style="display: none;">
                <div class="list_top">
                  <span class="title"></span>
                  <a href="#" class="cp_down btn_all_coupon_down">
                    <span>쿠폰 모두 받기</span>
                  </a>
                </div>
                <ul class="cp_list"></ul>
              </div>
              <div class="cp_list_none" style="display: block;">
                <p>발급 가능한 쿠폰이 없습니다.</p>
              </div>
            </div>
          </div>
        </div>

      </div>
    </div>
  </div>
</body>

</html>