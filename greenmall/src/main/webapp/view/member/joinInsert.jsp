<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/member/font.css" />
<link rel="stylesheet" href="../../css/member/loginJoin.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    // 초기화: 첫 번째 라디오 버튼을 선택한 상태로 설정
    $("#customer").prop("checked", true);
    
    // 라디오 버튼 클릭 이벤트 핸들러
    $(".radio_btn").change(function() {
        var isChecked = $(this).prop("checked");
        
        // 모든 라디오 버튼의 체크 상태를 false로 설정
        $(".radio_btn").prop("checked", false);
        
        // 클릭한 라디오 버튼의 체크 상태를 변경
        if (isChecked) {
            $(this).prop("checked", true);
            
            // 사업자회원 라디오 버튼이 선택되었을 때 .business_info_box를 보이게 함
            if ($(this).attr("id") === "business") {
                $(".business_info_box").show();
            } else {
                $(".business_info_box").hide();
            }
        }
    });
});
const chk = () => {
	if (frm.mPw.value!=frm.confirmPw.value){
		alert("암호와 암호확인이 다릅니다");
		frm.mPw.focus();
		frm.mPw.value = "";
		frm.confirmPw.value = "";
		return false;
	}
}
const IdChk = () => {
    if (!$('#mId').val()) {
        alert("아이디를 입력하고 체크하시오");
        $('#mId').focus();
        return false;
    }
    $.post('confirm.wb', { id: $('#mId').val() }, function(data) {
        $('#err').html(data);
    });
}
function emailSelect(selectEmail){
	document.frm.mEmail.value  = selectEmail.value;
}
function confirmNext() {
	 let isValid = true;
	if($('input[id="mId"]').val().length == 0){ // if( $('#id').val() == "" ) 도 가능
		$("#memId_error").show();
		$('input[id="mId"]').css("border","1px solid #ab3e55");
		isValid = false;
	}
	if($('input[id="mName"]').val().length == 0){ // if( $('#id').val() == "" ) 도 가능
		$("#memNm_error").show();
		$('input[id="mName"]').css("border","1px solid #ab3e55");
		isValid = false;
	}
	
	if($('input[id="mPw"]').val().length == 0){ // if( $('#id').val() == "" ) 도 가능
		$("#memPw_error").show();
		$('input[id="mPw"]').css("border","1px solid #ab3e55");
		isValid = false;
	}
	if($('input[id="confirmPw"]').val().length == 0){ // if( $('#id').val() == "" ) 도 가능
		$("#memPwCf_error").show();
		$('input[id="confirmPw"]').css("border","1px solid #ab3e55");
		isValid = false;
	}
	if($('input[id="mEmail"]').val().length == 0){ // if( $('#id').val() == "" ) 도 가능
		$("#memEmail_error").show();
		$('input[id="mEmail"]').css("border","1px solid #ab3e55");
		isValid = false;
	}
	if (frm.mPw.value!=frm.confirmPw.value){
		if($("#memPwCf_error").show()){
			$("#memPwCf_error").hide();
			$('#pwConfirm').show();
		}else{
			$('#pwConfirm').show();
		}
		frm.mPw.focus();
		frm.mPw.value = "";
		frm.confirmPw.value = "";
		return false;
	}
	
	/* if( $('input[name="email"]').val().indexOf('@') == -1 ){      // indexOf 사용
		alert('이메일 형식이 아닙니다.');
		$('input[name="email"]').select();
		return false;
	} */
	 if (!isValid) {
	        return false;
	    }
	
}
</script>
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
	                    document.getElementById("mAddr").value = '';
	                }
	
	                // 선택된 우편번호와 주소 정보를 input 박스에 넣는다.
	                document.getElementById('mPostCode').value = data.zonecode;
	                document.getElementById("mAddr").value = addr;
	                document.getElementById("mAddr").value += extraAddr;
	                document.getElementById("mAddrDe").focus(); // 우편번호 + 주소 입력이 완료되었음으로 상세주소로 포커스 이동
	            }
	        }).open();
	    }
	    function execDaumPostcodeComp() {
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
	                    document.getElementById("compAddr").value = '';
	                }
	
	                // 선택된 우편번호와 주소 정보를 input 박스에 넣는다.
	                document.getElementById('compPostCode').value = data.zonecode;
	                document.getElementById("compAddr").value = addr;
	                document.getElementById("compAddr").value += extraAddr;
	                document.getElementById("compAddrde").focus(); // 우편번호 + 주소 입력이 완료되었음으로 상세주소로 포커스 이동
	            }
	        }).open();
	    }
	</script>
