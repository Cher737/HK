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
	<table id="memberinfotable">
		<tr>
			<td class="infotitle" colspan="2" align="left"> 회원정보</td>
		</tr>
		<tr>
			<td class="infosubtitle1">아이디</td>
			<td class="infosubtitle2">
				<input class="memberinput2" name="id" readonly="readonly" value="" placeholder="Test1" maxlength="15" autocomplete="off">
			</td>
		</tr>
		<tr class="infosubtitletr">
			<td class="infosubtitle1">이름 / 국적</td>
			<td class="infosubtitle2">
				<input class="memberinput2" name="name" readonly="readonly" value="" placeholder="홍길동 / 대한민국" maxlength="15" autocomplete="off">
			</td>
		</tr>
		<tr>
			<td class="infosubtitle1">생년월일</td>
			<td class="infosubtitle2">
				<input class="memberinput2" name="birth" readonly="readonly" value="" autocomplete="off" placeholder="910101" maxlength="6">
				
			</td>
		</tr>
		<tr>
			<td class="infosubtitle1">이메일</td>
			<td class="infosubtitle2">
				<input class="memberinput1" name="email" value="" autocomplete="off" placeholder="예 :asd@naver.com" maxlength="20">
			</td>
		</tr>
		<tr>
			<td class="infosubtitle1">휴대전화</td>
			<td class="infosubtitle2">
				<input class="memberinput1" name="phone" value="" autocomplete="off" placeholder="전화번호 입력( ' - ' 없이)" maxlength="11">
			</td>
		</tr>
		<tr>
			<td align="center" colspan="2">
				<button class="byeBtn" onclick="memberBye();">회원탈퇴</button>
				<button class="updateBtn">회원정보변경</button>
			</td>
		</tr>
	</table>
</body>
</html>