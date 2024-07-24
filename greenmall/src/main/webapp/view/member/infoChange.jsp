<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
    @import url("/greenmall/css/index.css");
    @import url("/greenmall/css/member/mypage.css");
    @import url("/greenmall/css/member/drawal.css");
  </style>
</head>

<body>
  <div id="container">
    <div id="contents">
      <div class="sub_content">
        <div class="location_cont">
          <em><a href="/greenmall/view/display/main.wb" class="local_home">HOME</a> > 마이페이지 > 내정보수정</em>
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

            <div class="my_page">
              <div class="mypage_zone_tit">
                <h2>회원정보 변경</h2>
              </div>
              <div class="join_base_wrap">

                <div class="member_cont">
                  <form id="formJoin" name="formJoin" action="#" method="post">
                    <input type="hidden" name="memNo" value="11816" />
                    <input type="hidden" name="memberFl" value="personal" />
                    <input type="hidden" name="dupeinfo" value="" />
                    <input type="hidden" name="rncheck" value="none" />
                    <input type="hidden" name="mode" value="modify" />

                    <!-- 회원가입/정보 기본정보 -->
                    <div class="base_info_box">
                      <h3>기본정보</h3>
                      <span class="important">표시는 반드시 입력하셔야 하는 항목입니다.</span>
                      <div class="base_info_sec">
                        <table border="0" cellpadding="0" cellspacing="0">
                          <colgroup>
                            <col width="25%">
                            <col width="75%">
                          </colgroup>
                          <tbody>
                            <tr>
                              <th><span class="important">아이디</span></th>
                              <td>
                                <input type="hidden" name="memId" value="dnqls966" />
                                dnqls966
                              </td>

                            </tr>
                            <tr class="">
                              <th><span class="important">비밀번호</span></th>
                              <td class="member_password">

                                <div id="memberNewPw" class="member_pw_change">
                                  <dl>
                                    <dt>새 비밀번호</dt>
                                    <dd>
                                      <div class="member_warning">
                                        <input type="password" id="newPassword" name="memPw" />
                                      </div>
                                    </dd>
                                  </dl>
                                  <dl>
                                    <dt>새 비밀번호 확인</dt>
                                    <dd>
                                      <div class="member_warning">
                                        <input type="password" id="newPasswordCheck" name="memPwRe" />
                                      </div>
                                    </dd>
                                  </dl>
                                </div>
                                <!-- //member_pw_change -->
                              </td>
                            </tr>
                            <tr>
                              <th><span class="important">이름</span></th>
                              <td>
                                <div class="member_warning">
                                  <input type="text" name="memNm" data-pattern="gdMemberNmGlobal" value="천우빈"
                                    maxlength="30" />
                                </div>
                              </td>
                            </tr>
                            <tr>
                              <th><span>이메일</span></th>
                              <td class="member_email">
                                <div class="member_warning">
                                  <input type="text" name="email" id="email" value="dnqls966@naver.com" tabindex="-1" />
                                  <select id="emailDomain" name="emailDomain" class="chosen-select">
                                    <option value="self">직접입력</option>
                                    <option value="naver.com">naver.com</option>
                                    <option value="hanmail.net">hanmail.net</option>
                                    <option value="daum.net">daum.net</option>
                                    <option value="nate.com">nate.com</option>
                                    <option value="hotmail.com">hotmail.com</option>
                                    <option value="gmail.com">gmail.com</option>
                                    <option value="icloud.com">icloud.com</option>
                                  </select>
                                </div>
                                <div class="member_warning js_email"></div>
                                <div class="form_element">
                                  <input type="checkbox" id="maillingFl" name="maillingFl" value="y" />
                                  <label for="maillingFl" class="check_s ">정보/이벤트 메일 수신에 동의합니다.</label>
                                </div>
                              </td>
                            </tr>
                            <tr>
                              <th><span>휴대폰번호</span></th>
                              <td class="member_address">
                                <div class="address_postcode">
                                  <input type="text" id="cellPhone" name="cellPhone" maxlength="12"
                                    placeholder="- 없이 입력하세요." data-pattern="gdNum" value="01025503659" />
                                </div>
                                <div class="form_element">
                                  <input type="checkbox" id="smsFl" name="smsFl" value="y" />
                                  <label for="smsFl" class="check_s ">정보/이벤트 SMS 수신에 동의합니다.</label>
                                </div>
                              </td>
                            </tr>
                            <tr>
                              <th><span>전화번호</span></th>
                              <td>
                                <div class="member_warning">
                                  <input type="text" id="phone" name="phone" maxlength="12" placeholder="- 없이 입력하세요."
                                    data-pattern="gdNum" value="" />
                                </div>
                              </td>
                            </tr>
                            <tr>
                              <th><span>주소</span></th>
                              <td class="member_address">
                                <div class="address_postcode">
                                  <input type="text" name="zonecode" readonly="readonly" value="" />
                                  <button type="button" id="btnPostcode" class="btn_post_search">우편번호검색</button>
                                  <input type="hidden" name="zipcode" value="" />
                                </div>
                                <div class="address_input">
                                  <div class="member_warning">
                                    <input type="text" name="address" readonly="readonly" value="" />
                                  </div>
                                  <div class="member_warning js_address_sub">
                                    <input type="text" name="addressSub" value="" />
                                  </div>
                                </div>
                              </td>
                            </tr>
                          </tbody>
                        </table>
                      </div>
                      <!-- //base_info_sec -->
                    </div>
                    <!-- //base_info_box --><!-- 회원가입/정보 기본정보 -->
                    <!-- 회원가입/정보 사업자정보 --><!-- 회원가입/정보 사업자정보 -->
                    <!-- 회원가입/정보 부가정보 -->
                    <div class="site_info_box">
                      <h3>계정 연결정보</h3>
                      <div class="site_sns_info">
                        <div class="site_sns_list_disconnect">
                          <em>연결 계정</em>
                          <span><img
                              src="https://cdn-pro-web-250-117.cdn-nhncommerce.com/moddism_godomall_com/data/skin/front/moment/img/mypage/site_login_naver.png"
                              alt="네이버" /></span>
                        </div>
                      </div>
                    </div>

                    <!-- N : 약관동의 시작 -->
                    <!-- N : 약관동의 끝 -->
                    <!-- 회원가입/정보 부가정보 -->

                    <div class="btn_center_box">
                      <button type="button" class="btn_member_cancel">취소</button>
                      <button type="button" class="btn_comfirm js_btn_join" value="정보수정">정보수정</button>
                    </div>
                    <!-- //btn_center_box -->
                  </form>
                </div>
                <!-- //member_cont -->
              </div>
              <!-- //join_base_wrap -->

            </div>
            <!-- //my_page -->

          </div>
          <!-- //mypage_cont -->

        </div>
        <!-- //mypage_cont -->

      </div>


    </div>
  </div>
  </div>
</body>

</html>