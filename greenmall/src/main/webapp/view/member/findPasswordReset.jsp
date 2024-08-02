<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/member/font.css" />
<link rel="stylesheet" href="../../css/member/loginJoin.css" />
<script type="text/javascript">
const chk = () => {
	if (frm.mPw.value!=frm.confirmPw.value){
		alert("암호와 암호확인이 다릅니다");
		frm.mPw.focus();
		frm.mPw.value = "";
		frm.confirmPw.value = "";
		return false;
	}
}
</script>
</head>
<body>
<div class="joinForm">
        <div class="location_wrap">
            <div class="location_cont">
                <em>
                    <a href="/greenmall/view/display/main.wb">Home</a>> 비밀번호 새로 등록
                </em>
            </div>
        </div>
        <div class="content_box">
            <div class="member_wrap">
                <div class="member_title">
                    <h2>비밀번호 찾기</h2>
                </div>
                <div class="member_cont">
                    <form action="/greenmall/view/member/findPasswordCheck.wb" class="formReset" id="formReset" method="post">
                    	<input type="hidden" name="mId" id="mId" value="${mId}">
                        <div class="find_password_reset_box">
                            <h3>비밀번호 변경</h3>
                            <p>새로운 비밀번호를 입력해주세요. </p>
                            <div class="login_input" id="reset_login_input">
                                <div class="js_input_pw">
                                    <div class="member_warning">
                                        <input type="password" placeholder="영문대/소문자, 숫자, 특수문자 중 2가지 이상 조합하세요"
                                            id="passwordMsg" name="mPw">
                                    </div>
                                </div>
                                <div class="js_input_pw">
                                    <div class="member_warning">
                                        <input type="password" placeholder="새 비밀번호 확인" id="newPwRe" name="confirmPw">
                                    </div>
                                </div>
                            </div>
                            <div class="btn_center">
                                <button type="submit" id="btnConfirm" class="btn_next" onclick="return chk()">다음</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>