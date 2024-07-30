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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <!-- CDN 방식 사용 -->
    <script>
	    function execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업을 통한 검색 결과 항목 클릭 시 실행
	                var addr = ''; // 주소_결과값이 없을 경우 공백 
	                var extraAddr = ''; // 참고항목
	
	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 도로명 주소를 선택
	                    addr = data.roadAddress;
	                } else { // 지번 주소를 선택
	                    addr = data.jibunAddress;
	                }
	
	                if(data.userSelectedType === 'R'){
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                } else {
	                    document.getElementById("mAddr").value = '';
	                }
	
	                // 선택된 우편번호와 주소 정보를 input 박스에 넣는다.
	                document.getElementById('mPostCode').value = data.zonecode;
	                document.getElementById("mAddr").value = addr;
	                document.getElementById("mAddr").value += extraAddr;
	                document.getElementById("mAddrDe").focus(); // 우편번호 + 주소 입력이 완료되었음으로 상세주소로 포커스 이동
	            }
	        }).open();
	    }
	    function execDaumPostcodeComp() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업을 통한 검색 결과 항목 클릭 시 실행
	                var addr = ''; // 주소_결과값이 없을 경우 공백 
	                var extraAddr = ''; // 참고항목
	
	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 도로명 주소를 선택
	                    addr = data.roadAddress;
	                } else { // 지번 주소를 선택
	                    addr = data.jibunAddress;
	                }
	
	                if(data.userSelectedType === 'R'){
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                } else {
	                    document.getElementById("compAddr").value = '';
	                }
	
	                // 선택된 우편번호와 주소 정보를 input 박스에 넣는다.
	                document.getElementById('compPostCode').value = data.zonecode;
	                document.getElementById("compAddr").value = addr;
	                document.getElementById("compAddr").value += extraAddr;
	                document.getElementById("compAddrde").focus(); // 우편번호 + 주소 입력이 완료되었음으로 상세주소로 포커스 이동
	            }
	        }).open();
	    }
	</script>  
</head>
<c:set var="uri" value="${pageContext.request.requestURI }"></c:set>
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
                  <li><a href="/greenmall/view/mypage/infoChange.wb" <c:if test="${uri == '/greenmall/view/mypage/infoChange.jsp' }">class="active"</c:if>>- 회원정보 변경</a></li>
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

            <div class="my_page">
              <div class="mypage_zone_tit">
                <h2>회원정보 변경</h2>
              </div>
              <div class="join_base_wrap">

                <div class="member_cont">
                  <form id="formJoin" name="formJoin" action="/greenmall/view/member/change.wb" method="post">
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
                                <input type="hidden" name="mId" value="${member.mId }" />
                                ${member.mId }
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
                                        <input type="password" id="newPassword" name="mPw" />
                                      </div>
                                    </dd>
                                  </dl>
                                  <dl>
                                    <dt>새 비밀번호 확인</dt>
                                    <dd>
                                      <div class="member_warning">
                                        <input type="password" id="newPasswordCheck" name="confirmPw" />
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
                                  <input type="text" name="mName" data-pattern="gdMemberNmGlobal" value="${member.mName }"
                                    maxlength="30" />
                                </div>
                              </td>
                            </tr>
                            <tr>
                              <th><span>이메일</span></th>
                              <td class="member_email">
                                <div class="member_warning">
                                  <input type="text" name="mEmail" id="email" value="${member.mEmail}" tabindex="-1" />
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
                                  <input type="text" id="cellPhone" name="mTel" maxlength="12"
                                    placeholder="- 없이 입력하세요." data-pattern="gdNum" value="${member.mTel }" />
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
                                  <input type="text" name="mPostCode" readonly="readonly" value="${member.mPostCode }" id="mPostCode" />
                                  <button type="button" id="btnPostcode" class="btn_post_search" onclick="execDaumPostcode()">우편번호검색</button>
                                  <input type="hidden" name="mPostCode" value="${member.mPostCode }" />
                                </div>
                                <div class="address_input">
                                  <div class="member_warning">
                                    <input type="text" name="mAddr" id="mAddr" readonly="readonly" value="${member.mAddr }" />
                                  </div>
                                  <div class="member_warning js_address_sub">
                                    <input type="text" name="mAddrDe" id="mAddrDe" value="${member.mAddrDe }" />
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
                      <button type="submit" class="btn_comfirm js_btn_join" value="정보수정">정보수정</button>
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