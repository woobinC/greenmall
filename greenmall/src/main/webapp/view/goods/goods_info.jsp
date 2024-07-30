<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
        </script>
    <link rel="stylesheet" type="text/css"
        href='https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css'>
      <style>
        @import url("/greenmall/css/goods/goods_info.css");
    </style>

<title>Insert title here</title>
</head>
<body>
    <div id="container">
        <div class="contents">
            <div class="sub_content">
                <div class="content_box">
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
                        <div class="container mt-5">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="item_photo_big mb-3">
                                        <img src="http://moddism.godohosting.com//goods/23/10/40/1000001605/1000001605_detail_010.jpg"
                                            class="img-fluid" alt="2023년 삼기농협 친환경 무농약 신동진 탑마루 쌀 4kg"
                                            title="2023년 삼기농협 친환경 무농약 신동진 탑마루 쌀 4kg">
                                        <a href="#lyZoom" class="btn btn-outline-secondary btn-sm mt-2"
                                            data-bs-toggle="modal" data-bs-target="#zoomModal">이미지 확대 보기</a>
                                    </div>
                                    <div id="testZoom" style="display:none">
                                        <img src="http://moddism.godohosting.com//goods/23/10/40/1000001605/1000001605_magnify_074.jpg"
                                            class="img-fluid" alt="2023년 삼기농협 친환경 무농약 신동진 탑마루 쌀 4kg"
                                            title="2023년 삼기농협 친환경 무농약 신동진 탑마루 쌀 4kg">
                                    </div>
                                    <div class="item_photo_slide">
                                        <button type="button" class="btn btn-outline-secondary btn-sm me-2">이전</button>
                                        <img src="http://moddism.godohosting.com//goods/23/10/40/1000001605/t50_1000001605_detail_010.jpg"
                                            class="img-thumbnail" alt="2023년 삼기농협 친환경 무농약 신동진 탑마루 쌀 4kg"
                                            title="2023년 삼기농협 친환경 무농약 신동진 탑마루 쌀 4kg">
                                        <button type="button" class="btn btn-outline-secondary btn-sm ms-2">다음</button>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <form name="frmView" id="frmView" method="post">
                                        <input type="hidden" name="mode" value="cartIn">
                                        <input type="hidden" name="scmNo" value="1">
                                        <input type="hidden" name="cartMode" value="">
                                        <input type="hidden" name="set_goods_price" value="16500">
                                        <input type="hidden" id="set_goods_fixedPrice" name="set_goods_fixedPrice"
                                            value="25000.00">
                                        <input type="hidden" name="set_goods_mileage" value="0">
                                        <input type="hidden" name="set_goods_stock" value="∞">
                                        <input type="hidden" name="set_coupon_dc_price" value="16500.00">
                                        <input type="hidden" id="set_goods_total_price" name="set_goods_total_price"
                                            value="0">
                                        <input type="hidden" id="set_option_price" name="set_option_price" value="0">
                                        <input type="hidden" id="set_option_text_price" name="set_option_text_price"
                                            value="0">
                                        <input type="hidden" id="set_add_goods_price" name="set_add_goods_price"
                                            value="0">
                                        <input type="hidden" name="set_total_price" value="16500">
                                        <input type="hidden" name="mileageFl" value="c">
                                        <input type="hidden" name="mileageGoods" value="0.00">
                                        <input type="hidden" name="mileageGoodsUnit" value="percent">
                                        <input type="hidden" name="goodsDiscountFl" value="n">
                                        <input type="hidden" name="goodsDiscount" value="0.00">
                                        <input type="hidden" name="goodsDiscountUnit" value="percent">
                                        <input type="hidden" name="taxFreeFl" value="f">
                                        <input type="hidden" name="taxPercent" value="10.0">
                                        <input type="hidden" name="scmNo" value="1">
                                        <input type="hidden" name="brandCd" value="">
                                        <input type="hidden" name="cateCd" value="001001">
                                        <input type="hidden" id="set_dc_price" value="0">
                                        <input type="hidden" id="goodsOptionCnt" value="1">
                                        <input type="hidden" name="optionFl" value="n">
                                        <input type="hidden" name="goodsDeliveryFl" value="y">
                                        <input type="hidden" name="sameGoodsDeliveryFl" value="n">
                                        <input type="hidden" name="useBundleGoods" value="1">
                                        <input type="hidden" name="ac_id" value="">
                                        <input type="hidden" name="event_id" value="">

                                        <div class="item_info_box">
                                            <h3>2023년 삼기농협 친환경 무농약 신동진 탑마루 쌀 4kg</h3>
                                            <div class="item_detail_list mb-3">
                                                <dl class="row">
                                                    <dt class="col-sm-3">정가</dt>
                                                    <dd class="col-sm-9">
                                                        <del>25,000원</del>
                                                    </dd>
                                                </dl>
                                                <dl class="row">
                                                    <dt class="col-sm-3">판매가</dt>
                                                    <dd class="col-sm-9">
                                                        <strong name="sell_price">16,500원</strong>
                                                    </dd>
                                                </dl>
                                                <dl class="row">
                                                    <dt class="col-sm-3">
                                                        구매혜택
                                                        <span class="item_mileage"><img src="../img/icon/goods_icon/icon_mileage.gif" alt="혜택 이미지"></span>
                                                    </dt>
                                                    <dd class="col-sm-8">
                                                        적립마일리지: <strong id="mileage" >0원</strong>
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
                                                            <td>2023년 삼기농협 친환경 무농약 신동진 탑마루 쌀 4kg</td>
                                                            <td>
                                                                <input type="number" name="goodsCnt[]"
                                                                    class="form-control" value="1" min="1">
                                                            </td>
                                                            <td>16,500원</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                                <div class="item_price_cont">
                                                    <dl class="row">
                                                        <dt class="col-sm-6">총 상품금액</dt>
                                                        <dd class="col-sm-6"><strong>16,500원</strong></dd>
                                                    </dl>
                                                    <dl class="row">
                                                        <dt class="col-sm-6">총 할인금액</dt>
                                                        <dd class="col-sm-6"><strong>0원</strong></dd>
                                                    </dl>
                                                    <dl class="row">
                                                        <dt class="col-sm-6">총 합계금액</dt>
                                                        <dd class="col-sm-6"><strong>16,500원</strong></dd>
                                                    </dl>
                                                </div>
                                            </div>
                                            <div class="btn_choice_box mb-3">
                                                <button id="btn_add_cart" type="button" class="btn btn-primary me-2"
                                                    data-bs-toggle="modal" data-bs-target="#addCartLayer">장바구니</button>
                                                <button id="btn_add_wish" type="button" class="btn btn-secondary me-2"
                                                    data-bs-toggle="modal" data-bs-target="#addWishLayer">찜하기</button>
                                                <button id=buy type="button" class="btn btn-success">바로 구매</button>
                                            </div>
                                        </div>
                                </div>
                                </form>
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
                                                <p align="center" style="text-align: center;">
                                                    <img src="http://moddism.godohosting.com//goods/editor/231004/oraganic-rice1_132937.jpg"
                                                        title="oraganic-rice1_132937.jpg"
                                                        alt="oraganic-rice1_132937.jpg" class="js-smart-img">
                                                    <br style="clear:both;">
                                                    <img src="http://moddism.godohosting.com//goods/editor/231004/oraganic-rice2_132951.jpg"
                                                        title="oraganic-rice2_132951.jpg"
                                                        alt="oraganic-rice2_132951.jpg" class="js-smart-img">
                                                    <br style="clear:both;">
                                                    <img src="http://moddism.godohosting.com//goods/editor/231004/oraganic-rice3_133000.jpg"
                                                        title="oraganic-rice3_133000.jpg"
                                                        alt="oraganic-rice3_133000.jpg" class="js-smart-img">
                                                    <br style="clear:both;">
                                                    <img src="http://moddism.godohosting.com//goods/editor/231004/oraganic-rice4_133009.jpg"
                                                        title="oraganic-rice4_133009.jpg"
                                                        alt="oraganic-rice4_133009.jpg" class="js-smart-img">
                                                    <br style="clear:both;">
                                                    <img src="http://moddism.godohosting.com//goods/editor/231004/oraganic-rice5_133017.jpg"
                                                        title="oraganic-rice5_133017.jpg"
                                                        alt="oraganic-rice5_133017.jpg" class="js-smart-img">
                                                    <br style="clear:both;">
                                                    <img src="http://moddism.godohosting.com//goods/editor/231004/oraganic-rice6_133025.jpg"
                                                        title="oraganic-rice6_133025.jpg"
                                                        alt="oraganic-rice6_133025.jpg" class="js-smart-img">
                                                    <br style="clear:both;">
                                                    &nbsp;
                                                </p>
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
                                                <span style="font-family: 돋움, dotum;">○ 배송기간: 택배배송은 결제완료 후 2-3일 소요됩니다.
                                                    (토/일/공휴일 제외한 기간)</span>
                                            </p>
                                            <p class="0" style="text-align: center;" align="center">
                                                <span style="font-family: 돋움, dotum;">○ 배송안내</span>
                                            </p>
                                            <p class="0" style="text-align: center;" align="center">
                                                <span style="font-family: 돋움, dotum;">- 오전 9시 전에 입금 확인된 주문건에 한하여 당일출고
                                                    됩니다.</span>
                                            </p>
                                            <p class="0" style="text-align: center;" align="center">
                                                <span style="font-family: 돋움, dotum;">- 오전 9시 이후 주문 및 입금 확인건은 익일
                                                    출고됩니다.</span>
                                            </p>
                                            <p class="0" style="text-align: center;" align="center">
                                                <span style="font-family: 돋움, dotum;">- 상품이 한 박스에 포장되지 않을정도의 수량이나 부피에
                                                    의하여 별도의 추가금액을 지불하셔야하는 경우가 있습니다.</span>
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
                                            <div class="pagination"><ul></ul></div>
                                        </div>
                                        <div class="btn_reviews_box">
                                            <a href="../board/list.php?bdId=goodsreview" class="btn_reviews_more">상품후기
                                                전체보기</a>
                                            <a href="javascript:gd_open_write_popup('goodsreview', '1000001605')"
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
                                            <div class="pagination"><ul></ul></div>
                                            <div class="btn_qna_box">
                                                <a href="../board/list.php?bdId=goodsqa" class="btn_qna_more">상품문의 전체보기</a>
                                                <a href="javascript:gd_open_write_popup('goodsqa', '1000001605')" class="btn_qna_write">상품문의 글쓰기</a>
                                           </div>
                                        </div>
                                    </div>
                                </div>
                                
                            
                            
                            
                            
                            
                            </div>
                            <!-- Modal for zooming image -->
                            <div class="modal fade" id="zoomModal" tabindex="-1" aria-labelledby="zoomModalLabel"
                                aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="zoomModalLabel">이미지 확대 보기</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <img src="http://moddism.godohosting.com//goods/23/10/40/1000001605/1000001605_detail_010.jpg"
                                                class="img-fluid" alt="2023년 삼기농협 친환경 무농약 신동진 탑마루 쌀 4kg">
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary"
                                                data-bs-dismiss="modal">닫기</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- 장바구니 모달 -->
                            <div class="modal fade" id="addCartLayer" tabindex="-1" aria-labelledby="addCartLayerLabel"
                                aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="addCartLayerLabel">장바구니 담기</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <p class="success"><strong>상품이 장바구니에 담겼습니다.</strong><br>바로
                                                확인하시겠습니까?</p>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary"
                                                data-bs-dismiss="modal">취소</button>
                                            <button type="button" class="btn btn-primary btn_move_cart">확인</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- 찜하기 모달 -->
                            <div class="modal fade" id="addWishLayer" tabindex="-1" aria-labelledby="addWishLayerLabel"
                                aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="addWishLayerLabel">찜 리스트 담기</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <p class="success"><strong>상품이 찜 리스트에 담겼습니다.</strong><br>바로
                                                확인하시겠습니까?
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


            <script>
                document.addEventListener("DOMContentLoaded", function() {
                    // 판매가 가져오기
                    const sellPriceElement = document.querySelector("strong[name='sell_price']");
                    const sellPriceText = sellPriceElement.innerText;
                    const sellPrice = parseInt(sellPriceText.replace(/[^0-9]/g, ''), 10);
        
                    // 적립 마일리지 계산 (판매가의 5%)
                    const mileage = sellPrice * 0.05;
        
                    // 적립 마일리지 표시
                    const mileageElement = document.getElementById("mileage");
                    mileageElement.innerText = Math.floor(mileage) + "원";
                });
            </script>
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
</body>
</html>