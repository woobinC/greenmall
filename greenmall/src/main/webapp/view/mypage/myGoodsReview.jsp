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
          <em><a href="/greenmall/view/display/main.wb" class="local_home">HOME</a> > 마이페이지 > 상품후기</em>
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
                  <li><a href="/greenmall/view/mypage/myGoodsReview.wb" <c:if test="${uri == '/greenmall/view/mypage/myGoodsReview.jsp' }">class="active"</c:if>>- 나의 상품후기</a></li>
                </ul>
              </li>
            </ul>
          </div>
        </div>

        <div class="content">
          <div class="board_cont">
            <div class="mypage_lately_info">
              <div class="mypage_zone_title">
                <h3>이용후기</h3>
              </div>

              <div class="board_list_qa" align="center">
                <div class="board_table_type" style="width: 100%;">
                  <table>
                    <colgroup>
                      <col style="width: 60px;">
                      <col>
                      <col style="width: 100px;">
                      <col style="width: 80px;">
                      <col style="width: 60px;">
                    </colgroup>
                    <thead>
                      <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>날짜</th>
                        <th>작성자</th>
                        <th>조회</th>
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
          </div>
          <div class="board_search_box">
            <form action="#" name="frmList" id="frmList">
              <input type="hidden" name="Id">
              <input type="hidden" name="No">
              <input type="hidden" name="nogeader">
              <input type="hidden" name="mypageFl">
            </form>
            <select name="serchField" class="chosen-select" style="display: none;">
              <option value="subject">제목</option>
              <option value="contents">내용</option>
              <option value="writerNm">작성자</option>
            </select>
            <div class="chosen-container chosen-container-single chosen-container-single-nosearch" title
              style="width: 90px;">
              <a class="chosen-single">
                <span>제목</span>
                <div><b></b></div>
              </a>
              <div class="chosen-drop">
                <div class="chosen-search">
                  <input class="chosen-search-input" type="text" autocomplete="off" readonly>
                </div>
                <ul class="chosen-results">
                  <li class="active-result result-selected" data-option-array-index="0">제목</li>
                  <li class="active-result" data-option-array-index="2">내용</li>
                  <li class="active-result" data-option-array-index="2">작성자</li>
                </ul>
              </div>
            </div>
            <input type="text" class="text" name="searchWord">
            <button class="btn_board_search">
              <em>검색</em>
            </button>
          </div>
          <div class="btn_right_box">
            <button class="btn_write">
              <strong>글쓰기</strong>
            </button>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>

</html>