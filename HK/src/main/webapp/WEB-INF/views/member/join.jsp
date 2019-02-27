<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html id="joinhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="resources/css/member.css">
</head>
<body id="joinbody">
	<form action="JoinController" method="post" name="joinForm" 
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
					<input autocomplete="off" name="id" class="joininput2" placeholder="ID 영문또는 숫자 6~15자" maxlength="15">
					&nbsp;<span id="joinidok">중복확인</span>
				</td>
			</tr>
			<tr>
				<td>
					<input autocomplete="off" name="pw" class="joininput" type="password" placeholder="비밀번호 영문/숫자/특수문자조합 6~15자" maxlength="15">
				</td>
			</tr>
			<tr>
				<td>
					<input autocomplete="off" name="pw_chk" class="joininput" type="password" placeholder="비밀번호 확인 영문/숫자/특수문자조합 6~15자" maxlength="15">
				</td>
			</tr>
		</table>
		
		<table id="jointable2">					
			<tr>
				<td>
					<input autocomplete="off" name="name" class="joininput" placeholder="이름" maxlength="15">
				</td>
			</tr>
			<tr class="jointr1">
				<td class="jointd1" colspan="3" align="center">성별
					<input name="gender_m" class="joingender" type="radio"> 남
					<input name="gender_f" class="joingender" type="radio"> 여
				</td>
			</tr>
			<tr>
				<td>
					<input autocomplete="off" name="jumin" class="joininput" type="password" placeholder="주민등록번호 13자리 입력( ' - ' 없이)" maxlength="13">
				</td>
			</tr>
			<tr>
				<td>
					<input autocomplete="off" name="email" class="joininput" placeholder="이메일 입력" maxlength="20">
				</td>
			</tr>
			<tr>
				<td>
					<input autocomplete="off" name="phone" class="joininput" placeholder="전화번호 입력( ' - ' 없이)" maxlength="11">
				</td>
			</tr>
			<tr>
				<td>
					<input class="joinAddrNoinput" name="jm_addr3" id="jm_addr3" placeholder="우편번호" maxlength="5" autocomplete="off" readonly="readonly">
					&nbsp;<span id="joinAddrSearchBtn">검색</span>
				</td>
			</tr>
			<tr>
				<td>
					<input class="joininput" name="jm_addr1" id="jm_addr1" placeholder="주소" maxlength="50" autocomplete="off" readonly="readonly">
				</td>
			</tr>
			<tr>
				<td>
					<input class="joininput" name="jm_addr2" placeholder="상세주소 입력" maxlength="50" autocomplete="off">
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
					<input autocomplete="off" name="id" class="joininput" placeholder="영문여권이름 (예: HONGKILDONG)" maxlength="15">
				</td>
			</tr>
			<tr>
				<td>
					<input autocomplete="off" name="id" class="joininput" placeholder="여권번호 입력 (예: M12341234)" maxlength="9">
				</td>
			</tr>
			<tr>
				<td>
					<input autocomplete="off" name="id" class="joininput" placeholder="여권만료일 입력 (예: 20200101)" maxlength="9">
				</td>
			</tr>
		</table>
	
		<table id="jointable4">
			<tr>
				<td colspan="3" align="center">
					<br>
					<button id="gobackbutton">이전</button>
					<button id="joinbutton">회원가입</button>
				</td>
			</tr>
		</table>
	</form>
	
</body>
</html>