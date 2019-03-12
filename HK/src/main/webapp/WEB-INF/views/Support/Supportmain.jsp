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
		<tr>
			<td align="center">
				<div id="SupportTopmain">고객센터</div>
				<table id="SupportToptable">
					<tr>
						<td class="SupportTopmenu"><div id="FAQMenuDiv"><a href="Support.FAQ"><img
								src="resources/img/questions.png"><br>자주묻는질문 ></a></div></td>
						<td class="SupportTopmenu"><div id="SupportmenuDiv"><a href="Support.Counseling"><img
								src="resources/img/outbox.png"><br>1:1문의 ></a></div></td>
						<td class="SupportTopmenu2"><div id="SupportShopingDiv"><p>인터넷 쇼핑문의<br> 1633-5000</div>
						</td>
						<td class="SupportTopmenu2"><div id="SupportShopDiv"><p>매장관련 문의<br> 1644-5000</div>
						</td>
						<td class="SupportTopmenu2"><div id="SupportMemberDiv"><p>회원관련 문의<br> 1655-5000</div>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td align="center">
				<table>
					<tr>
						<td align="center"><jsp:include page="${Surportpage}"></jsp:include>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>