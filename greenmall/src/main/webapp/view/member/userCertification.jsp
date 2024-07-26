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
                    <a href="#">Home</a>> 본인인증 수단 선택
                </em>
            </div>
        </div>
        <div class="content_box">
            <div class="member_wrap">
                <div class="member_title">
                    <h2>비밀번호 찾기</h2>
                </div>
                <div class="member_cont">
                    <div class="user_certify_box">
                        <form action="#" class="formAuth" id="formAuth">
                            <div class="user_certify_title">
                                <h3>인증수단 선택</h3>
                                <p>본인인증 방법을 선택해주세요.</p>
                            </div>
                            <div class="login_input">
                                <div class="form_element">
                                    <ul class="user_certify_list">
                                        <li>
                                            <input type="radio" id="authEmail" name="authType" value="authEmail">
                                            <label for="authEmail" class="choise_on" id="rad_btn">이메일 인증</label>
                                            <!-- <strong>가입된 이메일이 없습니다.</strong> -->
                                            <span>가입시 입력한 이메일로 인증번호가 발송됩니다.</span>
                                        </li>
                                        <p class="dn" id="error_message"></p>
                                    </ul>
                                </div>
                            </div>
                            <div class="btn_center">
                                <ul>
                                    <li>
                                        <button type="submit">다음</button>
                                    </li>
                                </ul>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>