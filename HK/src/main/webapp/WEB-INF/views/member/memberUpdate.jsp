<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보변경</title>
<link rel="stylesheet" href="resources/css/member.css">
<script type="text/javascript" src="resources/js/check.js"></script>
<script type="text/javascript" src="resources/js/validCheck.js"></script>
<script type="text/javascript" src="resources/js/summonInput.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
	$(function(){
		connectSummonEvent();
		connectSummonAddrInputEvent();
		emailinput();
	});
</script>
</head>
<body>
	<table id="memberupdatetable" border="1">
		<tr>
			<td class="updatetitle" colspan="2" align="left"> 회원정보변경</td>
		</tr>
	</table>
	<form action="memberupdate.do" method="post" name="updateForm" onsubmit="">
		<table class="updatetable">
			<tr>
				<td class="updatesubtitle1">아이디</td>
				<td class="updatesubtitle2">
					<input class="memberupdateinput4" name="u_id" readonly="readonly" 
					value="${sessionScope.loginMember.u_id }" maxlength="15" autocomplete="off">
				</td>
			</tr>
			<tr>
				<td class="updatesubtitle1">비밀번호</td>
				<td class="updatesubtitle2">
					<input class="memberupdateinput1" name="u_pw" type="password" placeholder="비밀번호 영문/숫자/특수문자조합 6~15자" 
					value="${sessionScope.loginMember.u_pw }" maxlength="15" autocomplete="off" autofocus="autofocus">
				</td>
			</tr>
			<tr>
				<td class="updatesubtitle1">비밀번호확인</td>
				<td class="updatesubtitle2">
					<input class="memberupdateinput1" name="u_pwChk" type="password" placeholder="비밀번호 확인" 
					value="${sessionScope.loginMember.u_pw }" maxlength="15" autocomplete="off">
				</td>
			</tr>
			<tr class="updatesubtitletr">
				<td class="updatesubtitle1">이름</td>
				<td class="updatesubtitle2">
					<input class="memberupdateinput1" name="u_name" placeholder="홍길동 " 
					value="${sessionScope.loginMember.u_name }" maxlength="15" autocomplete="off">
				</td>
			</tr>
			<tr class="updatesubtitletr">
				<td class="updatesubtitle1">주민번호</td>
				<td class="updatesubtitle2">
					<input class="memberupdateinput1" name="u_jumin" type="password" placeholder="주민등록번호 13자리 입력( ' - ' 없이)" 
					value="${sessionScope.loginMember.u_jumin }" maxlength="13" autocomplete="off">
				</td>
			</tr>
			<tr>
				<td class="updatesubtitle1">이메일</td>
				<td class="updatesubtitle2">
					<input id="u_mail1" class="memberupdateinput3" autocomplete="off" name="u_mail1" value="${mail1 }" placeholder="이메일 입력" maxlength="20"> @
					<input id="u_mail2" class="memberupdateinput2" autocomplete="off" name="u_mail2" value="${mail2 }" maxlength="11">
					<select id="emailselect" class="updateemailselect" name="emailcategory">
						<option value="">직접입력</option>
						<option value="naver.com">naver.com</option>
						<option value="daum.net">daum.net</option>
						<option value="nate.com">nate.com</option>
						<option value="gmail.com">gmail.com</option>
						<option value="hotmail.com">hotmail.com</option>
					</select>
				</td>
			</tr>
			<tr>
				<td class="updatesubtitle1">휴대전화</td>
				<td class="updatesubtitle2">
					<input class="memberupdateinput1" name="u_phone" autocomplete="off" placeholder="전화번호 입력( ' - ' 없이)" 
					value="${sessionScope.loginMember.u_phone }" maxlength="11">
				</td>
			</tr>
			<tr>
				<td class="updatesubtitle1">우편번호</td>
				<td class="updatesubtitle2">
					<input readonly="readonly" class="memberupdateAddrNoinput" name="u_addr3" id="u_addr3" 
					value="${addr3 }" autocomplete="off" placeholder="우편번호" maxlength="5">
					&nbsp;<span id="updateAddrSearchBtn">검색</span>
					
				</td>
			</tr>
			<tr>
				<td class="updatesubtitle1">주소</td>
				<td class="updatesubtitle2">
					<input class="memberupdateinput1" name="u_addr1" id="u_addr1"  
					value="${addr1 }" autocomplete="off" placeholder="주소" maxlength="50">
				</td>
			</tr>
			<tr>
				<td class="updatesubtitle1">상세주소</td>
				<td class="updatesubtitle2">
					<input class="memberupdateinput1" name="u_addr2" id="u_addr2" 
					value="${addr2 }" placeholder="상세주소 입력" maxlength="50" autocomplete="off">
				</td>
			</tr>
			<tr>
				<td align="center" colspan="2">
					<button class="goBackBtn" onclick="memberInfo();">이전</button>
					<button class="updateOkBtn" onclick="memberUpdateDo();">정보수정</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>