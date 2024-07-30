<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
    @import url("/greenmall/css/index.css");
    @import url("/greenmall/css/mypage/mypage.css");
  </style>
  <script type="text/javascript">
  	function() {
  		
  	}
  </script>
</head>
<body>
  <div id="container">
    <div id="contents">
      <div class="sub_content">
        <div class="location_cont">
          <em><a href="/greenmall/view/display/main.wb" class="local_home">HOME</a> > 마이페이지</em>
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
          <div class="mypage_main">
            <div class="mypage_top_info">
              <div class="mypage_top_txt">
                <p>${member.mName }님의</p>
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
                      <a href="#"><strong>${member.mileage}</strong></a>원
                    </span>
                  </li>
                </ul>
              </div>
            </div>
            <div class="mypage_order_info">
              <div class="mypage_zone_title">
                <h3>
                  진행 중인 주문
                  <span>최근 30일 내에 진행중인 주문정보입니다.</span>
                </h3>
              </div>
              <div class="mypage_order_info_cont">
                <ol>
                  <li>
                    <b>입금대기</b>
                    <strong>0</strong>
                  </li>
                  <li>
                    <b>결제완료</b>
                    <strong>0</strong>
                  </li>
                  <li>
                    <b>상품준비중</b>
                    <strong>0</strong>
                  </li>
                  <li>
                    <b>배송중</b>
                    <strong>0</strong>
                  </li>
                  <li>
                    <b>배송완료</b>
                    <strong>0</strong>
                  </li>
                  <li>
                    <b>구매확정</b>
                    <strong>0</strong>
                  </li>
                </ol>
                <div class="order_case_list">
                  <ul>
                    <li>
                      <b>• 취소</b>
                      <span>0건</span>
                    </li>
                    <li>
                      <b>• 교환</b>
                      <span>0건</span>
                    </li>
                    <li>
                      <b>• 반품</b>
                      <span>0건</span>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="mypage_lately_info">
              <div class="mypage_zone_title">
                <h3>
                  최근 주문 정보
                  <span>최근 30일 내에 주문하신 내역입니다.</span>
                </h3>
              </div>
              <div class="mypage_lately_info_cont">
                <div class="mypage_table_type">
                  <table>
                    <colgroup>
                      <col style="width: 15%;">
                      <col>
                      <col style="width: 15%;">
                      <col style="width: 15%;">
                      <col style="width: 15%;">
                    </colgroup>
                    <thead>
                      <tr>
                        <th>날짜/주문번호</th>
                        <th>상품명/옵션</th>
                        <th>상품금액/수량</th>
                        <th>주문상태</th>
                        <th>확인/리뷰</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td colspan="6">
                          <p class="no_data">조회내역이 없습니다.</p>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
              <a href="#" class="btn_board_more">+ 더보기</a>
            </div>
            <div class="mypage_lately_goods">
              <div class="mypage_zone_title">
                <h3>
                  최근 본 상품
                  <span>천우빈님께서 본 최근 상품입니다.</span>
                </h3>
              </div>
              <div class="goods_list_cont">
                <div class="item_gallery_type">
                  <ul>
                    <li>
                      <div class="item_cont">
                        <a href="#">
                          <div class="img-box">
                            <div class="img-thum">
                              <div class="img-center">
                                <img src="/greenmall/images/green.jpg" alt="">
                              </div>
                            </div>
                          </div>
                        </a>
                      </div>
                      <div class="item_info_cont">
                        <div class="item_tit_box">
                          <span class="item_brand"> 화산마을 </span>
                          <a href="#">
                            <strong class="item_name">단단하고 저장성이 좋은 화산마을 양파 10kg(크기혼합)</strong>
                          </a>
                        </div>
                      </div>
                    </li>
                    <li>
                      <div class="item_cont">
                        <a href="#">
                          <div class="img-box">
                            <div class="img-thum">
                              <div class="img-center">
                                <img src="/greenmall/images/green.jpg" alt="">
                              </div>
                            </div>
                          </div>
                        </a>
                      </div>
                      <div class="item_info_cont">
                        <div class="item_tit_box">
                          <span class="item_brand"> 화산마을 </span>
                          <a href="#">
                            <strong class="item_name">단단하고 저장성이 좋은 화산마을 양파 10kg(크기혼합)</strong>
                          </a>
                        </div>
                      </div>
                    </li>
                  </ul>
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