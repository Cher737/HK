<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table id="centerpage">
		<tr>
			<td id="centerimgtd">
			<div class="bxslider">
			<div>
			<img src="resources/img/S10.jpg">
			</div>
			<div>
			<img src="resources/img/S102.jpg">
			</div>
			<div>
			<img src="resources/img/s102.png">
			</div>
			</div>
			</td>
		</tr>
		<tr>
			<td id="main"><jsp:include page="Top.jsp"></jsp:include></td>
		</tr>
		<tr>
			<td><jsp:include page="Sail.jsp"></jsp:include></td>
		</tr>
		<tr>
			<td align="center">
				<button id="Supportgo" class="centerlastbox"> 고객센터</button>
				<button class="centerlastbox">지점안내</button>
			</td>
		</tr>

	</table>
</body>
</html>