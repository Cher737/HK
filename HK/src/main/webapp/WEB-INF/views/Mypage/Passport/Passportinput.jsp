<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>여권정보 변경</td>
		</tr>
		<tr>
			<td>이름</td>
			<td>홍준호</td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td>1992년07월07일</td>
		</tr>
		<tr>
			<td>성별</td>
			<td>남자</td>
		</tr>
		<tr>
			<td>국적</td>
			<td>대한민국</td>
		</tr>
		<tr>
			<td>여권이름(영문)</td>
			<td><input value="HONG"> <input value="JUNHO"></td>
		</tr>
		<tr>
			<td>여권번호</td>
			<td><input value="M12345678">
				<div>여권번호 중복체크</div></td>
		</tr>
		<tr>
			<td>여권만료일</td>
			<td><input value="2024-12-30">
			<div>
					<img style="width: 15px;" src="resources/img/calendar.png">
				</div></td>
		</tr>

	</table>
	<table>
		<tr>
			<td><div>취소</div> <button> 여권정보 변경</button></td>
		</tr>
	</table>
</body>
</html>