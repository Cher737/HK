<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="resources/js/main.js"></script>
</head>
<body>
	<table id="centerpage">
		<tr>
			<td id="centerimgtd">
			<div class="bxslider">
			<div>
			<a href="Mypage.Buy">
			<img src="resources/img/S10.jpg">
			</a>
			</div>
			<div>
			<a href="Mypage.Buy">
			<img src="resources/img/S102.jpg">
			</a>
			</div>
			<div>
			<a href="Mypage.Buy">
			<img src="resources/img/s102.png">
			</a>
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
				<div id="Supportgo" class="centerlastbox"><img src="resources/img/operator.png"><br>고객센터</div>
				<div class="centerlastbox"><img src="resources/img/placeholder.png"><br>지점안내</div>
			</td>
		</tr>

	</table>
</body>
</html>