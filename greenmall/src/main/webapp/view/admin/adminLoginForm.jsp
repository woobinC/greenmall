<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/greenmall/css/admin/adminLogin.css" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap"/>
</head>
<body>
   <div class="container">
      <h2>관리자 로그인</h2>
      <form method="post" action="/greenmall/view/admin/adminLogin.wb">
        <div class="login_input">
          <input type="text" name="adminId" placeholder="ID" required/>
          <input type="password" name="adminPw" placeholder="PASSWORD" required/>
        </div>
        <div class="submit_button">
          <input type="submit" value="Login" />
        </div>
      </form>
    </div>
</body>
</html>