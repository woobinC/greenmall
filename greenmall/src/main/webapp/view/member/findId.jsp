<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>      
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
            // 필드 이름 변경
            $("#mNameEmail").attr("name", "mName");
            $("#mNamePhone").attr("name", "unused");  // 폼에서 제외하기 위해 다른 이름으로 설정
        } else if ($("#findIdPhone").is(":checked")) {
            $(".phone_box").show();
            $(".email_box").hide();
            // 필드 이름 변경
            $("#mNamePhone").attr("name", "mName");
            $("#mNameEmail").attr("name", "unused");  // 폼에서 제외하기 위해 다른 이름으로 설정
        }
    });

    // 결과 값에 따른 처리
    <c:if test="${result > 0}">
        $("#findCompleteId").show();
        $(".login_input").css("border-top","none")
        $("#hideBox1").hide();
        $("#hideBox2").hide();
        $("#hideBox3").hide();
        $("#hideBox4").hide();
        $("#hide_h3").hide();
    </c:if>
    <c:if test="${result == -1}">
        $("#none_member").show();
    </c:if>
    // 폼 제출 전 데이터 확인
    $("#formFindId").on("submit", function(e) {
        e.preventDefault(); // 폼 제출 중단
        let formData = $(this).serializeArray(); // 폼 데이터 직렬화
        console.log("폼 데이터:", formData); // 콘솔에 폼 데이터 출력
        $(this).unbind('submit').submit(); // 데이터 확인 후 폼 제출
    });
});

// 이메일 도메인 선택
function emailSelect(emailDomain) {
    document.getElementById('mEmail').value = emailDomain.value;
}
</script>
</head>
<body>
    <div class="joinForm">
        <div class="location_wrap">
            <div class="location_cont">
                <em>
                    <a href="/greenmall/view/display/main.wb">Home</a> &gt; 아이디 찾기
                </em>
            </div>
        </div>
        <div class="content_box">
            <div class="member_wrap">
                <div class="member_title">
                    <h2>아이디 찾기</h2>
                </div>
                <div class="member_cont">
                    <form action="findIdAction.wb" id="formFindId" method="post" name="frm">
                        <div class="find_id_box">
                            <div class="find_id_sec">
                                <div class="find_complete_box" id="findCompleteId" style="display: none">
                                    <p>${member.mName}님의 아이디는 <br>${member.mId}입니다</p>
                                </div>
                                <h3 id="hide_h3">회원 아이디찾기</h3>
                                <div class="form_element radio_find_type" id="hideBox1">
                                    <input type="radio" id="findIdEmail" name="findIdType" value="email" class="choise_s">
                                    <label for="findIdEmail" style="padding: 0 10px 0 0">이메일</label>
                                    <input type="radio" id="findIdPhone" name="findIdType" value="cellPhone" class="choise_s">
                                    <label for="findIdPhone" style="padding: 0 10px 0 0">휴대폰 번호</label>
                                </div>
                                <div class="login_input">
                                    <div class="phone_box" id="hideBox2">
                                        <input type="text" id="mNamePhone" name="unused" placeholder="이름">
                                        <input type="text" id="mTel" name="mTel" placeholder="가입휴대폰번호" maxlength="12">
                                    </div>
                                    <div class="email_box" id="hideBox3">
                                        <input type="text" id="mNameEmail" name="mName" placeholder="이름">
                                        <input type="text" id="mEmail" name="mEmail" placeholder="가입이메일주소" class="input_email">
                                        <select name="emailDomain" id="emailDomain" class="email_select" onchange="emailSelect(this)">
                                            <option value="self">직접입력</option>
                                            <option value="@naver.com">naver.com</option>
                                            <option value="@gmail.com">gmail.com</option>
                                            <option value="@nate.com">nate.com</option>
                                            <option value="@hanmail.com">hanmail.net</option>
                                            <option value="@daum.com">daum.net</option>
                                        </select>
                                    </div>
                                    <button type="submit" class="btn_member_id" id="hideBox4">아이디 찾기</button>
                                    <p class="dn js_caution_msg1" id="none_member">일치하는 회원정보가 없습니다. 다시 입력해 주세요.</p>
                                </div>
                            </div>
                            <div class="btn_center">
                                <ul>
                                    <li>
                                        <button type="button" class="btn_member_white" onclick="location.href='/greenmall/view/member/findPassword.wb'">비밀번호 찾기</button>
                                    </li>
                                    <li>
                                        <button type="button" class="btn_login" onclick="location.href='/greenmall/view/member/loginForm.wb'">로그인 하기</button>
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
