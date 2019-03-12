<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보보기</title>
<link rel="stylesheet" href="resources/css/member.css">
</head>
<body>
	<table id="memberinfotitle">
		<tr>
			<td class="infotitle" colspan="2" align="left"> 회원정보</td>
		</tr>
	</table>
	<table class="infotable">
		<tr>
			<td class="infosubtitle1">아이디</td>
			<td class="infosubtitle2">
				<input class="memberinput2" name="u_id" readonly="readonly" 
				value="${sessionScope.loginMember.u_id }" maxlength="15" autocomplete="off">
			</td>
		</tr>
		<tr>
			<td class="infosubtitle1">이름 / 국적</td>
			<td class="infosubtitle2">
				<input class="memberinput2" name="u_name" readonly="readonly" 
				value="${sessionScope.loginMember.u_name }" maxlength="15" autocomplete="off">
			</td>
		</tr>
		<tr>
			<td class="infosubtitle1">생년월일</td>
			<td class="infosubtitle2">
				<input class="memberinput2" name="u_birth" readonly="readonly" autocomplete="off"
				value="${sessionScope.loginMember.u_jumin }" maxlength="6">
			</td>
		</tr>
		<tr>
			<td class="infosubtitle1">이메일</td>
			<td class="infosubtitle2">
				<input class="memberinput1" name="u_mail" readonly="readonly" autocomplete="off" 
				value="${sessionScope.loginMember.u_mail }" maxlength="20">
			</td>
		</tr>
		<tr>
			<td class="infosubtitle1">휴대전화</td>
			<td class="infosubtitle2">
				<input class="memberinput1" name="u_phone" readonly="readonly" autocomplete="off"
				value="${sessionScope.loginMember.u_phone }" maxlength="11">
			</td>
		</tr>
		<tr>
			<td align="center" colspan="2">
				<button class="byeBtn" onclick="memberBye();">회원탈퇴</button>
				<button class="updateBtn" onclick="memberUpdate();">회원정보변경</button>
			</td>
		</tr>
	</table>
</body>
</html>