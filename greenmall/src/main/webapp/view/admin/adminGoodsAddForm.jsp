<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
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
			<div class="join_base_wrap">
				<div class="member_cont">
					<form action="#" method="post">
						<input type="hidden" name="mId" value="#">
						<div class="base_info_box">
							<h3>상품추가</h3>
							<div class="base_info_sec">
								<table>
									<colgroup>
										<col width="25%">
										<col width="75%">
									</colgroup>
									<tbody>
	<tr><th>상품명</th><td><input type="text" name="name" required="required"
		autofocus="autofocus"></td></tr>
	<tr><th>카테고리</th><td><input type="text" name="request" required="required"></td></tr>
	<tr><th>가격</th><td>
		<input type="number" name="basicAdder" required="required"> 원</td></tr>
	<tr><th>할인율</th><td>
		<input type="number" name="basicAdder" required="required"> %</td></tr>
	<tr><th>수량</th><td>
		<input type="number" name="basicAdder" required="required"> 개</td></tr>
	<tr><th>이미지1</th><td>
		<input type="file" name="basicAdder" required="required"></td></tr>
	<tr><th>이미지2</th><td>
		<input type="file" name="basicAdder" required="required"></td></tr>
									</tbody>
								</table>
							</div>
						</div>
					</form>
				<div class="btn_center_box">
                	<button type="button" class="btn_member_cancel" 
                		onclick="location.href='/greenmall/view/admin/adminGoodsList'">취소</button>
                    <button type="button" class="btn_comfirm js_btn_join">정보수정</button>
               	</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>