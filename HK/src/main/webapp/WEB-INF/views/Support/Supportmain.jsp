<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/Support.css">
</head>
<body>
<table>
<tr><td align="center">

	<table id="SupportToptable">
		<tr>
			<td  id="SupportTopMain" align="center" colspan="4">고객센터<br> 1234-5678
			</td>
		</tr>
		<tr>
			<td class="SupportTopmenu"><a href="Support.FAQ">자주묻는질문</a></td>
			<td class="SupportTopmenu"><a href="Support.Counseling">1:1문의</a></td>
			<td class="SupportTopmenu">아이디/비밀번호찾기</td>
			<td class="SupportTopmenu">구매내역 확인</td>
		</tr>
	</table></td></tr>
	<tr><td align="center">
	<table><tr><td align="center" >
	<jsp:include page="${Surportpage}"></jsp:include>
	</td></tr></table>
	</td></tr></table>
</body>
</html>