<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="resources/css/member.css">
<script type="text/javascript" src="resources/js/check.js"></script>
<script type="text/javascript" src="resources/js/validCheck.js"></script>
</head>
<body id="loginbody">
	<form action="login.do" method="post" name="loginForm" onsubmit="return loginCheck();">
		<table id="logintable">
			<tr>
				<td colspan="3" align="center">
					<img id="loginimg" src="resources/img/HK.jpg">
					<h2>로그인</h2>
				</td>
			</tr>
			<tr>
				<td>
					<input autocomplete="off" name="u_id" class="logininput" placeholder="ID 입력" maxlength="15">
				</td>
			</tr>
			<tr>
				<td>
					<input autocomplete="off" name="u_pw" class="logininput" type="password" placeholder="비밀번호 입력" maxlength="15">
				</td>
			</tr>
			<tr>
				<td class="logintd1">
					<br>
					<input type="checkbox" name="u_auto"> 자동 로그인
				</td>
			</tr>
			<tr>
				<td colspan="3" align="center">
					<br>
					<button id="loginbutton">로그인</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>