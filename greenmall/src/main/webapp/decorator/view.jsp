<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="deco"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그린몰</title>
<link rel="icon" href="/greenmall/images/favicon.png">
<style type="text/css">
@import url("/greenmall/css/display/main.css");
@import url("/greenmall/css/index.css");
@import url("/greenmall/css/display/scroll.css");
</style>
<deco:head></deco:head>
</head>
<body>
	<div id="wrap">
		<jsp:include page="header.jsp"></jsp:include>
		<deco:body></deco:body>
		<jsp:include page="footer.jsp"></jsp:include>
		<div class="scroll_wrap">
			<div id="scroll_right" class="ban_fixed">
				<div class="right_banner">
					<a href="#">
						<img alt="" src="/greenmall/images/scroll/btn_scroll_event.jpg">
					</a>
				</div>
				<div class="scroll_right_cont">
					<h4>TODAY <br>
					VIEW</h4>
					<div class="scr_paging" style="display: none;">
						<button title="최근본 이전 상품">
							<img alt="" src="/greenmall/images/scroll/btn_scroll_prev.png">
						</button>
						<span>
							<strong class="js_current">0</strong>
							<span class="js_total" style="float:none;width:auto;">0</span>
						</span>
						<button title="최근본 다음 상품">
							<img alt="" src="/greenmall/images/scroll/btn_scroll_next.png">
						</button>
					</div>
				</div>
				<span class="btn_scroll_top">
					<a href="#TOP">
						<img alt="상단으로 이동" src="/greenmall/images/scroll/btn_scroll_top.png">
					</a>
				</span>
				<script type="text/javascript">
				   // DOM 로드
			    $(function () {
			        $('.scroll_right_cont').todayGoods();
			    });

			    // 최근본상품 리스트 페이징 처리 플러그인
			    $.fn.todayGoods = function () {
			        // 기본값 세팅
			        var self = $(this);
			        var setting = {
			            page: 1,
			            total: 0,
			            rowno: 5
			        };
			        var element = {
			            goodsList: self.find('ul > li'),
			            closeButton: self.find('ul > li > button'),
			            prev: self.find('.scr_paging > .bnt_scroll_prev'),
			            next: self.find('.scr_paging > .bnt_scroll_next'),
			            paging: self.find('.scr_paging')
			        };

			        // 페이지 갯수 설정
			        setting.total = Math.ceil(element.goodsList.length / setting.rowno);

			        // 화면 초기화 및 갱신 (페이지 및 갯수 표기)
			        var init = function () {
			            if (setting.total == 0) {
			                setting.page = 0;
			                element.paging.hide();
			            }
			            self.find('ul').hide().eq(setting.page - 1).show();
			            self.find('.scr_paging .js_current').text(setting.page);
			            self.find('.scr_paging .js_total').text(setting.total);
			        }

			        // 삭제버튼 클릭
			        element.closeButton.click(function(e){
			            $.post('../goods/goods_ps.php', {
			                'mode': 'delete_today_goods',
			                'goodsNo': $(this).data('goods-no')
			            }, function (data, status) {
			                // 값이 없는 경우 성공
			                if (status == 'success' && data == '') {
			                    location.reload(true);
			                }
			                else {
			                    console.log('request fail. ajax status (' + status + ')');
			                }
			            });
			        });

			        // 이전버튼 클릭
			        element.prev.click(function (e) {
			            setting.page = 1 == setting.page ? setting.total : setting.page - 1;
			            init();
			        });

			        // 다음버튼 클릭
			        element.next.click(function (e) {
			            setting.page = setting.total == setting.page ? 1 : setting.page + 1;
			            init();
			        });

			        // 화면 초기화
			        init();
			    };
				</script>
			</div>
		</div>
	</div>
</body>
</html>