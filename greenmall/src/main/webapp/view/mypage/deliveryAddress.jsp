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
  <script type="text/javascript">
  	function delchk() {
  		 if (confirm("정말 삭제 하시겠습니까??") == false){    //확인
  		     return false;
  		 }
  		
  	}
  </script>
</head>
<c:set var="uri" value="${pageContext.request.requestURI }"></c:set>
<body>
  <div id="container">
    <div id="contents">
      <div class="sub_content">
        <div class="location_cont">
          <em><a href="/greenmall/view/display/main.wb" class="local_home">HOME</a> > 마이페이지 > 배송지 관리</em>
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
                  <li><a href="/greenmall/view/mypage/deliveryAddress.wb" <c:if test="${uri == '/greenmall/view/mypage/deliveryAddress.jsp' }">class="active"</c:if>>- 배송지 관리</a></li>
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
                <p>${member.mName}님의</p>
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
                      <a href="#"><strong>${member.mileage }</strong></a>원
                    </span>
                  </li>
                </ul>
              </div>
            </div>


            <div class="mypage_shipping mypage_lately_info">
              <div class="mypage_zone_tit">
                <h3>배송지 관리</h3>
                <span class="pick_list_num">
                  배송지 관리 내역 총 <strong>${list.size()}</strong>건
                </span>
                <div class="mypage_table_type">
                  <table>
                    <colgroup>
                      <col style="width: 12%;">
                      <col>
                      <col style="width: 20%;">
                      <col style="width: 12%;">
                      <col style="width: 12%;">
                    </colgroup>
                    <thead>
                      <tr>
                        <th>받으실 분</th>
                        <th>주소</th>
                        <th>요청사항</th>
                        <th>수정</th>
                        <th>삭제</th>
                      </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="ma" items="${list}">
                    <c:if test="${ma != null }">
                    	<tr>
                    		<td><p>${ma.aName}</p></td>
                    		<td><p>${ma.aAddr} / ${ma.aAddrDe }</p></td>
                    		<td><p>${ma.aRequest}</p></td>
                    		<td><a href="/greenmall/view/mypage/myAddressUpdateForm.wb?addrNum=${ma.addrNum}">수정</a></td>
                    		<td><a onclick="return delchk()" href="/greenmall/view/mypage/myAddressDelete.wb?addrNum=${ma.addrNum}">삭제</a></td></tr>
                    </c:if>
                    </c:forEach>
                    <c:if test="${list == null }">
                      <tr>
                        <td colspan="5">
                          <p class="no_data">배송지 목록이 없습니다.</p>
                        </td>
                      </tr>
                      </c:if>
                    </tbody>
                  </table>
                </div>
                <div class="btn_right_box">
                  <button class="btn_write" 
                  	onclick="location.href='/greenmall/view/mypage/addressForm.wb'">
                    <strong>+ 새 배송지 추가</strong>
                  </button>
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