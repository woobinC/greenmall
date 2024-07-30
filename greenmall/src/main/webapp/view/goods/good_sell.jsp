<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div id="container">
        <div id="contents">
            <!-- 본문 시작 -->

            <div class="sub_content">
                <!-- //location_wrap -->

                <!-- //side_cont -->
                <div class="content">
                    <div class="location_wrap">
                        <div class="location_cont">
                            <em><a href="#" class="local_home">HOME</a> &nbsp;</em>
                            <span>&gt; </span>
                            <div class="location_select">
                                <div class="location_tit"><a href="#"><span>곡류</span></a></div>
                                <ul style="display:none">
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
                                <div class="location_tit"><a href="#"><span>쌀</span></a></div>
                                <ul style="display:none;">
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
                                    <li class="on">
                                        <a href="#"><span>쌀 <!--<em>(6)</em>--></span></a>
                                    </li>
                                    <li class="">
                                        <a href="/goods_sell2.html"><span>잡곡류 <!--<em>(3)</em>--></span></a>
                                    </li>
                                </ul>
                            </div>

                            <!-- goods_pick_list 상품 갯수  -->
                            <div class="goods_pick_list">
                                <span class="pick_list_num">상품 <strong>9</strong> 개</span>
                                <form name="frmList" action="">
                                    <input type="hidden" name="cateCd" value="001" />
                                    <div class="pick_list_box">
                                        <ul class="pick_list">
                                            <li>
                                                <input type="radio" id="sort1" class="radio" name="sort" value="" />
                                                <label class="on" for="sort1">추천순</label>
                                            </li>
                                            <li>
                                                <input type="radio" id="sort2" class="radio" name="sort"
                                                    value="sellcnt" />
                                                <label for="sort2">판매인기순</label>
                                            </li>
                                            <li>
                                                <input type="radio" id="sort3" class="radio" name="sort"
                                                    value="price_asc" />
                                                <label for="sort3">낮은가격순</label>
                                            </li>
                                            <li>
                                                <input type="radio" id="sort4" class="radio" name="sort"
                                                    value="price_dsc" />
                                                <label for="sort4">높은가격순</label>
                                            </li>
                                            <li>
                                                <input type="radio" id="sort5" class="radio" name="sort"
                                                    value="review" />
                                                <label for="sort5">상품평순</label>
                                            </li>
                                            <li>
                                                <input type="radio" id="sort6" class="radio" name="sort" value="date" />
                                                <label for="sort6">등록일순</label>
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
                                    <!-- 상품 1 -->
                                    <div class="col-md-2 mb-4">
                                        <div class="card h-100">
                                            <a href="./goods_info.html">
                                                <img src="http://moddism.godohosting.com//goods/23/10/40/1000001605/1000001605_main_09.jpg"
                                                    class="card-img-top" alt="2023년 삼기농협 친환경 무농약 신동진 탑마루 쌀 4kg">
                                            </a>
                                            <div class="card-body">
                                                <h5 class="card-title">2023년 삼기농협 친환경 무농약 신동진 탑마루 쌀 4kg</h5>
                                                <p class="card-text text-muted"><del>25,000원</del></p>
                                                <p class="card-text"><strong>16,500원</strong></p>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 상품 2 -->
                                    <div class="col-md-2 mb-4">
                                        <div class="card h-100">
                                            <a href="../goods/goods_view.php?goodsNo=1000001583">
                                                <img src="http://moddism.godohosting.com//goods/23/04/16/1000001583/1000001583_main_055.jpg"
                                                    class="card-img-top"
                                                    alt="7-8가지의 고품질 곡물로 구성된 구평주안농장 혼합곡 1.5kg/2kg/4kg">
                                            </a>
                                            <div class="card-body">
                                                <h5 class="card-title">7-8가지의 고품질 곡물로 구성된 구평주안농장 혼합곡 1.5kg/2kg/4kg</h5>
                                                <p class="card-text"><strong>10,500원</strong></p>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 상품 3 -->
                                    <div class="col-md-2 mb-4">
                                        <div class="card h-100">
                                            <a href="../goods/goods_view.php?goodsNo=1000001005">
                                                <img src="http://moddism.godohosting.com//goods/1000001005_main_047.jpg"
                                                    class="card-img-top" alt="밀알연구회 무농약 밀쌀 2kg">
                                            </a>
                                            <div class="card-body">
                                                <h5 class="card-title">밀알연구회 무농약 밀쌀 2kg</h5>
                                                <p class="card-text"><strong>8,000원</strong></p>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 상품 4 -->
                                    <div class="col-md-2 mb-4">
                                        <div class="card h-100">
                                            <a href="../goods/goods_view.php?goodsNo=1000000681">
                                                <img src="http://moddism.godohosting.com//goods/1000000681_main_029.jpg"
                                                    class="card-img-top" alt="2023년 삼기농협 친환경 무농약 신동진 탑마루 쌀 20kg">
                                            </a>
                                            <div class="card-body">
                                                <h5 class="card-title">2023년 삼기농협 친환경 무농약 신동진 탑마루 쌀 20kg</h5>
                                                <p class="card-text text-muted"><del>94,900원</del></p>
                                                <p class="card-text"><strong>79,500원</strong></p>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 상품 5 -->
                                    <div class="col-md-2 mb-4">
                                        <div class="card h-100">
                                            <a href="../goods/goods_view.php?goodsNo=1000000680">
                                                <img src="http://moddism.godohosting.com//goods/1000000680_main_064.jpg"
                                                    class="card-img-top" alt="2023년 삼기농협 친환경 무농약 신동진 탑마루 쌀 10kg">
                                            </a>
                                            <div class="card-body">
                                                <h5 class="card-title">2023년 삼기농협 친환경 무농약 신동진 탑마루 쌀 10kg</h5>
                                                <p class="card-text text-muted"><del>51,600원</del></p>
                                                <p class="card-text"><strong>42,900원</strong></p>
                                            </div>
                                        </div>
                                    </div>
                                    <!--상품 1 -->
                                    <div class="col-md-2 mb-4">
                                        <div class="card h-100">
                                            <a href="../goods/goods_view.php?goodsNo=1000001605">
                                                <img src="http://moddism.godohosting.com//goods/23/10/40/1000001605/1000001605_main_09.jpg"
                                                    class="card-img-top" alt="2023년 삼기농협 친환경 무농약 신동진 탑마루 쌀 4kg">
                                            </a>
                                            <div class="card-body">
                                                <h5 class="card-title">2023년 삼기농협 친환경 무농약 신동진 탑마루 쌀 4kg</h5>
                                                <p class="card-text text-muted"><del>25,000원</del></p>
                                                <p class="card-text"><strong>16,500원</strong></p>
                                            </div>
                                        </div>
                                    </div>
                                    >
                                    <!-- 상품 2 -->
                                    <div class="col-md-2 mb-4">
                                        <div class="card h-100">
                                            <a href="../goods/goods_view.php?goodsNo=1000001583">
                                                <img src="http://moddism.godohosting.com//goods/23/04/16/1000001583/1000001583_main_055.jpg"
                                                    class="card-img-top"
                                                    alt="7-8가지의 고품질 곡물로 구성된 구평주안농장 혼합곡 1.5kg/2kg/4kg">
                                            </a>
                                            <div class="card-body">
                                                <h5 class="card-title">7-8가지의 고품질 곡물로 구성된 구평주안농장 혼합곡 1.5kg/2kg/4kg</h5>
                                                <p class="card-text"><strong>10,500원</strong></p>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 상품 3 -->
                                    <div class="col-md-2 mb-4">
                                        <div class="card h-100">
                                            <a href="../goods/goods_view.php?goodsNo=1000001005">
                                                <img src="http://moddism.godohosting.com//goods/1000001005_main_047.jpg"
                                                    class="card-img-top" alt="밀알연구회 무농약 밀쌀 2kg">
                                            </a>
                                            <div class="card-body">
                                                <h5 class="card-title">밀알연구회 무농약 밀쌀 2kg</h5>
                                                <p class="card-text"><strong>8,000원</strong></p>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 상품 4 -->
                                    <div class="col-md-2 mb-4">
                                        <div class="card h-100">
                                            <a href="../goods/goods_view.php?goodsNo=1000000681">
                                                <img src="http://moddism.godohosting.com//goods/1000000681_main_029.jpg"
                                                    class="card-img-top" alt="2023년 삼기농협 친환경 무농약 신동진 탑마루 쌀 20kg">
                                            </a>
                                            <div class="card-body">
                                                <h5 class="card-title">2023년 삼기농협 친환경 무농약 신동진 탑마루 쌀 20kg</h5>
                                                <p class="card-text text-muted"><del>94,900원</del></p>
                                                <p class="card-text"><strong>79,500원</strong></p>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 상품 5 -->
                                    <div class="col-md-2 mb-4">
                                        <div class="card h-100">
                                            <a href="../goods/goods_view.php?goodsNo=1000000680">
                                                <img src="http://moddism.godohosting.com//goods/1000000680_main_064.jpg"
                                                    class="card-img-top" alt="2023년 삼기농협 친환경 무농약 신동진 탑마루 쌀 10kg">
                                            </a>
                                            <div class="card-body">
                                                <h5 class="card-title">2023년 삼기농협 친환경 무농약 신동진 탑마루 쌀 10kg</h5>
                                                <p class="card-text text-muted"><del>51,600원</del></p>
                                                <p class="card-text"><strong>42,900원</strong></p>
                                            </div>
                                        </div>
                                    </div>
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