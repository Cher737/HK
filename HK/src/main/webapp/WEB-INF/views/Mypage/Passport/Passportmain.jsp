<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/Passport.css">
</head>
<body>
	<table id="PassportMaintable">
		<tr>
			<td id="PassportMaintd">
			<div>여권정보</div>
			</td>
		</tr>
	</table>
	<table><tr><td><jsp:include page="${Passportpage}"></jsp:include> </td></tr></table>
</body>
</html>