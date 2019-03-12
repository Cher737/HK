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
			<td>${sessionScope.loginMember.u_id }(<span
				style="color: black;">${sessionScope.loginMember.u_name }</span>)
			</td>
		</tr>
	</table>
</body>
</html>