<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="resources/css/Buy.css">
<title>Insert title here</title>
</head>
<body>
	<table id="BuyPageArea">
		<tr>
			<td><div class="BuyPageSubtitle">여권 정보</div>
				<div class="BuyPageSubtitle2">여권정보는 여권정보페이지에서 수정이 가능합니다.</div>
				<table id="BuyMyInfoTable">
					<tr>
						<td class="MyInfotd1">이름</td>
						<td class="MyInfotd2">홍준호/남자</td>
						<td class="MyInfotd1">생년월일</td>
						<td class="MyInfotd2">1992년07월07일</td>
					</tr>
					<tr>
						<td class="MyInfotd1">여권번호</td>
						<td class="MyInfotd2">M12345678</td>
						<td class="MyInfotd1">여권만료일</td>
						<td class="MyInfotd2">2024년12월30일</td>
					</tr>
					<tr>
						<td class="MyInfotd1">여권이름(영문)</td>
						<td class="MyInfotd2">HONG JUNHO</td>
						<td class="MyInfotd1">이메일</td>
						<td class="MyInfotd2">wnsgh1001@naver.com</td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td><div class="BuyPageSubtitle">출국 정보</div>
				<div id="LeaveChangeDiv">변경하기</div>
				<table id="BuyLeaveTable">
					<tr>
						<td class="MyInfotd1">출국일시</td>
						<td class="MyInfotd2">2019년 3월 8일 / 11:05</td>
						<td class="MyInfotd1">항공편</td>
						<td class="MyInfotd2">KE5675</td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td>결제</td>
		</tr>
		<tr>
			<td><div class="BuyPageSubtitle">결제 하기</div>
				<table>
					<tr>
						<td><table id="BuyLeftTable">
								<tr>
									<td class="BuyLefttd1">쿠폰</td>
									<td id="BuyCoupontd1">적용쿠폰 : <span>신규회원 15% 할인 쿠폰</span>
										<button>선택</button></td>
								</tr>
								<tr>
									<td class="BuyLefttd1" rowspan="2">포인트</td>
									<td id="BuyPointtd1">현재 잔여 포인트 : <span>13000원</span></td>
								</tr>
								<tr>
									<td id="BuyPointtd2">사용하기 : <input id="Pointinput">
										원 <input type="checkbox"> 전액사용
									</td>
								</tr>
								<tr>
									<td class="BuyLefttd1">결제수단</td>
									<td id="Buypaymenttd">
											<input value="신용카드" type="radio">신용카드 &nbsp&nbsp
											<input value="계좌이체" type="radio">계좌이체 &nbsp&nbsp
										 <input value="무통장입금" type="radio">무통장입금<br><input
										value="네이버페이" type="radio">네이버페이&nbsp&nbsp <input value="카카오페이"
										type="radio">카카오페이
									</td>
								</tr>
								<tr>
									<td class="BuyLefttd1" rowspan="3">카드<br> & <br>
										할부
									</td>
									<td class="BuyCardtd">카드종류: <select><option>신한 카드</option></select></td>
								</tr>
								<tr>
									<td class="BuyCardtd">할부: <select><option>일시불</option></select></td>
								</tr>
								<tr>
									<td id="BuyCardimgtd"><img src="resources/img/Card.jpg"></td>
								</tr>
							</table></td>
						<td valign="top"><table id="BuyRightTable">
								<tr>
									<td id="BuyRightTitletd" colspan="2">최종 결제금액 내용</td>
								</tr>
								<tr>
									<td id="BuyRightBuymoney">총 주문금액</td>
									<td id="BuyRightBuymoney2">$ 161(181,269원)</td>
								</tr>
								<tr>
									<td class="BuyRighttd1">쿠폰할인</td>
									<td class="BuyRighttd2">- $ 24.15(27,188원)</td>
								</tr>
								<tr>
									<td class="BuyRighttd1">회원할인</td>
									<td class="BuyRighttd2">- $ 16.1(18,127원)</td>
								</tr>
								<tr>
									<td class="BuyRighttd1">포인트 사용</td>
									<td class="BuyRighttd2">- 10,000원</td>
								</tr>
								<tr>
									<td id="BuyLastMoneytitle" colspan="2">최종 결제금액</td>
								</tr>
								<tr>
									<td id="BuyLastMoney" colspan="2">$ 111.87<br>
										<span>(125,940원)</span>
									</td>
								</tr>
								<tr>
									<td  align="center" id="BuyLastButtontd" colspan="2"><button>주문하기</button></td>
								</tr>
							</table></td>
					</tr>
				</table></td>
		</tr>
	</table>
</body>
</html>