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
<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.7.2/kakao.min.js" 
integrity="sha384-TiCUE00h649CAMonG018J2ujOgDKW/kVWlChEuu4jK2vxfAAD0eZxzCKakxg55G4" 
crossorigin="anonymous"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script type="text/javascript">
    	Kakao.init('8d51aff084723b9cb2243bc6ed6a4c4c');
    	console.log(Kakao.isInitialized());
    	function kakaoLogin() {
			Kakao.Auth.login({
				success: function (response) {
					Kakao.API.request({
						 url: '/v1/api/talk/profile',
				          success: function (response) {
				        	  console.log(response)
				          },
				          fail: function (error) {
				            console.log(error)
				          },
				        })
				      },
				      fail: function (error) {
				        console.log(error)
					})
				}
			})
		};
    </script>
</head>
<body>
<div class="loginForm">
        <div class="location_wrap">
            <div class="location_cont">
                <em>
                <a href="../display/main.wb">Home</a>> 로그인
            </em>
            </div>
        </div>
        <div class="content_box">
            <div class="member_wrap">
                <div class="member_title">
                    <h2>로그인</h2>
                </div>
                <div class="member_cont">
                    <form action="loginAction.wb" class="memberLogin" method="post">
                        <div class="login_box">
                            <h3>회원로그인</h3>
                            <div class="login_input" style="padding-top: 20px">
                                <div>
                                    <input type="text" id="mId" name="mId" placeholder="아이디" required><br>
                                    <input type="password" id="password" name="password" placeholder="비밀번호" required>
                                </div>
                                <button type="submit" class="member_btn">로그인</button>
                            </div>
                            <div class="idChk">
                                <span>
                                    <input type="checkbox" id="saveId" name="saveId" checked>
                                    <label for="saveId">아이디저장</label>
                                </span>
                            </div>
                        </div>
                        <div class="sns_login">
                            <a href="javascript:void(0)"><img src="../../images/member/pc_naver.png" alt=""  style="margin-top: 10px"></a>
                            <a href="javascript:void(0)"onclick="kakaoLogin()"><img src="../../images/member/pc_kakao.png" alt="카카오 아이디로 로그인"  style="margin-top: 10px" ></a>
                        </div>
                        <div class="btn_box">
                            <ul>
                                <li>
                                    <button class="btn_box_join" type="button" onclick="location.href='/greenmall/view/member/join.wb'">회원가입</button>
                                </li>
                                <li>
                                    <button class="btn_box_login" type="button" onclick="location.href='findId.wb'">아이디 찾기</button>
                                </li>
                                <li>
                                    <button class="btn_box_login" type="button" onclick="location.href='findPassword.wb'">비밀번호 찾기</button>
                                </li>
                            </ul>
                        </div>
                    </form>
                    <form action="" class="order_form" style="display: none">
                        <div class="non_member">
                            <h3>비회원 주문조회</h3>
                            <div class="order_input">
                                <div>
                                    <input type="text" id="orderNm" name="orderNm" placeholder="주문자명">
                                    <input type="text" id="orderNo" name="orderNo" placeholder="주문번호">
                                </div>
                                <button type="submit">확인</button>
                            </div>
                            <p>주문번호, 비밀번호를 잊으신 경우 고객센터로 문의 주시기 바랍니다.</p>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
</body>
</html>