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
function chk(){
	const expPwText = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*])[A-Za-z\d!@#$%^&*]{8,}$/;
	let isValid = true;
	
	if($('input[id="passwordMsg"]').val().length == 0){ // if( $('#id').val() == "" ) 도 가능
			$("#memPw_error").show();
			$('input[id="passwordMsg"]').css("border","1px solid #ab3e55");
			isValid = false;
			return false;
	}
	if($('input[id="newPwRe"]').val().length == 0){ // if( $('#id').val() == "" ) 도 가능
			$("#memPwCf_error").show();
			$('input[id="newPwRe"]').css("border","1px solid #ab3e55");
			isValid = false;
			return false;
	}
	if(!expPwText.test($('input[id="passwordMsg"]').val())){
			$("#memPw_error").text('영문 대문자와 특수문자, 숫자를 포함하여 8자 이상 입력해주세요.');
			$("#memPw_error").show();
			$('input[id="passwordMsg"]').css("border","1px solid #ab3e55");
			isValid = false;
			return false;
	}
	
	if (frm.mPw.value!=frm.confirmPw.value){
		$('#pwConfirm').show();
		$('input[id="passwordMsg"]').css("border","1px solid #ab3e55");
		$('input[id="newPwRe"]').css("border","1px solid #ab3e55");
		frm.mPw.focus();
		frm.mPw.value = "";
		frm.confirmPw.value = "";
		return false;
	}
	if (!isValid) {
        return false;
    }
}
</script>
</head>
<body>
	<div class="joinForm">
		<div class="location_wrap">
			<div class="location_cont">
				<em> <a href="/greenmall/view/display/main.wb">Home</a>> 비밀번호
					새로 등록
				</em>
			</div>
		</div>
		<div class="content_box">
			<div class="member_wrap">
				<div class="member_title">
					<h2>비밀번호 찾기</h2>
				</div>
				<div class="member_cont">
					<form action="/greenmall/view/member/findPasswordCheck.wb"
						class="formReset" id="formReset" method="post"
						onsubmit="return chk()">
						<input type="hidden" name="mId" id="mId" value="${mId}">
						<div class="find_password_reset_box">
							<h3>비밀번호 변경</h3>
							<p>새로운 비밀번호를 입력해주세요.</p>
							<div class="login_input" id="reset_login_input">
								<div class="js_input_pw">
									<div class="member_warning">
										<input type="password"
											placeholder="영문 대문자와 특수문자, 숫자를 포함하여 8자 이상 입력해주세요."
											id="passwordMsg" name="mPw">
									</div>
									<div id="memPw_error" class="member_pass" style="display: none">필수항목 입니다.</div>
								</div>
								<div class="js_input_pw">
									<div class="member_warning">
										<input type="password" placeholder="새 비밀번호 확인" id="newPwRe"
											name="confirmPw">
									</div>
									 <div id="memPwCf_error" class="member_pass" style="display: none">필수항목 입니다.</div>        
                                     <div id="pwConfirm" class="text_warning" style="display: none">비밀번호를 다시 확인해주세요.</div>
								</div>
							</div>
							<div class="btn_center">
								<button type="submit" id="btnConfirm" class="btn_next">다음</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>