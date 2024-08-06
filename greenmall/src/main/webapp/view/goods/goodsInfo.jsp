<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous">
	
</script>
<link rel="stylesheet" type="text/css"
	href='https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css'>
<style type="text/css">
a {
	color: inherit; /* 부모 요소의 색상을 상속 */
	text-decoration: none; /* 밑줄 제거 */
}
#modalImg{
	width:100%;
}
</style>
<style>
@import url("/greenmall/css/goods/goods_info.css");
</style>

<title>Insert title here</title>
</head>
<body>
	<div id="container">
		<div class="contents">
			<div class="sub_content" style="padding-top: 80px">
				<div class="content_box">
					<div class="location_wrap">
						<div class="location_cont">
							<em><a href="#" class="local_home">HOME</a> &nbsp;</em> <span>&gt;
							</span>
							<div class="location_select">
								<div class="location_tit">
									<a href="#"><span>곡류</span></a>
								</div>
								<ul style="display: none">
									<li><a href="greemall/view/"><span>곡류</span></a></li>
									<li><a href="#"><span>버섯류</span></a></li>
									<li><a href="#"><span>과일류</span></a></li>
									<li><a href="#"><span>채소/나물류</span></a></li>
									<li><a href="#"><span>건강식품/기타</span></a></li>
									<li><a href="#"><span>기획전</span></a></li>
								</ul>
							</div>
							<span>&gt; </span>
							<div class="location_select">
								<div class="location_tit">
									<a href="#"><span>쌀</span></a>
								</div>
								<ul style="display: none;">
									<li><a href="?cateCd=001001"><span>쌀</span></a></li>
									<li><a href="?cateCd=001002"><span>잡곡류</span></a></li>
								</ul>
							</div>
						</div>
						<div class="container mt-5">
							<div class="row">
								<div class="col-md-6">
									<div class="item_photo_big mb-3">
										<img src="/greenmall/images/goods/${goods.p_Img1 }"
											class="img-fluid" alt=""
											title="2023년 삼기농협 친환경 무농약 신동진 탑마루 쌀 4kg"> <a
											href="#lyZoom" class="btn btn-outline-secondary btn-sm mt-2"
											data-bs-toggle="modal" data-bs-target="#zoomModal" style="position:relative; top:279px; left:90px;">이미지 확대
											보기</a>


									</div>
									<div id="testZoom" style="display: none">
										<img src="/greenmall/images/goods/${goods.p_Img1 }"
											class="img-fluid" alt=>
									</div>
									<div class="item_photo_slide">
										<button type="button"
											class="btn btn-outline-secondary btn-sm me-2">이전</button>
										<img src="/greenmall/images/goods/${goods.p_Img1 }"
											class="img-thumbnail" alt="2023년 삼기농협 친환경 무농약 신동진 탑마루 쌀 4kg"
											title="${goods.p_Name }">
										<button type="button"
											class="btn btn-outline-secondary btn-sm ms-2">다음</button>
									</div>
								</div>
								<div class="col-md-6">
									<form action="/greenmall/view/mypage/cartList.wb" name="frmView" id="frmView" method="post">
										<input type="hidden" name="p_No" value="${goods.p_No}"> 
										<input type="hidden" name="salePrice" value="${salePrice}">

										<div class="item_info_box">
											<h3>${goods.p_Name}</h3>
											<div class="item_detail_list mb-3">
												<dl class="row">
													<dt class="col-sm-3">정가</dt>
													<dd class="col-sm-9">
														<del>${goods.p_Price}</del>
													</dd>
												</dl>
												<dl class="row">
													<dt class="col-sm-3">판매가</dt>
													<dd class="col-sm-9">
														<strong name="sell_price">${salePrice}원</strong>
													</dd>
												</dl>
												<dl class="row">
													<dt class="col-sm-3">구매혜택</dt>
													<dd class="col-sm-9">
														적립마일리지: <strong id="mileage">${salePrice - salePrice * goods.p_Sale / 100}</strong>
													</dd>
												</dl>
												<dl class="row">
													<dt class="col-sm-3">배송비</dt>
													<dd class="col-sm-9">
														<strong>무료</strong>
														<div class="delivery-detail">택배</div>
													</dd>
												</dl>
												<dl class="row">
													<dt class="col-sm-3">제조사</dt>
													<dd class="col-sm-9">삼기농업협동조합</dd>
												</dl>
											</div>

											<div class="item_choice_list mb-3">
												<table class="table">
													<thead>
														<tr>
															<th scope="col">상품명</th>
															<th scope="col">수량</th>
															<th scope="col">가격</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>${goods.p_Name}</td>
															<td><input type="number" id="quantity"
																name="p_Cnt" class="form-control" value="1" min="1">
															</td>
															<td id="totalPrice" >${goods.p_Price}원</td>
														</tr>
													</tbody>
												</table>
												<div class="item_price_cont">
													<dl class="row">
														<dt class="col-sm-6">총 상품금액</dt>
														<dd class="col-sm-6">
															<strong id="totalProductPrice" >${goods.p_Price}원</strong>
														</dd>
													</dl>
													<dl class="row">
														<dt class="col-sm-6">총 할인금액</dt>
														<dd class="col-sm-6">
															<strong id="totalDiscount">${goods.p_Price-salePrice}원</strong>
														</dd>
													</dl>
													<dl class="row">
														<dt class="col-sm-6">총 합계금액</dt>
														<dd class="col-sm-6">
															<strong id="totalSum">${goods.p_Price - (goods.p_Price-salePrice)}원</strong>
														</dd>
													</dl>
												</div>
											</div>
											<div class="btn_choice_box mb-3">
												<button id="btn_add_cart" type="button"
													class="btn btn-primary me-2" data-bs-toggle="modal"
													data-bs-target="#addCartLayer" onclick="addCart()">장바구니</button>
												<button id="btn_add_wish" type="button"
													class="btn btn-secondary me-2" data-bs-toggle="modal"
													data-bs-target="#addWishLayer">찜하기</button>
												<button id="buy" type="button" class="btn btn-success">바로
													구매</button>
											</div>
										</div>
									</form>
								</div>
							</div>
							<div class="item_goods_sec">
								<!-- //#detail -->
								<div id="detail">
									<div class="item_goods_tab">
										<ul>
											<li class="on"><a href="#detail">상품상세정보</a></li>
											<li><a href="#delivery">배송안내</a></li>
											<li><a href="#exchange">교환 및 반품안내</a></li>
											<li><a href="#reviews">상품후기 <strong>(0)</strong></a></li>
											<li><a href="#qna">상품문의 <strong>(0)</strong></a></li>
										</ul>
									</div>
									<!-- //item_goods_tab -->

									<div class="detail_cont">
										<h3>상품상세정보</h3>
										<div class="detail_explain_box">
											<div class="image-manual">
												<!-- 이미지 -->
											</div>
											<div class="txt-manual">
												<!-- 상품상세 공통정보 관리를 상세정보 상단에 노출 -->
												<p>&nbsp;</p>
												<p style="text-align: center;" align="center">&nbsp;</p>
												<p align="center"
													style="text-align: center; font-size: 36px; color: black; font-weight: bold;">
													${goods.p_Name }의 상품 정보입니다.</p>
											</div>
										</div>
										<!-- //detail_explain_box -->
									</div>
									<!-- //detail_cont -->
								</div>

								<!-- //#delivery -->
								<div id="delivery">
									<div class="item_goods_tab">
										<ul>
											<li><a href="#detail">상품상세정보</a></li>
											<li class="on"><a href="#delivery">배송안내</a></li>
											<li><a href="#exchange">교환 및 반품안내</a></li>
											<li><a href="#reviews">상품후기 <strong>(0)</strong></a></li>
											<li><a href="#qna">상품문의 <strong>(0)</strong></a></li>
										</ul>
									</div>
									<!-- //item_goods_tab -->

									<div class="delivery_cont">
										<h3>배송안내</h3>
										<div class="admin_msg">
											<div style="text-align: center;" align="center">
												<img
													src="https://ai.esmplus.com/samrakmall/%EB%B0%B0%EC%86%A1%EA%B3%B5%EC%A7%80/cs%202.jpg">
											</div>
											<div style="text-align: center;" align="center">
												<span style="font-family: 돋움, dotum;">○ 배송방법: 택배배송</span>&nbsp;
											</div>
											<p>&nbsp;</p>
											<p style="text-align: center;" align="center">
												<span style="font-family: 돋움, dotum;">○ 배송지역: 전국지역</span>
											</p>
											<p class="0" style="text-align: center;" align="center">
												<span style="font-family: 돋움, dotum;">○ 배송기간: 택배배송은
													결제완료 후 2-3일 소요됩니다. (토/일/공휴일 제외한 기간)</span>
											</p>
											<p class="0" style="text-align: center;" align="center">
												<span style="font-family: 돋움, dotum;">○ 배송안내</span>
											</p>
											<p class="0" style="text-align: center;" align="center">
												<span style="font-family: 돋움, dotum;">- 오전 9시 전에 입금
													확인된 주문건에 한하여 당일출고 됩니다.</span>
											</p>
											<p class="0" style="text-align: center;" align="center">
												<span style="font-family: 돋움, dotum;">- 오전 9시 이후 주문 및
													입금 확인건은 익일 출고됩니다.</span>
											</p>
											<p class="0" style="text-align: center;" align="center">
												<span style="font-family: 돋움, dotum;">- 상품이 한 박스에
													포장되지 않을정도의 수량이나 부피에 의하여 별도의 추가금액을 지불하셔야하는 경우가 있습니다.</span>
											</p>
										</div>
									</div>
									<!-- //delivery_cont -->
								</div>

								<!-- //exchange -->
								<div id="exchange">
									<div class="item_goods_tab">
										<ul>
											<li><a href="#detail">상품상세정보</a></li>
											<li><a href="#delivery">배송안내</a></li>
											<li class="on"><a href="#exchange">교환 및 반품안내</a></li>
											<li><a href="#reviews">상품후기 <strong>(0)</strong></a></li>
											<li><a href="#qna">상품문의 <strong>(0)</strong></a></li>
										</ul>
									</div>
									<!-- //item_goods_tab -->

									<div class="exchange_cont">
										<h3>환불안내</h3>
										<div class="admin_msg">
											<div style="text-align: center;" align="center">
												<img
													src="https://ai.esmplus.com/samrakmall/%EB%B0%B0%EC%86%A1%EA%B3%B5%EC%A7%80/cs%202.jpg">
											</div>
										</div>
									</div>
								</div>

								<!-- //reviews -->
								<div id="reviews">
									<div class="item_goods_tab">
										<ul>
											<li class=""><a href="#detail">상품상세정보</a></li>
											<li><a href="#delivery">배송안내</a></li>
											<li><a href="#exchange">교환 및 반품안내</a></li>
											<li class="on"><a href="#reviews">상품후기 <strong>(0)</strong></a></li>
											<li><a href="#qna">상품문의 <strong>(0)</strong></a></li>
										</ul>
									</div>
									<div class="reviews_cont">
										<h3>상품후기</h3>
										<div id="ajax-goods-goodsreview-list">
											<div class="reviews_table">
												<table class="reviews_table_type">
													<colgroup>
														<col width="13%">
														<col>
														<col width="13%">
														<col width="13%">
													</colgroup>
													<thead>
														<tr>
															<th>평점</th>
															<th>제목</th>
															<th>작성자</th>
															<th>작성일</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td colspan="4" class="no_data">등록된 상품후기가 없습니다.</td>
														</tr>
													</tbody>
												</table>
											</div>
											<div class="pagination">
												<ul></ul>
											</div>
										</div>
										<div class="btn_reviews_box">
											<a href="../board/list.php?bdId=goodsreview"
												class="btn_reviews_more">상품후기 전체보기</a> <a
												href="javascript:gd_open_write_popup('goodsreview', '1000001605')"
												class="btn_reviews_write">상품후기 글쓰기</a>
										</div>
									</div>
								</div>

								<!-- //qna -->
								<div id="qna">
									<div class="item_goods_tab">
										<ul>
											<li><a href="#detail">상품상세정보</a></li>
											<li><a href="#delivery">배송안내</a></li>
											<li><a href="#exchange">교환 및 반품안내</a></li>
											<li><a href="#reviews">상품후기 <strong>(0)</strong></a></li>
											<li class="on"><a href="#qna">상품문의 <strong>(0)</strong></a></li>
										</ul>
									</div>
									<!-- //item_goods_tab -->
									<div class="qna_cont">
										<h3>상품Q&amp;A</h3>

										<div id="ajax-goods-goodsqa-list">

											<div class="qna_table">
												<table class="qna_table_type">
													<colgroup>
														<col width="5%">
														<col>
														<col width="13%">
														<col width="13%">
														<col width="13%">
													</colgroup>
													<thead>
														<tr>
															<th>번호</th>
															<th>제목</th>
															<th>작성자</th>
															<th>작성일</th>
															<th>진행상황</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td class="no_data" colspan="5">등록된 상품문의가 없습니다.</td>
														</tr>
													</tbody>
												</table>
											</div>
											<div class="pagination">
												<ul></ul>
											</div>
											<div class="btn_qna_box">
												<a href="../board/list.php?bdId=goodsqa"
													class="btn_qna_more">상품문의 전체보기</a> <a
													href="javascript:gd_open_write_popup('goodsqa', '1000001605')"
													class="btn_qna_write">상품문의 글쓰기</a>
											</div>
										</div>
									</div>
								</div>






							</div>
							<!-- Modal for zooming image -->
							<div class="modal fade" id="zoomModal" tabindex="-1"
								aria-labelledby="zoomModalLabel" aria-hidden="true">
								<div class="modal-dialog modal-dialog-centered">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="zoomModalLabel">이미지 확대 보기</h5>
											<button type="button" class="btn-close"
												data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body">
											<img
												src="/greenmall/images/goods/${goods.p_Img1 }"
												class="img-fluid" alt="이미지확대보기" id="modalImg">
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-bs-dismiss="modal">닫기</button>
										</div>
									</div>
								</div>
							</div>

							<!-- 장바구니 모달 -->
							<div class="modal fade" id="addCartLayer" tabindex="-1"
								aria-labelledby="addCartLayerLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="addCartLayerLabel">장바구니 담기</h5>
											<button type="button" class="btn-close"
												data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body">
											<p class="success">
												<strong>상품이 장바구니에 담겼습니다.</strong><br>바로 확인하시겠습니까?
											</p>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-bs-dismiss="modal">취소</button>
											<button type="button" class="btn btn-primary btn_move_cart" onclick="moveCart()">확인</button>
										</div>
									</div>
								</div>
							</div>
							<!-- 찜하기 모달 -->
							<div class="modal fade" id="addWishLayer" tabindex="-1"
								aria-labelledby="addWishLayerLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="addWishLayerLabel">찜 리스트 담기</h5>
											<button type="button" class="btn-close"
												data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body">
											<p class="success">
												<strong>상품이 찜 리스트에 담겼습니다.</strong><br>바로 확인하시겠습니까?
											</p>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-bs-dismiss="modal">취소</button>
											<button type="button" class="btn btn-primary btn_move_wish">확인</button>
										</div>
									</div>
								</div>
							</div>






							<!-- //#delivery -->

							<!-- //container -->

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	
	document.getElementById('quantity').addEventListener('input', function() {
	    var quantity = parseInt(this.value); // 사용자가 입력한 수량
	    var originalPrice = ${goods.p_Price}; // 상품의 원래 가격
	    var saleRate = ${goods.p_Sale}; // 할인율
	    var discountPrice = originalPrice - (originalPrice * (saleRate / 100)); // 할인된 가격
	    var totalPrice = discountPrice * quantity; // 총 가격

	    // 총 상품금액, 할인금액, 합계금액 업데이트
	    document.getElementById('totalProductPrice').textContent = originalPrice * quantity + '원';
	    document.getElementById('totalDiscount').textContent = originalPrice * (saleRate / 100) * quantity + '원';
	    document.getElementById('totalSum').textContent = totalPrice + '원';
	    document.getElementById('totalPrice').textContent = totalPrice + '원';
	});

	</script>

	<script>
		document.addEventListener("DOMContentLoaded",
				function() {
					// 판매가 가져오기
					const sellPriceElement = document
							.querySelector("strong[name='sell_price']");
					const sellPriceText = sellPriceElement.innerText;
					const sellPrice = parseInt(sellPriceText.replace(/[^0-9]/g,
							''), 10);

					// 적립 마일리지 계산 (판매가의 5%)
					const mileage = sellPrice * 0.05;

					// 적립 마일리지 표시
					const mileageElement = document.getElementById("mileage");
					mileageElement.innerText = Math.floor(mileage) + "원";
				});
	</script>
	<script>
		document.querySelectorAll('.location_select').forEach(
				function(select) {
					select.addEventListener('click', function() {
						var ul = this.querySelector('ul');
						if (ul.style.display === 'block') {
							ul.style.display = 'none';
						} else {
							document.querySelectorAll('.location_select ul')
									.forEach(function(otherUl) {
										otherUl.style.display = 'none';
									});
							ul.style.display = 'block';
						}
					});
				});

		document.addEventListener('click', function(event) {

			if (!event.target.closest('.location_select')) {
				document.querySelectorAll('.location_select ul').forEach(
						function(ul) {
							ul.style.display = 'none';
						});
			}
		});
		function addCart() {
			var form1 = $("#frmView").serialize();

            console.log(form1);
            $.ajax({
                type: "post",
                url: "/greenmall/AddCart",
                data: form1,
                dataType: 'json',
                success: function (data) {
                    alert("success");
                    console.log(data);
                },
                error: function (request, status, error) {
                    console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

                }
            });
		}
		
		function moveCart(){
			location.href="/greenmall/view/mypage/cartList.wb";
		}
	</script>
</body>
</html>