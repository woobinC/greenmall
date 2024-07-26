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
    @import url("/greenmall/css/mypage/drawal.css");
  </style>
</head>
<c:set var="uri" value="${pageContext.request.requestURI }"></c:set>
<body>
  <div id="container">
    <div id="contents">
      <div class="sub_content">
        <div class="location_cont">
          <em><a href="/greenmall/view/display/main.wb" class="local_home">HOME</a> > 마이페이지 > 회원탈퇴</em>
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
                  <li><a href="/greenmall/view/mypage/withDrawal.wb" <c:if test="${uri == '/greenmall/view/mypage/withDrawal.jsp' }">class="active"</c:if>>- 회원 탈퇴</a></li>
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
            <form id="formHackOut" name="formHackOut" action="../mypage/my_page_ps.php" method="post">
              <input type="hidden" name="mode" value="hackOut" />
              <input type="hidden" name="snsType" value="naver" />
              <div class="hack_out">

                <div class="mypage_zone_tit">
                  <h2>회원탈퇴</h2>
                </div>

                <div class="mypage_unregister">
                  <div class="mypage_zone_tit">
                    <h3>01.회원탈퇴 안내</h3>
                  </div>

                  <div class="unregister_info">
                    익산몰 탈퇴안내<br />
                    <br />
                    회원님께서 회원 탈퇴를 원하신다니 저희 쇼핑몰의 서비스가 많이 부족하고 미흡했나 봅니다.<br />
                    불편하셨던 점이나 불만사항을 알려주시면 적극 반영해서 고객님의 불편함을 해결해 드리도록 노력하겠습니다.<br />
                    <br />
                    ■ 아울러 회원 탈퇴시의 아래 사항을 숙지하시기 바랍니다.<br />
                    1. 회원 탈퇴 시 회원님의 정보는 상품 반품 및 A/S를 위해 전자상거래 등에서의 소비자 보호에 관한 법률에 의거한 <br />
                    고객정보 보호정책에따라 관리 됩니다.<br />
                    2. 탈퇴 시 회원님께서 보유하셨던 마일리지는 삭제 됩니다
                  </div>
                  <!-- //unregister_info -->

                  <div class="mypage_zone_tit">
                    <h3>02.회원탈퇴 하기</h3>
                  </div>

                  <div class="mypage_table_type">
                    <table class="table_left">
                      <colgroup>
                        <col style="width:15%;">
                        <col style="width:85%;">
                      </colgroup>
                      <tbody>
                        <tr>
                          <th scope="row">탈퇴사유</th>
                          <td>
                            <div class="form_element">
                              <ul class="hack_out_list">
                                <li><input type="checkbox" id="reasonCd01003001" name="reasonCd[]" class="checkbox"
                                    value="01003001"><label for="reasonCd01003001" class="check-s">고객서비스(상담,포장 등)
                                    불만</label></li>
                                <li><input type="checkbox" id="reasonCd01003002" name="reasonCd[]" class="checkbox"
                                    value="01003002"><label for="reasonCd01003002" class="check-s">배송불만</label></li>
                                <li><input type="checkbox" id="reasonCd01003003" name="reasonCd[]" class="checkbox"
                                    value="01003003"><label for="reasonCd01003003" class="check-s">교환/환불/반품 불만</label>
                                </li>
                                <li><input type="checkbox" id="reasonCd01003004" name="reasonCd[]" class="checkbox"
                                    value="01003004"><label for="reasonCd01003004" class="check-s">방문 빈도가 낮음</label>
                                </li>
                                <li><input type="checkbox" id="reasonCd01003005" name="reasonCd[]" class="checkbox"
                                    value="01003005"><label for="reasonCd01003005" class="check-s">상품가격 불만</label></li>
                                <li><input type="checkbox" id="reasonCd01003006" name="reasonCd[]" class="checkbox"
                                    value="01003006"><label for="reasonCd01003006" class="check-s">개인 정보유출 우려</label>
                                </li>
                                <li><input type="checkbox" id="reasonCd01003007" name="reasonCd[]" class="checkbox"
                                    value="01003007"><label for="reasonCd01003007" class="check-s">쇼핑몰의 신뢰도 불만</label>
                                </li>
                              </ul>
                            </div>
                          </td>
                        </tr>
                        <tr>
                          <th scope="row">남기실 말씀</th>
                          <td><textarea cols="30" rows="5" name="reasonDesc"></textarea></td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
                <!-- //mypage_unregister -->

              </div>
              <!-- //hack_out -->

              <div class="btn_center_box">
                <a href="#;" class="btn_claim_cancel btn_prev"><em>이전으로</em></a>
                <button type="submit" class="btn_claim_ok"><em>탈퇴</em></button>
              </div>
            </form>
          </div>
          <!-- //mypage_cont -->

        </div>


      </div>
    </div>
  </div>
</body>

</html>