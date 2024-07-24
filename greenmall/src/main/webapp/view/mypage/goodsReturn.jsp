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
					<em><a href="/greenmall/view/display/main.wb"
						class="local_home">HOME</a> > 취소리스트</em>
				</div>
				<div class="side_cont">
					<div class="sub_menu_box">
						<h2>마이페이지</h2>
						<ul class="sub_menu_mypage">
							<li>쇼핑정보
								<ul class="sub_depth1">
									<li><a href="/greenmall/view/member/tracking.wb">-
											주문목록/배송조회</a></li>
									<li><a href="/greenmall/view/member/goodsReturn.wb">-
											취소/반품/교환 내역</a></li>
									<li><a href="/greenmall/view/member/refund.wb">- 환불/입금
											내역</a></li>
									<li><a href="/greenmall/view/member/wishList.wb">-
											찜리스트</a></li>
								</ul>
							</li>
							<li>혜택관리
								<ul class="sub_depth1">
									<li><a href="/greenmall/view/member/coupon.wb">- 쿠폰</a></li>
									<li><a href="/greenmall/view/member/couponZone.wb">-
											쿠폰존</a></li>
									<li><a href="/greenmall/view/member/mileage.wb">- 마일리지</a></li>
								</ul>
							</li>
							<li>고객센터
								<ul class="sub_depth1">
									<li><a href="/greenmall/view/member/customerService.wb">-
											1:1 문의</a></li>
								</ul>
							</li>
							<li>회원정보
								<ul class="sub_depth1">
									<li><a href="/greenmall/view/member/infoChange.wb">-
											회원정보 변경</a></li>
									<li><a href="/greenmall/view/member/withDrawal.wb">-
											회원 탈퇴</a></li>
									<li><a href="/greenmall/view/member/deliveryAddress.wb">-
											배송지 관리</a></li>
								</ul>
							</li>
							<li class="sub_depth1">나의 상품문의
								<ul class="sub_depth1">
									<li><a href="/greenmall/view/member/productInquiry.wb">-
											나의 상품문의</a></li>
								</ul>
							</li>
							<li class="sub_depth1">나의 상품후기
								<ul class="sub_depth1">
									<li><a href="/greenmall/view/member/myGoodsReview.wb">-
											나의 상품후기</a></li>
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
									<li><span><img
											src="/greenmall/images/icon_coupon.png" alt="쿠폰"></span> <span>
											<em>쿠폰</em> <a href="#"><strong>0</strong></a>장
									</span></li>
									<li><span><img
											src="/greenmall/images/icon_mileage.png" alt="마일리지"></span> <span>
											<em>마일리지 <em>(구매확정 후 지급)</em>
										</em> <a href="#"><strong>0</strong></a>원
									</span></li>
								</ul>
							</div>
						</div>


						<div class="mypage_lately_info">
							<div class="mypage_zone_title">
								<h3>주문최소/반품/교환</h3>
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
											class="anniversary" value="2024-07-10"> ~ <input
											type="text" name="wDate[]" class="anniversary"
											value="2024-07-17">
									</div>
									<button type="submit" class="btn_date_check">
										<em>조회</em>
									</button>
								</form>
							</div>
							<div class="mypage_lately_info_cont">
								<span class="pick_list_num"> 주문목록 / 배송조회 내역 총 <strong>0</strong>건
								</span>
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
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>