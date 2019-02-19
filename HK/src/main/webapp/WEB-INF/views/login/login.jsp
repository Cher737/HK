<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 화면</title>
<link rel="stylesheet" href="resources/css/login.css">
</head>
<body>
	<table>					
		<tr>
			<td colspan="3" align="center">
				<img src="resources/img/HK.jpg">
				<h1>로그인</h1>
			</td>
		</tr>
		<tr>
			<td>
				<input autocomplete="off" name="name" class="i" placeholder="ID 입력">
			</td>
		</tr>
		<tr>
			<td>
				<input autocomplete="off" name="phone" class="i" placeholder="비밀번호 입력">
			</td>
		</tr>
		<tr>
			<td class="td3">
				<br>
				<input type="checkbox" name="auto-login">자동 로그인
			</td>
		</tr>
		<tr>
			<td colspan="3" align="center">
				<br>
				<button id="loginbutton">로그인</button>
			</td>
		</tr>
	</table>
</body>
</html>