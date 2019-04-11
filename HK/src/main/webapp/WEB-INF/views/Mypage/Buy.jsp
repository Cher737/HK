<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="resources/css/Buy.css">
<link rel="stylesheet" href="resources/css/product.css">
<title>Insert title here</title>
<script src="resources/js/buy.js"></script>
</head>
<body>
	<table id="BuyPageArea">
	<tr>
			<td colspan="2" class="pageTitle"  align="center">주문결제</td>
		</tr>
		<tr>
			<td colspan="2">
				<table id="buckettable">
					<tr>
						<td align="right">
							<div id="leftz" class="gobuyon3">①&nbsp;&nbsp;</div>
							<div class="gobuyon4">장바구니&nbsp;&nbsp;</div>
							<div class="gobuyon3">＞&nbsp;&nbsp;</div>
							<div class="gobuyon">②&nbsp;&nbsp;</div>
							<div class="gobuyon2">주문결제&nbsp;&nbsp;</div>
							<div class="gobuyon">＞&nbsp;&nbsp;</div>
							<div class="gobuyon3">③&nbsp;&nbsp;</div>
							<div class="gobuyon4">주문완료&nbsp;&nbsp;</div>
							<div class="gobuyon3"></div>
				</table>
			</td>
		</tr>
		<tr>
			<td class="Buypadding"><div class="BuyPageSubtitle">여권 정보</div>
				<div class="BuyPageSubtitle2">여권정보는 여권정보페이지에서 수정이 가능합니다.</div>
				<table id="BuyMyInfoTable">
					<tr>
						<td class="MyInfotd1">이름</td>
						<td class="MyInfotd2"><span id="username">${sessionScope.loginMember.u_name }</span>/${gender}</td>
						<td class="MyInfotd1">생년월일</td>
						<td class="MyInfotd2">${BirthDay}</td>
					</tr>
					<tr>
						<td class="MyInfotd1">여권번호</td>
						<td class="MyInfotd2">${Passport.pp_ppnumber }</td>
						<td class="MyInfotd1">여권만료일</td>
						<td class="MyInfotd2"><fmt:formatDate value="${Passport.pp_exp }" pattern="yyyy년 MM월 dd일 까지"/> </td>
					</tr>
					<tr>
						<td class="MyInfotd1">여권이름(영문)</td>
						<td class="MyInfotd2">${Passport.pp_engname }</td>
						<td class="MyInfotd1">이메일</td>
						<td class="MyInfotd2" id="emailtd">${sessionScope.loginMember.u_mail}</td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td class="Buypadding"><div class="BuyPageSubtitle">출국 정보</div>
				<div id="LeaveChangeDiv">변경하기</div>
				<table id="BuyLeaveTable">
					<tr>
					<td class="MyInfotd1">출국일시</td>
						<td class="MyInfotd2">2019년 5월 8일 / 11:05</td>
						<td class="MyInfotd1">항공편</td>
						<td class="MyInfotd2">KE5675</td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td class="Buypadding"><div class="BuyPageSubtitle">주문 내역 <span id="productlist"></span> </div>
					<table id="buylisttable">
						<tr id="buylisttabletr1">
							<td colspan="2">상품정보</td>
							<td>정상가</td>
							<td>회원/상품할인</td>
							<td>수량</td>
							<td>구매금액</td>
						</tr>
			<c:forEach var="b"  items="${buylist}" varStatus="idx">
						<tr id="buylistproducttr${idx.count}">
						<td class="buylistproductimgtd"><img src="${b.p_img }"></td>
							<td class="buylistproductinfotd"><div class="buylistbranddiv">${b.p_brand}</div>
							<div class="buylistnamediv">${b.p_name }</div>
							<div id="buylistnumberdiv${idx.count}" class="buylistnumberdiv">[#${b.p_number}]</div></td>
							<td class="buylistpricetd">$<span class="pricecomma1" id="buylistbeforeprice${idx.count}">${b.p_price}</span></td>
							<td class="buylistdiscounttd"><div>$<span class="pricecomma1" id="buylistdiscountmoney${idx.count}"></span></div>
							<div class="buylistdistcountratediv">(<span id="buylistdiscountratespan${idx.count}">${b.d_discountrate}</span>%)</div></td>
							<td class="buylistcounttd" id="buylistcounttd${idx.count}">${b.p_count}</td>
							<td class="buylistbuypricetd">
							<div>$<span class="pricecomma1" id="buylistafterprice${idx.count}"></span></div>
							<div>(<span class="pricecomma0" id="buylistkorspan${idx.count}"></span>원)</div></td>
						</tr>
				</c:forEach>
					</table>
				</td>
		</tr>
		<tr>
			<td class="Buypadding"><div class="BuyPageSubtitle">결제 하기</div>
				<table>
					<tr>
						<td><table id="BuyLeftTable">
								<tr>
									<td class="BuyLefttd1">쿠폰</td>
									<td id="BuyCoupontd1">적용쿠폰 : <span id="UseCouponspan">선택안함</span><span id="UseCouponspan2"></span>
										<button id="couponselectgo">선택</button></td>
								</tr>
								<tr>
									<td class="BuyLefttd1" rowspan="2">HK머니<br>(최대30%)</td>
									<td id="BuyPointtd1"><div>현재 잔여 포인트 : <span id="MyPointSpan" class="pricecomma0">${UserPoint}</span><span>원</span></div>
									<div>사용가능 포인트: <span class="pricecomma0" id="usepossiblePoint"></span><span>원</span></div>
									</td>
								</tr>
								<tr>
									<td id="BuyPointtd2">사용하기 : <input id="Pointinput" >
										원 <input id="AllPointCheck" type="checkbox"> 전액사용 <button id="PointUsebutton">적용</button><button id="PointNotUsebutton">적용해제</button>
									</td>
								</tr>
								<tr>
									<td class="BuyLefttd1">결제수단</td>
									<td id="Buypaymenttd"><input name="pay" value="card" type="radio" checked="checked"/>신용카드
										&nbsp&nbsp <input name="pay" value="trans" type="radio"/>계좌이체
										&nbsp&nbsp <input name="pay" value="vbank" type="radio"/>무통장입금<br>
										</td>
								</tr>
								<tr>
									<td class="BuyLefttd1" rowspan="3">카드<br> & <br>
										할부
									</td>
									<td class="BuyCardtd">카드종류: <select>
									<option>신한카드</option>
									<option>현대카드</option>
									<option>비씨카드</option>
									<option>삼성카드</option>
									<option>국민카드</option>
									<option>농협카드</option>
									<option>씨티카드</option>
									</select></td>
								</tr>
								<tr>
									<td class="BuyCardtd">할부: <select>
									<option>일시불</option>
									<option>1개월</option>
									<option>2개월</option>
									<option>3개월</option>
									<option>4개월</option>
									<option>5개월</option>
									<option>6개월</option>
									<option>7개월</option>
									<option>8개월</option>
									<option>9개월</option>
									<option>10개월</option>
									<option>11개월</option>
									<option>12개월</option>
									</select></td>
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
									<td id="BuyRightBuymoney2">
									<div>$<span class="pricecomma1" id="Allbuyprice"></span></div>
									<div> (<span class="pricecomma0" id="Allbuykorprice"></span>원)</div></td>
								</tr>
								<tr>
									<td class="BuyRighttd1">회원할인</td>
									<td class="BuyRighttd2">
									<div>$ <span class="pricecomma1" id="Userdiscountspan1"></span><span id="Userdiscountspan2"></span></div>
									<div>(<span class="pricecomma0" id="Userdiscountspan3"></span>원)</div></td>
								</tr>
								<tr>
									<td class="BuyRighttd1">쿠폰할인</td>
									<td class="BuyRighttd2">
									<div><span id="coupondiscountpricespan1"></span><span id="coupondiscount"></span><span id="coupondiscountpricespan2" ></span></div>
									<div><span id="coupondiscountpricespan3"></span ><span id="coupondiscountpricespan4"></span><span id="coupondiscountpricespan5"></span></div></td>
								</tr>
								
								<tr>
									<td class="BuyRighttd1">포인트 사용</td>
									<td class="BuyRighttd2"><span class="pricecomma0" id="PointUseSpan">0</span> 원</td>
								</tr>
								<tr>
									<td id="BuyLastMoneytitle" colspan="2">최종 결제금액</td>
								</tr>
								<tr>
									<td id="BuyLastMoney" colspan="2">
									<div>$ <span class="pricecomma1" id="finalprice"></span></div>
									<div>(<span class="pricecomma0" id="finalkorprice"></span>원)</div>
									</td>
								</tr>
								<tr>
									<td align="center" id="BuyLastButtontd" colspan="2"><button
											id="BuyButton">주문하기</button></td>
								</tr>
							</table></td>
					</tr>
				</table></td>
		</tr>
	</table>
</body>
</html>