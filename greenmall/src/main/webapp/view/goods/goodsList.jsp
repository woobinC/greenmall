<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
	/* 카드 스타일 */
.card {
  border: 1px solid #e0e0e0;
  border-radius: 5px;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  overflow: hidden;
  display: flex;
  flex-direction: column;
  height: 100%;
  cursor: pointer;
  transition: box-shadow 0.3s ease;
}

.card:hover {
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

.card-img-top {
  width: 100%;
  height: auto;
  object-fit: cover;
}

.card-body {
  padding: 15px;
  flex: 1;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
}

.card-title {
  font-size: 18px;
  font-weight: bold;
  margin: 0;
  color: #333;
}

.card-text {
  font-size: 16px;
  margin: 5px 0;
  color: #555;
}

.card-text del {
  color: #888;
}

.card-text strong {
  font-size: 18px;
  color: #000;
}
#pprice{
color:#417517;
}
/* 레이아웃 스타일 */
.row {
  display: flex;
  flex-wrap: wrap;
  margin: -15px;
}

.col-md-2 {
  flex: 0 0 16.6667%;
  max-width: 16.6667%;
  padding: 15px;
}

.mb-4 {
  margin-bottom: 1.5rem;
}

/* 반응형 스타일 */
@media (max-width: 768px) {
  .col-md-2 {
    flex: 0 0 50%;
    max-width: 50%;
  }
}

@media (max-width: 576px) {
  .col-md-2 {
    flex: 0 0 100%;
    max-width: 100%;
  }
}
</style>


<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous">
        </script>
<link rel="stylesheet" type="text/css"
	href='https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css'>
<style>
@import url("/greenmall/css/goods/goods_sell.css");
</style>

<title>상품 메인페이지</title>
</head>

