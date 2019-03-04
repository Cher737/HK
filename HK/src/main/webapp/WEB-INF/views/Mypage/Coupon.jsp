<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td align="center">
				<table id="MyCouponSelectTable">
					<tr>
						<td><div id="Couponselectdiv">조회기간</div></td>
						<td>
							<div class="Couponselectclick">1개월</div>
						</td>
						<td>
							<div class="Couponselectclick">3개월</div>
						</td>
						<td>
							<div class="Couponselectclick">6개월</div>
						</td>
						<td><input></td>
						<td>
							<div class="Couponselectcalendardiv">
								<img src="resources/img/calendar.png">
							</div>
						</td>
						<td>~</td>
						<td><input></td>
						<td><div class="Couponselectcalendardiv">
								<img src="resources/img/calendar.png">
							</div></td>
						<td><button>조회</button></td>

					</tr>
				</table>

			</td>
		<tr>
			<td>
				<table id="MyCouponTable">
					<tr>
						<td class="Couponnametd">쿠폰명</td>
						<td class="Coupondiscounttd">할인액(률)</td>
						<td class="Couponexptd">유효기간</td>
						<td class="Couponstatetd">사용여부</td>
					</tr>
					<tr>
						<td class="Couponnametd2">2월신규회원쿠폰</td>
						<td class="Coupondiscounttd2">50000원</td>
						<td class="Couponexptd2">2019-02-01 ~ 2019-04-30</td>
						<td class="Couponstatetd2">미사용</td>
					</tr>
					<tr>
						<td class="Couponnametd2">본인인증 쿠폰</td>
						<td class="Coupondiscounttd2">15%</td>
						<td class="Couponexptd2">2019-03-01 ~ 2019-03-30</td>
						<td class="Couponstatetd2">미사용</td>
					</tr>

				</table>
			</td>
		</tr>
		<tr>
			<td align="center"><table id="Couponinputtable">
					<tr>
						<td id="Couponinputtexttd">메일, 문자, SNS 등에서 <span>쿠폰 인증번호</span>를 받은 경우 인증번호를 등록해주세요.</td>
					</tr>
					<tr>
						<td id="Couponinputtd"><input><button>등록</button></td>
					</tr>
				</table></td>
		</tr>
	</table>
</body>
</html>