<style type="text/css">
	#memId_error, #memPw_error, #memPwCf_error, #memNm_error, #memEmail_error{
	color: #ab3e55;
	font-size: 12px;
}
</style>
</head>
<body>
<div class="joinForm">
        <div class="location_wrap">
            <div class="location_cont">
                <em>
                    <a href="../display/main.wb">Home</a>> 회원가입 > 정보입력
                </em>
            </div>
        </div>
        <div class="content_box">
            <div class="join_base_wrap">
                <div class="member_title">
                    <h2>회원가입</h2>
                    <ol>
                        <li><span> 01 </span>약관동의 <span><img
                                    src="https://cdn-pro-web-250-117.cdn-nhncommerce.com/moddism_godomall_com/data/skin/front/moment/img/member/icon_join_step_off.png"
                                    alt=""> </span></li>
                        <li class="page_on"><span>&nbsp;02 </span>정보입력 <span><img
                                    src="https://cdn-pro-web-250-117.cdn-nhncommerce.com/moddism_godomall_com/data/skin/front/moment/img/member/icon_join_step_o.png"
                                    alt=""> </span></li>
                        <li><span>&nbsp;03 </span>가입완료 </li>
                    </ol>
                </div>
                <div class="member_cont">
                    <form action="joinAction.wb" class="form_join" method="post" name="frm">
                        <div class="join_type">
                            <h3>가입 종류</h3>
                            <div class="type_select">
                                <div class="form_element">
                                    <ul>
                                        <li>
                                            <input type="radio" id="customer" class="radio_btn" value="customer">
                                            <label for="customer" class="choise_on">개인회원</label>
                                        </li>
                                        <li>
                                            <input type="radio" id="business" class="radio_btn" value="business">
                                            <label for="business" class="choise">사업자회원</label>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="base_info_box">
                            <h3>기본정보</h3>
                            <span class="important">표시는 반드시 입력하셔야하는 항목입니다.</span>
                            <div class="base_info_sec">
                                <table cellspacing="0" cellpadding="0" border="0">
                                    <colgroup>
                                        <col width="25%">
                                        <col width="75%">
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <th><span class="important">아이디</span></th>
                                            <td>
                                                <div class="member_warning"><input type="text" name="mId"
                                                        id="mId"><input type="button" onclick="IdChk()"></div>
                                                <div id="memId_error" class="member_text" style="display: none">필수항목 입니다.</div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th><span class="important">비밀번호</span></th>
                                            <td class="member_pass">
                                                <div class="member_warning"><input type="password" name="mPw"
                                                        id="mPw"></div>
                                                <div id="memPw_error" class="member_pass" style="display: none">필수항목 입니다.</div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th><span class="important">비밀번호 확인</span></th>
                                            <td>
                                                <div class="member_warning"><input type="password" name="confirmPw"
                                                        id="confirmPw"></div>
                                                <div id="memPwCf_error" class="member_pass" style="display: none">필수항목 입니다.</div>        
                                                <div id="pwConfirm" class="text_warning" style="display: none">비밀번호를 다시 확인해주세요.</div>        
                                            </td>
                                        </tr>
                                        <tr>
                                            <th><span class="important">이름</span></th>
                                            <td>
                                                <div class="member_warning"><input type="text" name="mName"
                                                        id="mName"></div>
                                                <div id="memNm_error" class="member_text" style="display: none">필수항목 입니다.</div>        
                                            </td>
                                        </tr>
                                        <tr>
                                            <th><span class="important">이메일</span></th>
                                            <td class="member_email">
                                                <div class="member_warning prior_wrong"><input type="text" name="mEmail" id="mEmail">
                                                    <select name="selectEmail" id="selectEmail" class="select_domain" onchange="emailSelect(selectEmail)">
                                                        <option value="self">직접입력</option>
                                                        <option value="@naver.com">naver.com</option>
                                                        <option value="@daum.com">daum.net</option>
                                                        <option value="@google.com">google.com</option>
                                                        <option value="@hanmail.com">hanmail.net</option>
                                                        <option value="@nate.com">nate.com</option>
                                                    </select>
                                                    
                                                </div>
                                                <div class="member_warning">
                                                    <div id="email_error" class="text_warning" style="display: none;">이메일을 정확하게 입력해주세요.</div>
                                                    <div id="memEmail_error" class="member_text" style="display: none">필수항목 입니다.</div>
                                                </div>
                                                <div class="form_element">
                                                    <input type="checkbox" id="mailling" name="mailling" value="y">
                                                    <label for="mailling" class="check_s">정보/이벤트 메일 수신에 동의합니다.</label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th><span>전화번호</span></th>
                                            <td class="member_address">
                                                <div class="address">
                                                    <div class="telNo">
                                                        <input type="text" id="mTel" name="mTel" placeholder="-없이 입력하세요."
                                                            maxlength="12">
                                                    </div>
                                                    <div class="form_element">
                                                        <input type="checkbox" id="telNo" name="telNo">
                                                        <label for="telNo" class="check_s">정보/이벤트 SMS 수신에 동의합니다.</label>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th><span>주소</span></th>
                                            <td class="member_address">
                                                <div class="address_postcode">
                                                    <input type="text" name="mPostCode" id="mPostCode">
                                                    <button type="button" id="btn_code" class="btn_post" onclick="execDaumPostcode()">우편번호
                                                        검색</button>
                                                </div>
                                                <div class="address_input">
                                                    <div class="member_warning">
                                                        <input type="text" name="mAddr" id="mAddr">
                                                    </div>
                                                    <div class="member_warning">
                                                        <input type="text" name="mAddrDe" id="mAddrDe">
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="business_info_box" style="display: none">
                            <h3>사업자 정보</h3>
                            <div class="business_info_sec">
                                <table cellspacing="0" cellpadding="0" border="0">
                                    <colgroup>
                                        <col width="25%">
                                        <col width="75%">
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <th><span class="important">상호</span></th>
                                            <td>
                                                <div class="member_warning">
                                                    <input type="text" name="company" id="company" maxlength="50">
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th><span class="important">사업자 번호</span></th>
                                            <td>
                                                <div class="member_warning">
                                                    <input type="text" name="busiNo" id="busiNo" maxlength="10"
                                                        placeholder="-없이 입력하세요.">
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th><span class="important">대표자명</span></th>
                                            <td>
                                                <div class="member_warning">
                                                    <input type="text" name="ceo" id="ceo" maxlength="20">
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th><span class="important">주소</span></th>
                                            <td class="member_address">
                                                <div class="address_postcode">
                                                    <div class="member_warning">
                                                        <input type="text" name="comZipCode" id="comZipCode">
                                                        <button type="submit" id="btn_code" class="btn_post" onclick="execDaumPostcodeComp()">우편번호검색</button>
                                                    </div>
                                                </div>
                                                <div class="address_input">
                                                    <div class="member_warning">
                                                        <input type="text" name="comAddress" id="comAddress">
                                                    </div>
                                                    <div class="member_warning">
                                                        <input type="text" name="comAddressSub" id="comAddressSub">
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="btn_center">
                            <button type="button" id="btnPrev" class="btn_prev">취소</button>
                            <button type="submit" id="btnNext" class="btn_next" onclick="confirmNext()">회원가입</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>