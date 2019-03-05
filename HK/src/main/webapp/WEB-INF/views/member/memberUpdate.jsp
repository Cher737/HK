<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보변경</title>
<link rel="stylesheet" href="resources/css/member.css">
</head>
<body>
	<table id="memberupdatetable" border="1">
		<tr>
			<td class="updatetitle" colspan="2" align="left"> 회원정보변경</td>
		</tr>
	</table>
	<table class="updatetable">
		<tr>
			<td class="updatesubtitle1">아이디</td>
			<td class="updatesubtitle2">
				<input class="memberupdateinput4" name="id" readonly="readonly" value="" placeholder="Test1" maxlength="15" autocomplete="off">
			</td>
		</tr>
		<tr>
			<td class="updatesubtitle1">비밀번호</td>
			<td class="updatesubtitle2">
				<input class="memberupdateinput1" name="pw" value="" type="password" placeholder="비밀번호 영문/숫자/특수문자조합 6~15자" maxlength="15" autocomplete="off">
			</td>
		</tr>
		<tr>
			<td class="updatesubtitle1">비밀번호확인</td>
			<td class="updatesubtitle2">
				<input class="memberupdateinput1" name="pwChk" value="" type="password" placeholder="비밀번호 확인" maxlength="15" autocomplete="off">
			</td>
		</tr>
		<tr class="updatesubtitletr">
			<td class="updatesubtitle1">이름</td>
			<td class="updatesubtitle2">
				<input class="memberupdateinput1" name="name" value="" placeholder="홍길동 " maxlength="15" autocomplete="off">
			</td>
		</tr>
		<tr class="updatesubtitletr">
			<td class="updatesubtitle1">주민번호</td>
			<td class="updatesubtitle2">
				<input class="memberupdateinput1" name="jumin" value="" type="password" placeholder="주민등록번호 13자리 입력( ' - ' 없이) " maxlength="13" autocomplete="off">
			</td>
		</tr>
		<tr>
			<td class="updatesubtitle1">이메일</td>
			<td class="updatesubtitle2">
				<input class="memberupdateinput3" autocomplete="off" name="email" value="" placeholder="이메일 입력" maxlength="20"> @
				<input class="memberupdateinput2" autocomplete="off" name="email2" value="" maxlength="11" readonly="readonly">
				<select class="updateemailselect" name="updateemailcategory">
					<option value="email1">naver.com</option>
					<option value="email2">hanmail.net</option>
					<option value="email3">nate.com</option>
					<option value="email4">gmail.com</option>
					<option value="email5">hotmail.com</option>
				</select>
			</td>
		</tr>
		<tr>
			<td class="updatesubtitle1">휴대전화</td>
			<td class="updatesubtitle2">
				<input class="memberupdateinput1" name="phone" value="" autocomplete="off" placeholder="전화번호 입력( ' - ' 없이)" maxlength="11">
			</td>
		</tr>
		<tr>
			<td class="updatesubtitle1">우편번호</td>
			<td class="updatesubtitle2">
				<input class="memberupdateAddrNoinput" name="jm_addr3" id="jm_addr3" readonly="readonly" value="" autocomplete="off" placeholder="우편번호" maxlength="5">
				&nbsp;<button id="updateAddrSearchBtn">검색</button>
				
			</td>
		</tr>
		<tr>
			<td class="updatesubtitle1">주소</td>
			<td class="updatesubtitle2">
				<input class="memberupdateinput1" name="jm_addr1" id="jm_addr1" readonly="readonly" value="" autocomplete="off" placeholder="주소" maxlength="50">
			</td>
		</tr>
		<tr>
			<td class="updatesubtitle1">상세주소</td>
			<td class="updatesubtitle2">
				<input class="memberupdateinput1" name="jm_addr2" id="jm_addr2" value="" placeholder="상세주소 입력" maxlength="50" autocomplete="off">
			</td>
		</tr>
		<tr>
			<td align="center" colspan="2">
				<button class="goBackBtn">이전</button>
				<button class="updateOkBtn">정보수정</button>
			</td>
		</tr>
	</table>
</body>
</html>