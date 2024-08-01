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
<style type="text/css">
.show {
            display: block;
        }
</style>
 <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            var timer = null;
            var isRunning = true; // 페이지 로드 시 타이머가 시작되었음을 나타냄
            var display = $('.fc_red'); // 타이머를 표시할 p 태그
            var leftSec = 600; // 10분 = 600초

            function startTimer(count, display) {
                var minutes, seconds;
                timer = setInterval(function () {
                    minutes = parseInt(count / 60, 10);
                    seconds = parseInt(count % 60, 10);

                    minutes = minutes < 10 ? "0" + minutes : minutes;
                    seconds = seconds < 10 ? "0" + seconds : seconds;
					display.css("color","red")
                    display.html("남은 시간 " + minutes + ":" + seconds);

                    // 타이머 끝
                    if (--count < 0) {
                        clearInterval(timer);
                        $('#guideMsg .info_again').show(); // 타이머 끝난 후 p 태그를 표시
                    }
                }, 1000);
            }

            if (isRunning) {
                startTimer(leftSec, display);
            }
            
            // 서버에서 전송된 에러 메시지를 처리합니다.
            var errorMessage = '${errorMessage}'; // 서버에서 전달된 에러 메시지
            if (errorMessage) {
                $('#errorMessage .info_again').show();
            }
        });
    </script>
</head>
<body>
<div class="joinForm">
        <div class="location_wrap">
            <div class="location_cont">
                <em>
                    <a href="#">Home</a>> 본인인증 인증번호 확인
                </em>
            </div>
        </div>
        <div class="content_box">
            <div class="member_wrap">
                <div class="member_title">
                    <h2>본인인증</h2>
                </div>
                <div class="member_cont">
                    <form action="/greenmall/view/member/authAction.wb" class="formAuth" id="formAuth">
                        <div class="find_password_box">
                                <h3>인증번호 입력</h3>
                                <p>수신된 이메일의 인증번호를 입력해주세요.</p>
                            <div class="login_input" id="logInput">
                                <div class="form_element">
                                    <input type="text" placeholder="인증번호 입력" id="inputCertify" name="inputCertify" class="text">
                                    <p class="fc_red"><span></span></p>
                                    <div class="dn" id="guideMsg">
                                        <p class="info_again">인증 이메일이 도착하지 않았나요? <a href="#" class="btn_again">인증번호 다시 받기</a></p>
                                    </div>
                                    <div id="errorMessage" class="dn">
                                        <p class="info_again">잘못된 인증번호 입니다. 다시 입력해주세요. </p>
                                    </div>
                                </div>
                            </div>
                            <div class="btn_center">
                                <ul>
                                    <li>
                                        <button type="button" id="btnCancle" class="btn_prev">이전</button>
                                        <button type="submit" class="btn_next">다음</button>
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