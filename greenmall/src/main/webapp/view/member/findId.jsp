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
    $("#findIdEmail").prop("checked", true);
    $(".email_box").show();
    $(".phone_box").hide();
    
    // 라디오 버튼 클릭 이벤트 핸들러
    $("input[name='findIdType']").change(function() {
        if ($("#findIdEmail").is(":checked")) {
            $(".email_box").show();
            $(".phone_box").hide();
        } else if ($("#findIdPhone").is(":checked")) {
            $(".phone_box").show();
            $(".email_box").hide();
        }
    });
});

</script>
</head>
<body>
    <div class="joinForm">
        <div class="location_wrap">
            <div class="location_cont">
                <em>
                    <a href="#">Home</a>> 아이디 찾기
                </em>
            </div>
        </div>
        <div class="content_box">
            <div class="member_wrap">
                <div class="member_title">
                    <h2>아이디 찾기</h2>
                </div>
                <div class="member_cont">
                    <form action="#" id="formFindId" method="post">
                        <div class="find_id_box">
                            <div class="find_id_sec">
                                <div class="find_complete_box" style="display: none">${name}님의 아이디는 ${id }입니다</div>
                                <h3>회원 아이디찾기</h3>
                                <div class="form_element radio_find_type">
                                    <input type="radio" id="findIdEmail" name="findIdType" value="email" class="choise_s">
                                    <label for="findIdEmail" style="padding: 0 10px 0 0">이메일</label>
                                    <input type="radio" id="findIdPhone" name="findIdType" value="cellPhone" class="choise_s">
                                    <label for="findIdPhone" style="padding: 0 10px 0 0">휴대폰 번호</label>
                                </div>
                                <div class="login_input">
                                    <div class="phone_box">
                                        <input type="text" id="userName1" name="userName" placeholder="이름">
                                        <input type="text" id="userPhone" name="userPhone" placeholder="가입휴대폰번호" maxlength="12">
                                    </div>
                                    <div class="email_box">
                                    	<input type="text" id="userName2" name="userName" placeholder="이름">
                                        <input type="text" id="userEmail" name="userEmail" placeholder="가입이메일주소" class="input_email">
                                        <select name="emailDomain" id="emailDomain" class="email_select">
                                            <option value="self">직접입력</option>
                                            <option value="naver.com">naver.com</option>
                                            <option value="gmail.com">gmail.com</option>
                                            <option value="nate.com">nate.com</option>
                                            <option value="hanmail.com">hanmail.net</option>
                                            <option value="daum.com">daum.net</option>
                                        </select>
                                    </div>
                                    <button type="submit" class="btn_member_id">아이디 찾기</button>
                                    <p class="dn js_caution_msg1">일치하는 회원정보가 없습니다. 다시 입력해 주세요. </p>
                                </div>
                            </div>
                            <div class="btn_center">
                                <ul>
                                    <li>
                                        <button class="btn_member_white">비밀번호 찾기</button>
                                    </li>
                                    <li>
                                        <button class="btn_login">로그인 하기</button>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>