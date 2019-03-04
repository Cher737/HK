<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="resources/js/Mypage.js"></script>
<link rel="stylesheet" href="resources/css/Mypage.css">
</head>
<body>
	<table>
		<tr>
			<td><div id="Mypagemaintag">마이페이지</div>
				<table id="MypagemainTable">
					<tr>
						<td rowspan="2" id="MypageNametd"><span id="Namespan1">홍준호</span> <span
							id="Namespan2">고객님</span></td>
						<td rowspan="2" id="MypageGradetd"><span id="Gradespan1">나의 멤버십 등급</span><p><p><span id="Gradespan2">Silver</span></td>
						<td id="MypagePointtd" align="center">
							<div style="float: left;">
								<div style="float: left;">
									<img src="resources/img/point.png">
								</div>
									<div style="float: left;" align="center">HKPoint</div>
									<div align="center">12000P</div>
							</div>
						</td>
						<td class="Mypageinputgo">여권등록</td>
					</tr>
					<tr>
						<td id="MypageCoupontd" align="center">
							<div style="float: left;">
								<img src="resources/img/coupon.png">
							</div>
							<div style="float: left;">
								<div style="float: left;">쿠폰</div>
								<div>
									<a href="Mypage.Coupon">3장</a>
								</div>
							</div>

						</td><td class="Mypageinputgo">출국일 등록</td>
					</tr>
				</table></td>
		</tr>

		<tr>
			<td><table id="Mypagemenutable">
					<tr>
						<td id="Buylist" class="Mypagemenutd">구매 내역</td>
						<td id="Coupon" class="Mypagemenutd">쿠폰 조회</td>
						<td class="Mypagemenutd">출국일 정보</td>
						<td class="Mypagemenutd">1:1 문의내역</td>
					</tr>
					<tr>
						<td colspan="4"><jsp:include page="${Mypage }"></jsp:include></td>
					</tr>
				</table></td>
		</tr>

	</table>
</body>
</html>