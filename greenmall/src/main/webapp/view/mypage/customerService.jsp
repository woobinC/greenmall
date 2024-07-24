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
</head>

<body>
  <div id="container">
    <div id="contents">
      <div class="sub_content">
        <div class="location_cont">
          <em><a href="/greenmall/view/display/main.wb" class="local_home">HOME</a> > 마이페이지 > 1:1문의</em>
        </div>
        <div class="side_cont">
          <div class="sub_menu_box">
            <h2>마이페이지</h2>
            <ul class="sub_menu_mypage">
              <li>
                쇼핑정보
                <ul class="sub_depth1">
                  <li><a href="/greenmall/view/member/tracking.wb">- 주문목록/배송조회</a></li>
                  <li><a href="/greenmall/view/member/goodsReturn.wb">- 취소/반품/교환 내역</a></li>
                  <li><a href="/greenmall/view/member/refund.wb">- 환불/입금 내역</a></li>
                 <li><a href="/greenmall/view/member/wishList.wb">- 찜리스트</a></li>
                </ul>
              </li>
              <li>
                혜택관리
                <ul class="sub_depth1">
                  <li><a href="/greenmall/view/member/coupon.wb">- 쿠폰</a></li>
                  <li><a href="/greenmall/view/member/couponZone.wb">- 쿠폰존</a></li>
                  <li><a href="/greenmall/view/member/mileage.wb">- 마일리지</a></li>
                </ul>
              </li>
              <li>
                고객센터
                <ul class="sub_depth1">
                  <li><a href="/greenmall/view/member/customerService.wb">- 1:1 문의</a></li>
                </ul>
              </li>
              <li>
                회원정보
                <ul class="sub_depth1">
                  <li><a href="/greenmall/view/member/infoChange.wb">- 회원정보 변경</a></li>
                  <li><a href="/greenmall/view/member/withDrawal.wb">- 회원 탈퇴</a></li>
                  <li><a href="/greenmall/view/member/deliveryAddress.wb">- 배송지 관리</a></li>
                </ul>
              </li>
              <li class="sub_depth1">
                나의 상품문의
                <ul class="sub_depth1">
                  <li><a href="/greenmall/view/member/productInquiry.wb">- 나의 상품문의</a></li>
                </ul>
              </li>
              <li class="sub_depth1">
                나의 상품후기
                <ul class="sub_depth1">
                  <li><a href="/greenmall/view/member/myGoodsReview.wb">- 나의 상품후기</a></li>
                </ul>
              </li>
            </ul>
          </div>
        </div>

        <div class="content">
          <div class="mypage_cont">
            <div class="mypage_lately_info">
              <div class="mypage_zone_title">
                <h3>묻고답하기</h3>
              </div>
              <div class="date_check_box">
                <form action="#" method="get" name="frmDateSearch">
                  <h3>조회기간</h3>
                  <div class="date_check_list" data-target-name="wDate[]">
                    <button data-value="0">오늘</button>
                    <button data-value="7">7일</button>
                    <button data-value="15">15일</button>
                    <button data-value="30">1개월</button>
                    <button data-value="90">3개월</button>
                    <button class="oneYear" data-value="365">1년</button>
                  </div>
                  <div class="date_check_calendar">
                    <input type="text" id="picker2" name="wDate[]"
                    class="anniversary" value="2024-07-10"> ~ 
                    <input type="text" name="wDate[]" class="anniversary" value="2024-07-17">
                  </div>
                  <button type="submit" class="btn_date_check">
                    <em>조회</em>
                  </button>
                </form>
              </div>

              <div class="board_list_qa" align="center">
                <div class="mypage_table_type" style="width: 100%;">
                  <table>
                    <colgroup>
                      <col style="width: 10%;">
                      <col style="width: 15%;">
                      <col>
                      <col style="width: 10%;">
                      <col style="width: 10%;">
                    </colgroup>
                    <thead>
                      <tr>
                        <th>문의날짜</th>
                        <th>카테고리</th>
                        <th>제목</th>
                        <th>문의상태</th>
                        <th>답변시간</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td colspan="5">
                          <p class="no_data">게시글이 존재하지않습니다.</p>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>

              </div>
            </div>
            <div class="btn_right_box">
              <button class="btn_write">
                <strong>1:1 문의하기</strong>
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>

</html>