<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html id="loginhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="resources/css/member.css">
</head>
<body id="loginbody">
	<table id="logintable">
		<tr>
			<td colspan="3" align="center">
				<img id="loginimg" src="resources/img/HK.jpg">
				<h2>로그인</h2>
			</td>
		</tr>
		<tr>
			<td>
				<input autocomplete="off" name="name" class="logininput" placeholder="ID 입력">
			</td>
		</tr>
		<tr>
			<td>
				<input autocomplete="off" name="phone" class="logininput" placeholder="비밀번호 입력">
			</td>
		</tr>
		<tr>
			<td class="logintd1">
				<br>
				<input type="checkbox" name="auto-login"> 자동 로그인
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