<body>

	<div id="container">
		<div id="contents">
			<!-- 본문 시작 -->

			<div class="sub_content">
				<!-- //location_wrap -->

				<!-- //side_cont -->
				<div class="content" style="padding-top: 80px">
					<div class="location_wrap">
						<div class="location_cont">
							<em><a href="#" class="local_home">HOME</a> &nbsp;</em> <span>&gt;
							</span>
							<div class="location_select">
								<div class="location_tit">
									<a href="#"><span>곡류</span></a>
								</div>
								<ul style="display: none">
									<li><a href="#"><span>곡류</span></a></li>
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
						<!-- //location_wrap -->

						<div class="goods_list_item">

							<div class="goods_list_item_tit">
								<h2>곡류</h2>
							</div>
							<div class="goods_item_category">
								<ul>
									<li class="on"><a href="#"><span>쌀 <!--<em>(6)</em>--></span></a>
									</li>
									<li class=""><a href="/goods_sell2.html"><span>잡곡류
												<!--<em>(3)</em>-->
										</span></a></li>
								</ul>
							</div>

							<!-- goods_pick_list 상품 갯수  -->
							<div class="goods_pick_list">
								<span class="pick_list_num">상품 <strong>${list.size()}</strong> 개
								</span>
								<form name="frmList" action="">
									<input type="hidden" name="cateCd" value="001" />
									<div class="pick_list_box">
										<ul class="pick_list">
											<li><input type="radio" id="sort1" class="radio"
												name="sort" value="" /> <label class="on" for="sort1">추천순</label>
											</li>
											<li><input type="radio" id="sort2" class="radio"
												name="sort" value="sellcnt" /> <label for="sort2">판매인기순</label>
											</li>
											<li><input type="radio" id="sort3" class="radio"
												name="sort" value="price_asc" /> <label for="sort3">낮은가격순</label>
											</li>
											<li><input type="radio" id="sort4" class="radio"
												name="sort" value="price_dsc" /> <label for="sort4">높은가격순</label>
											</li>
											<li><input type="radio" id="sort5" class="radio"
												name="sort" value="review" /> <label for="sort5">상품평순</label>
											</li>
											<li><input type="radio" id="sort6" class="radio"
												name="sort" value="date" /> <label for="sort6">등록일순</label>
											</li>
										</ul>
										<div class="choice_num_view">
											<select class="chosen-select" name="pageNum">
												<option value="10">10개씩보기</option>
												<option value="20" selected='selected'>20개씩보기</option>
												<option value="30">30개씩보기</option>
												<option value="40">40개씩보기</option>
											</select>
										</div>
										<!-- //choice_num_view -->
									</div>
									<!-- //pick_list_box -->
								</form>
							</div>

							<div class="container">
								<div class="row">
									<c:if test="${empty list}">

										<li>데이터가 없습니다</li>
									</c:if>
									<c:if test="${not empty list}">
										<c:forEach var="goods" items="${list}">
											<!-- 상품 1 -->
											<div class="col-md-2 mb-4">
												<div class="card h-100">
													<img src="/greenmall/images/goods/${goods.p_Img1 }"
														class="card-img-top" onclick="location.href='/greenmall/view/goods/goodsInfo.gw?p_No=${goods.p_No}'">

													<div class="card-body">
														<h5 class="card-title" onclick="location.href='/greenmall/view/goods/goodsInfo.gw?p_No=${goods.p_No}'">
															${goods.p_Name }</h5>
														
														<p class="card-text text-muted" onclick="location.href='/greenmall/view/goods/goodsInfo.gw?p_No=${goods.p_No}'">
															<del>${goods.p_Price }</del>
														</p>
														<p class="card-text" onclick="location.href='/greenmall/view/goods/goodsInfo.gw?p_No=${goods.p_No}'" id="pprice">
															<strong style="color: #417517"><fmt:formatNumber
																	value="${goods.p_Price- goods.p_Cnt* goods.p_Price/100 }"
																	pattern="#" >
																</fmt:formatNumber>원</strong>
														</p>
													</div>
												</div>
											</div>
										</c:forEach>
										
									</c:if>
								</div>

								<div align="center" class="page">
									<!-- 앞에 보여줄께 있어 -->
									<c:if test="${startPage > PAGE_PER_BLOCK }">
										<button class="pageBtn prevBtn"
											onclick="location.href='cmproductList.mk?pageNum=${startPage-1}'">◀</button>
									</c:if>
									<c:forEach var="i" begin="${startPage}" end="${endPage}">
										<button class="pageBtn"
											onclick="location.href='cmproductList.mk?pageNum=${i}'">${i}</button>
									</c:forEach>
									<!-- 아직 보여줄께 남아있다 -->
									<c:if test="${endPage < totalPage}">
										<button class="pageBtn nextBtn"
											onclick="location.href='cmproductList.mk?pageNum=${endPage+1}'">▶</button>
									</c:if>
								</div>
				
							<!-- 								상품 2
								<div class="col-md-2 mb-4">
									<div class="card h-100">
										<a href="../goods/goods_view.php?goodsNo=1000001583"> <img
											src="http://moddism.godohosting.com//goods/23/04/16/1000001583/1000001583_main_055.jpg"
											class="card-img-top"
											alt="7-8가지의 고품질 곡물로 구성된 구평주안농장 혼합곡 1.5kg/2kg/4kg">
										</a>
										<div class="card-body">
											<h5 class="card-title">7-8가지의 고품질 곡물로 구성된 구평주안농장 혼합곡
												1.5kg/2kg/4kg</h5>
											<p class="card-text">
												<strong>10,500원</strong>
											</p>
										</div>
									</div>
								</div>
								상품 3
								<div class="col-md-2 mb-4">
									<div class="card h-100">
										<a href="../goods/goods_view.php?goodsNo=1000001005"> <img
											src="http://moddism.godohosting.com//goods/1000001005_main_047.jpg"
											class="card-img-top" alt="밀알연구회 무농약 밀쌀 2kg">
										</a>
										<div class="card-body">
											<h5 class="card-title">밀알연구회 무농약 밀쌀 2kg</h5>
											<p class="card-text">
												<strong>8,000원</strong>
											</p>
										</div>
									</div>
								</div>
								상품 4
								<div class="col-md-2 mb-4">
									<div class="card h-100">
										<a href="../goods/goods_view.php?goodsNo=1000000681"> <img
											src="http://moddism.godohosting.com//goods/1000000681_main_029.jpg"
											class="card-img-top" alt="2023년 삼기농협 친환경 무농약 신동진 탑마루 쌀 20kg">
										</a>
										<div class="card-body">
											<h5 class="card-title">2023년 삼기농협 친환경 무농약 신동진 탑마루 쌀 20kg</h5>
											<p class="card-text text-muted">
												<del>94,900원</del>
											</p>
											<p class="card-text">
												<strong>79,500원</strong>
											</p>
										</div>
									</div>
								</div>
								상품 5
								<div class="col-md-2 mb-4">
									<div class="card h-100">
										<a href="../goods/goods_view.php?goodsNo=1000000680"> <img
											src="http://moddism.godohosting.com//goods/1000000680_main_064.jpg"
											class="card-img-top" alt="2023년 삼기농협 친환경 무농약 신동진 탑마루 쌀 10kg">
										</a>
										<div class="card-body">
											<h5 class="card-title">2023년 삼기농협 친환경 무농약 신동진 탑마루 쌀 10kg</h5>
											<p class="card-text text-muted">
												<del>51,600원</del>
											</p>
											<p class="card-text">
												<strong>42,900원</strong>
											</p>
										</div>
									</div>
								</div>
								상품 1
								<div class="col-md-2 mb-4">
									<div class="card h-100">
										<a href="../goods/goods_view.php?goodsNo=1000001605"> <img
											src="http://moddism.godohosting.com//goods/23/10/40/1000001605/1000001605_main_09.jpg"
											class="card-img-top" alt="2023년 삼기농협 친환경 무농약 신동진 탑마루 쌀 4kg">
										</a>
										<div class="card-body">
											<h5 class="card-title">2023년 삼기농협 친환경 무농약 신동진 탑마루 쌀 4kg</h5>
											<p class="card-text text-muted">
												<del>25,000원</del>
											</p>
											<p class="card-text">
												<strong>16,500원</strong>
											</p>
										</div>
									</div>
								</div>
								>
								상품 2
								<div class="col-md-2 mb-4">
									<div class="card h-100">
										<a href="../goods/goods_view.php?goodsNo=1000001583"> <img
											src="http://moddism.godohosting.com//goods/23/04/16/1000001583/1000001583_main_055.jpg"
											class="card-img-top"
											alt="7-8가지의 고품질 곡물로 구성된 구평주안농장 혼합곡 1.5kg/2kg/4kg">
										</a>
										<div class="card-body">
											<h5 class="card-title">7-8가지의 고품질 곡물로 구성된 구평주안농장 혼합곡
												1.5kg/2kg/4kg</h5>
											<p class="card-text">
												<strong>10,500원</strong>
											</p>
										</div>
									</div>
								</div>
								상품 3
								<div class="col-md-2 mb-4">
									<div class="card h-100">
										<a href="../goods/goods_view.php?goodsNo=1000001005"> <img
											src="http://moddism.godohosting.com//goods/1000001005_main_047.jpg"
											class="card-img-top" alt="밀알연구회 무농약 밀쌀 2kg">
										</a>
										<div class="card-body">
											<h5 class="card-title">밀알연구회 무농약 밀쌀 2kg</h5>
											<p class="card-text">
												<strong>8,000원</strong>
											</p>
										</div>
									</div>
								</div>
								상품 4
								<div class="col-md-2 mb-4">
									<div class="card h-100">
										<a href="../goods/goods_view.php?goodsNo=1000000681"> <img
											src="http://moddism.godohosting.com//goods/1000000681_main_029.jpg"
											class="card-img-top" alt="2023년 삼기농협 친환경 무농약 신동진 탑마루 쌀 20kg">
										</a>
										<div class="card-body">
											<h5 class="card-title">2023년 삼기농협 친환경 무농약 신동진 탑마루 쌀 20kg</h5>
											<p class="card-text text-muted">
												<del>94,900원</del>
											</p>
											<p class="card-text">
												<strong>79,500원</strong>
											</p>
										</div>
									</div>
								</div>
								상품 5
								<div class="col-md-2 mb-4">
									<div class="card h-100">
										<a href="../goods/goods_view.php?goodsNo=1000000680"> <img
											src="http://moddism.godohosting.com//goods/1000000680_main_064.jpg"
											class="card-img-top" alt="2023년 삼기농협 친환경 무농약 신동진 탑마루 쌀 10kg">
										</a>
										<div class="card-body">
											<h5 class="card-title">2023년 삼기농협 친환경 무농약 신동진 탑마루 쌀 10kg</h5>
											<p class="card-text text-muted">
												<del>51,600원</del>
											</p>
											<p class="card-text">
												<strong>42,900원</strong>
											</p>
										</div>
									</div>
								</div> -->
						</div>
					</div>
				</div>
				<!--  -->
				<div class="pagination">
					<div class="pagination">
						<ul>
							<li class="on"><span>1</span></li>
						</ul>
					</div>
				</div>

			</div>
			<!-- //goods_list_item -->
			<script type="text/javascript">
                        $(document).ready(function () {

                            $('form[name=frmList] select[name=pageNum]').change(function () {
                                $('form[name=frmList]').get(0).submit();
                            });

                            $('form[name=frmList] input[name=sort]').click(function () {
                                $('form[name=frmList]').get(0).submit();
                            });

                            $(':radio[name="sort"][value=""]').prop("checked", "checked")
                            $(':radio[name="sort"][value=""]').next().addClass('on');

                        });
                    </script>
		</div>
	</div>
	</div>
	</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script>
        document.querySelectorAll('.location_select').forEach(function (select) {
            select.addEventListener('click', function () {
                var ul = this.querySelector('ul');
                if (ul.style.display === 'block') {
                    ul.style.display = 'none';
                } else {
                    document.querySelectorAll('.location_select ul').forEach(function (otherUl) {
                        otherUl.style.display = 'none';
                    });
                    ul.style.display = 'block';
                }
            });
        });

        document.addEventListener('click', function (event) {
            if (!event.target.closest('.location_select')) {
                document.querySelectorAll('.location_select ul').forEach(function (ul) {
                    ul.style.display = 'none';
                });
            }
        });
        
    </script>
	<!-- 배너 클릭시 초록색들어오는것 -->
	<script>
    document.addEventListener('DOMContentLoaded', function() {
        const categoryItems = document.querySelectorAll('.goods_item_category li');

        categoryItems.forEach(item => {
            item.addEventListener('click', function() {
                categoryItems.forEach(li => li.classList.remove('on'));
                this.classList.add('on');
            });
        });
    });
</script>
</body>
</html>