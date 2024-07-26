<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/member/font.css" />
<link rel="stylesheet" href="../../css/member/loginJoin.css" />
</head>
<body>
<div class="joinForm">
        <div class="location_wrap">
            <div class="location_cont">
                <em>
                    <a href="#">Home</a>> 비밀번호 새로 등록
                </em>
            </div>
        </div>
        <div class="content_box">
            <div class="member_wrap">
                <div class="member_title">
                    <h2>비밀번호 찾기</h2>
                </div>
                <div class="member_cont">
                    <form action="#" class="formReset" id="formReset">
                        <div class="find_password_reset_box">
                            <h3>비밀번호 변경</h3>
                            <p>새로운 비밀번호를 입력해주세요. </p>
                            <div class="login_input" id="reset_login_input">
                                <div class="js_input_pw">
                                    <div class="member_warning">
                                        <input type="password" placeholder="영문대/소문자, 숫자, 특수문자 중 2가지 이상 조합하세요"
                                            id="passwordMsg" name="memPw">
                                    </div>
                                </div>
                                <div class="js_input_pw">
                                    <div class="member_warning">
                                        <input type="password" placeholder="새 비밀번호 확인" id="newPwRe" name="memPwRe">
                                    </div>
                                </div>
                            </div>
                            <div class="btn_center">
                                <button type="button" id="btnConfirm" class="btn_next">다음</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>