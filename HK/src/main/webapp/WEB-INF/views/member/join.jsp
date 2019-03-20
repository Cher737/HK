<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="resources/css/member.css">
<script type="text/javascript" src="resources/js/jquery.js"></script>
<script type="text/javascript" src="resources/js/summonInput.js"></script>
<script type="text/javascript" src="resources/js/check.js"></script>
<script type="text/javascript" src="resources/js/validCheck.js"></script>
<script type="text/javascript" src="resources/js/go.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
	$(function(){
		connectSummonAddrInputEvent();
		connectIdCheckEvent();
		emailinput();
	});
</script>
</head>
<body id="joinbody">
	<form action="join.do" method="post" name="joinForm" 
		onsubmit="return joinCheck();">
		<table id="jointable1">					
			<tr>
				<td colspan="3" align="center">
					<img id="joinimg" src="resources/img/HK.jpg">
					<h2>회원가입</h2>
				</td>
			</tr>
			<tr>
				<td>
					<h3>기본정보입력(필수)</h3>
				</td>
			</tr>
			<tr>
				<td>
					<input autocomplete="off" id="u_id" name="u_id" class="joininput2" placeholder="ID 영문또는 숫자 6~15자" maxlength="15" autofocus="autofocus">
					&nbsp;<span id="joinIdOk">ID 확인</span>
				</td>
			</tr>
			<tr>
				<td>
					<input autocomplete="off" name="u_pw" class="joininput" type="password" placeholder="비밀번호 영문/숫자조합 6~15자" maxlength="15">
				</td>
			</tr>
			<tr>
				<td>
					<input autocomplete="off" name="u_pwchk" class="joininput" type="password" placeholder="비밀번호 확인" maxlength="15">
				</td>
			</tr>
		</table>
		
		<table id="jointable2">					
			<tr>
				<td>
					<input autocomplete="off" name="u_name" class="joininput" placeholder="이름" maxlength="15">
				</td>
			</tr>
			<tr>
				<td>
					<input autocomplete="off" name="u_jumin" class="joininput" type="password" placeholder="주민등록번호 13자리 입력( ' - ' 없이)" maxlength="13">
				</td>
			</tr>
			<tr>
				<td class="jointable2td">
					<input autocomplete="off" id="u_mail1" name="u_mail1" class="joininput3" placeholder="이메일 입력" maxlength="20"> @
					<input autocomplete="off" id="u_mail2" name="u_mail2" class="joininput3" maxlength="11">
					<select id="emailselect" class="emailselect" name="emailcategory">
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
				<td>
					<input autocomplete="off" name="u_phone" class="joininput" placeholder="전화번호 입력( ' - ' 없이)" maxlength="11">
				</td>
			</tr>
			<tr>
				<td>
					<input readonly="readonly" class="joinAddrNoinput" name="u_addr3" id="u_addr3" placeholder="우편번호" maxlength="5" autocomplete="off">
					&nbsp;<span id="joinAddrSearchBtn">검색</span>
				</td>
			</tr>
			<tr>
				<td>
					<input class="joininput" name="u_addr1" id="u_addr1" placeholder="주소" maxlength="50" autocomplete="off">
				</td>
			</tr>
			<tr>
				<td>
					<input class="joininput" name="u_addr2" placeholder="상세주소 입력" maxlength="50" autocomplete="off">
				</td>
			</tr>
		</table>
		
		<table id="jointable3">					
			<tr>
				<td>
					<h3>여권정보입력(선택)</h3>
				</td>
			</tr>
			<tr>
				<td>
					<input autocomplete="off" name="pp_engname" class="joininput" placeholder="영문여권이름 (예: HONGKILDONG)" maxlength="15">
				</td>
			</tr>
			<tr>
				<td>
					<input autocomplete="off" name="pp_ppnumber" class="joininput" placeholder="여권번호 입력 (예: M12341234)" maxlength="9">
				</td>
			</tr>
			<tr>
				<td>
					<input autocomplete="off" name="pp_exp2" class="joininput" placeholder="여권만료일 입력 (예: 20200101)" maxlength="9">
				</td>
			</tr>
		</table>
		<p>
		<p>
		<table id="jointable4">
			<tr>
				<td>
					<span id="gobackbutton">이전</span>
				</td>
			</tr>
			<tr>
				<td colspan="3" align="center">
					<button id="joinbutton">회원가입</button>
				</td>
			</tr>
		</table>
	</form>
	
</body>
</html>