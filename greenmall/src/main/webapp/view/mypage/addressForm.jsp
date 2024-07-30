<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
    @import url("/greenmall/css/index.css");
    @import url("/greenmall/css/mypage/mypage.css");
    @import url("/greenmall/css/mypage/drawal.css");
    @import url("/greenmall/css/mypage/addressForm.css");
  </style>
</head>
<body>
<div class="content">
	<div class="mypage_cont">
		<div class="my_page">
			<div class="mypage_zone_tit">
				<h2>배송지 변경</h2>
			</div> 
			<div class="join_base_wrap">
				<div class="member_cont">
					<form action="#" method="post">
						<input type="hidden" name="mId" value="#">
						<div class="base_info_box">
							<h3>배송지정보</h3>
							<div class="base_info_sec">
								<table>
									<colgroup>
										<col width="25%">
										<col width="75%">
									</colgroup>
									<tbody>
	<tr><th>받는분 성함</th><td><input type="text" name="name" required="required"
		autofocus="autofocus"></td></tr>
	<tr><th>주소</th><td class="member_address">
        <div class="address_postcode">
          	<input type="text" name="zonecode" readonly="readonly" value="" />
          	<button type="button" id="btnPostcode" class="btn_post_search">우편번호검색</button>
          	<input type="hidden" name="zipcode" value="" />
        </div>
        <div class="address_input">
          	<div class="member_warning">
            	<input type="text" name="address" readonly="readonly" value="" />
          	</div>
          	<div class="member_warning js_address_sub">
            	<input type="text" name="addressSub" value="" />
          	</div>
        </div></td></tr>
	<tr><th>요청사항</th><td><input type="text" name="request" required="required"></td></tr>
	<tr><th>기본 배송지</th><td>
		<input type="radio" name="basicAdder" id="y"><label for="y"><span class="radio_text">Yes</span></label>
		<input type="radio" name="basicAdder" id="n"><label for="n"><span class="radio_text">No</span></label>
	</td></tr>
									</tbody>
								</table>
							</div>
						</div>
					</form>
				<div class="btn_center_box">
                	<button type="button" class="btn_member_cancel">취소</button>
                    <button type="button" class="btn_comfirm js_btn_join" value="정보수정">정보수정</button>
               	</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>