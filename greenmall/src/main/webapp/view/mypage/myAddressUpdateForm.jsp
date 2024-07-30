<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <!-- CDN 방식 사용 -->
<script>
	    function execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업을 통한 검색 결과 항목 클릭 시 실행
	                var addr = ''; // 주소_결과값이 없을 경우 공백 
	                var extraAddr = ''; // 참고항목
	
	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 도로명 주소를 선택
	                    addr = data.roadAddress;
	                } else { // 지번 주소를 선택
	                    addr = data.jibunAddress;
	                }
	
	                if(data.userSelectedType === 'R'){
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                } else {
	                    document.getElementById("aAddr").value = '';
	                }
	
	                // 선택된 우편번호와 주소 정보를 input 박스에 넣는다.
	                document.getElementById('aPostCode').value = data.zonecode;
	                document.getElementById("aAddr").value = addr;
	                document.getElementById("aAddr").value += extraAddr;
	                document.getElementById("aAddrDe").focus(); // 우편번호 + 주소 입력이 완료되었음으로 상세주소로 포커스 이동
	            }
	        }).open();
	    }
	    
</script>
</head>
<body>
<div class="content">
	<div class="mypage_cont">
		<div class="my_page">
			<div class="mypage_zone_tit">
				<h2>배송지 수정</h2>
			</div>
			<div class="join_base_wrap">
				<div class="member_cont">
					<form action="myAddressUpdate.wb" method="post">
						<div class="base_info_box">
							<h3>배송지정보</h3>
							<div class="base_info_sec">
								<table>
									<colgroup>
										<col width="25%">
										<col width="75%">
									</colgroup>
									<tbody>
	<tr><th>받는분 성함</th><td><input type="text" name="aName" required="required"
		autofocus="autofocus" value="${memberaddress.aName}"></td></tr>
	<tr><th>주소</th><td class="member_address">
        <div class="address_postcode">
          	<input type="text" name="aPostCode" id="aPostCode" readonly="readonly" value="" />
          	<button type="button" id="btnPostCode" class="btn_post_search" onclick="execDaumPostcode()">우편번호검색</button>
        </div>
        <div class="address_input">
          	<div class="member_warning">
            	<input type="text" name="aAddr" id="aAddr" readonly="readonly" value="" />
          	</div>
          	<div class="member_warning js_address_sub">
            	<input type="text" name="aAddrDe" id="aAddrDe" value="" />
          	</div>
        </div></td></tr>
	<tr><th>요청사항</th><td><input type="text" name="aRequest" required="required" value="${memberaddress.aRequest}"></td></tr>
	<tr><th>기본 배송지</th><td>
		<input type="radio" name="basicAddr" id="y" value="y"><label for="y"><span class="radio_text">Yes</span></label>
		<input type="radio" name="basicAddr" id="n" value="n"><label for="n"><span class="radio_text">No</span></label>
	</td></tr>
	<tr><th colspan="2"><div class="btn_center_box">
                	<button type="button" class="btn_member_cancel" onclick="location.href='deliveryAddress.wb'">취소</button>
                    <button type="submit" class="btn_comfirm js_btn_join" onsubmit="location.href='myAddressUpdate.wb'">수정완료</button>
               	</div></th></tr>
									</tbody>
								</table>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>