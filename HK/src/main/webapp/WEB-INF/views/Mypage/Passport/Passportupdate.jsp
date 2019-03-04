<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table id="PassportSelectTable">
		<tr>
			<td id="PassportSelectTablemain">여권정보 변경</td>
		</tr>
		<tr>
			<td class="PassportSelecttoptd1">이름</td>
			<td class="PassportSelecttoptd2">홍준호</td>
		</tr>
		<tr>
			<td class="PassportSelecttd1">생년월일</td>
			<td class="PassportSelecttd2">1992년07월07일</td>
		</tr>
		<tr>
			<td class="PassportSelecttd1">성별</td>
			<td class="PassportSelecttd2">남자</td>
		</tr>
		<tr>
			<td class="PassportSelecttd1">국적</td>
			<td class="PassportSelecttd2"><span>대한민국</span><br>
			<span> · 국적정보변경은 고객센터로 문의해 주세요.</span></td>
		</tr>
		<tr>
			<td class="PassportSelecttd1">여권이름(영문)</td>
			<td class="PassportSelecttd2"><input value="HONG"> <input value="JUNHO"><br>
			<span> · 여권상 성함과 동일하게 입력해 주시고, First Name(이름)은 붙여서 입력해 주세요.</span></td>
		</tr>
		<tr>
			<td class="PassportSelecttd1">여권번호</td>
			<td class="PassportSelecttd2"><input style="float: left;" value="M12345678">
				<div id="Passportnumbercheck">여권번호 중복체크</div>
				 <div id="Passportnumberhelp">· 여권번호는 롯데면세점 VIP 회원카드 발급 및 상품 인도 시 사용되므로 정확하게 입력해 주세요.</div></td>
		</tr>
		<tr>
			<td class="PassportSelecttd1">여권만료일</td>
			<td class="PassportSelecttd2"><input id="calendarinput" value="2024-12-30">
			<div id="Passportcalendar">
					<img style="width: 15px;" src="resources/img/calendar.png">
				</div></td>
		</tr>
		<tr>
			<td colspan="2" id="Passportupdategotd"> <button> 여권정보 변경</button></td>
		</tr>
	</table>

</body>
</html>