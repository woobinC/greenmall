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
                    <a href="/greenmall/view/display/main.wb">Home</a>> 비밀번호 찾기
                </em>
            </div>
        </div>
        <div class="content_box">
            <form action="/greenmall/view/member/userCertification.wb" class="formFind" id="formFind" method="post">
                <div class="member_wrap">
                    <div class="member_title">
                        <h2>비밀번호 찾기</h2>
                    </div>
                    <div class="member_cont">
                        <div class="find_password_box">
                            <h3>아이디 입력</h3>
                            <p>비밀번호를 찾고자 하는 아이디를 입력해 주세요.</p>
                            <div class="login_input" id="login_input_id">
                                <div class="member_warning">
                                    <input type="text" name="mId" id="mId" placeholder="아이디">
                                    <input type="text" name="mName" id="mName" placeholder="이름">
                                    <p class="info_again">아이디를 모르시나요 ? <a href="/greenmall/view/member/findId.wb" class="find_id_btn">아이디 찾기</a></p>
                                    <p class="dn" id="error_message" >아이디를 다시 입력해주세요.</p>
                                </div>
                                <div class="btn_center">
                                    <button type="submit" id="btnNext" class="btn_next">다음</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>