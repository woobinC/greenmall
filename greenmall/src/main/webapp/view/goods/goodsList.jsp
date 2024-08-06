<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

#pprice {
	color: #417517;
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
@media ( max-width : 768px) {
	.col-md-2 {
		flex: 0 0 50%;
		max-width: 50%;
	}
}

.page button {
	display: block;
	font-weight: bold;
	color: #fff;
	background: #7a7d81;
	border-radius: 20px;
	padding: 0 !important;
	height: 30px;
	width: 30px;
	font-size: 17px;
	line-height: 30px;
	vertical-align: middle;
}
</style>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
        </script>
<link rel="stylesheet" type="text/css" href='https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css'>
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
	
						<!-- //location_wrap -->
						<div class="goods_list_item">
							<div class="goods_list_item_tit">
								<c:forEach var="category" items="${cateList}">
									<c:if test="${category.cnum == param.c_Num}">
										<h2>${category.cname}</h2>
									</c:if>
								</c:forEach>
							</div>
							<div class="goods_item_category">
								<ul>
									<c:forEach var="category" items="${cateList}">
										<c:if test="${category.cnum%100!=0}">
											<li class="${category.cnum == param.c_Num ? 'on' : ''}">
												<a href="/greenmall/view/goods/goodsList.gw?c_Num=${category.cnum}">
													<span>${category.cname}</span>
												</a>
											</li>

										</c:if>
									</c:forEach>
								</ul>
							</div>

						</div>
					</div>

					<!-- goods_pick_list 상품 갯수  -->
					<div class="goods_pick_list">
						<span class="pick_list_num">상품 <strong>${list.size()}</strong> 개
						</span>
						<form name="frmList" action="">
							<input type="hidden" name="cateCd" value="001" />
							<div class="pick_list_box">
								<ul class="pick_list">
									<li>
										<input type="radio" id="sort1" class="radio" name="sort" value="" /> <label class="on" for="sort1">추천순</label>
									</li>
									<li>
										<input type="radio" id="sort2" class="radio" name="sort" value="sellcnt" /> <label for="sort2">판매인기순</label>
									</li>
									<li>
										<input type="radio" id="sort3" class="radio" name="sort" value="price_asc" /> <label for="sort3">낮은가격순</label>
									</li>
									<li>
										<input type="radio" id="sort4" class="radio" name="sort" value="price_dsc" /> <label for="sort4">높은가격순</label>
									</li>
									<li>
										<input type="radio" id="sort5" class="radio" name="sort" value="review" /> <label for="sort5">상품평순</label>
									</li>
									<li>
										<input type="radio" id="sort6" class="radio" name="sort" value="date" /> <label for="sort6">등록일순</label>
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
											<img src="/greenmall/images/goods/${goods.p_Img1 }" class="card-img-top" onclick="location.href='/greenmall/view/goods/goodsInfo.gw?p_No=${goods.p_No}'">

											<div class="card-body">
												<h5 class="card-title" onclick="location.href='/greenmall/view/goods/goodsInfo.gw?p_No=${goods.p_No}'">${goods.p_Name }</h5>

												<p class="card-text text-muted" onclick="location.href='/greenmall/view/goods/goodsInfo.gw?p_No=${goods.p_No}'">
													<del>${goods.p_Price }</del>
												</p>
												<p class="card-text" onclick="location.href='/greenmall/view/goods/goodsInfo.gw?p_No=${goods.p_No}'" id="pprice">
													<strong style="color: #417517"><fmt:formatNumber value="${goods.p_Price- goods.p_Cnt* goods.p_Price/100 }" pattern="#">
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
								<button class="pageBtn prevBtn" onclick="location.href='goodsList.gw?pageNum=${startPage-1}'">◀</button>
							</c:if>
							<c:forEach var="i" begin="${startPage}" end="${endPage}">
								<button class="pageBtn" onclick="location.href='goodList.gw?pageNum=${i}'">${i}</button>
							</c:forEach>
							<!-- 아직 보여줄께 남아있다 -->
							<c:if test="${endPage < totalPage}">
								<button class="pageBtn nextBtn" onclick="location.href='goodList.gw?pageNum=${endPage+1}'">▶</button>
							</c:if>
						</div>


					</div>
				</div>
			</div>
			<!--  -->


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

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
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