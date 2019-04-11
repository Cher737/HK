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
<script src="resources/js/buyresult.js"></script>
</head>
<body>
	<table>
		<tr>
			<td colspan="2" class="pageTitle" align="center">주문완료</td>
		</tr>
		<tr>
			<td colspan="2">
				<table id="buckettable">
					<tr>
						<td align="right">
							<div id="leftz" class="gobuyon3">①&nbsp;&nbsp;</div>
							<div class="gobuyon4">장바구니&nbsp;&nbsp;</div>
							<div class="gobuyon3">＞&nbsp;&nbsp;</div>
							<div class="gobuyon3">②&nbsp;&nbsp;</div>
							<div class="gobuyon4">주문결제&nbsp;&nbsp;</div>
							<div class="gobuyon3">＞&nbsp;&nbsp;</div>
							<div class="gobuyon">③&nbsp;&nbsp;</div>
							<div class="gobuyon2">주문완료&nbsp;&nbsp;</div>
							<div class="gobuyon"></div>
				</table>
			</td>
		</tr>
		<tr>
			<td><table id="ResultTable">
					<tr>
						<td id="ResultTabletd1">주문 결제가 완료되었습니다.</td>
					</tr>
					<tr>
						<td id="ResultTabletd2">HK면세점을 이용해주셔서 감사합니다.</td>
					</tr>
				</table></td>
		</tr>
	</table>
	<table id="ResultTable2">
		<tr>
			<td>
				<ul>
					<li>주문내역은 마이롯데>마이쇼핑내역>주문내역에서 확인 가능하며, 교환권을 출력하여 출국 당일 인도장에
						제시하시면 상품을 인도받을 수 있습니다.</li>
					<li>구 여권번호 또는 잘못 입력하신 여권번호로 주문하시거나, 여권상 기재되어 있는 영문이름과 동일하지 않을
						경우 상품 수령이 불가합니다.</li>
					<li>상품 구매완료 후 여권정보 또는 출국정보 수정을 원하시는 경우 마이롯데에서 수정하시거나 출국2일 전까지
						연락을 주셔야 상품 수령이 가능합니다. (고객센터 1688-3000, 1번)</li>
					<li>출국 시 인도받지 못한 상품은 취소접수를 하시거나, 재 출국 시 인도가 가능하나 30일이 경과될 경우
						자동으로 주문취소 처리됩니다.</li>
				</ul>

			</td>
		</tr>
	</table>

	<table id="BuyPageArea">
		<tr>
			<td class="Buypadding"><div class="BuyPageSubtitle">주문 정보</div>
				<table id="BuyLeaveTable">
					<tr>
						<td class="MyInfotd1">주문번호</td>
						<td class="MyInfotd2">${Buylist.b_buycode}</td>
						<td class="MyInfotd1">주문일시</td>
						<td class="MyInfotd2"><fmt:formatDate value="${Buylist.b_date}" pattern="yyyy-MM-dd HH:mm:ss"/> </td>
					</tr>
				</table></td>
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
			<td class="Buypadding"><div class="BuyPageSubtitle">
					주문 내역 <span>(총 ${Productcount}종)</span>
				</div>
				<table id="buylisttable">
					<tr id="buylisttabletr1">
						<td colspan="2">상품정보</td>
						<td>정상가</td>
						<td>회원/상품할인</td>
						<td>수량</td>
						<td>구매금액</td>
					</tr>
					<c:forEach var="b" items="${BuyDetail}" varStatus="idx">
						<tr id="buylistproducttr${idx.count}">
							<td class="buylistproductimgtd"><img src="${b.p_img }"></td>
							<td class="buylistproductinfotd"><div
									class="buylistbranddiv">${b.p_brand}</div>
								<div class="buylistnamediv">${b.p_name }</div>
								<div id="buylistnumberdiv${idx.count}" class="buylistnumberdiv">[#${b.bd_pnumber}]</div></td>
							<td class="buylistpricetd">$<span class="pricecomma1"
								id="buylistbeforeprice${idx.count}">${b.p_price}</span></td>
							<td class="buylistdiscounttd"><div>
									$<span class="pricecomma1"
										id="buylistdiscountmoney${idx.count}"></span>
								</div>
								<div class="buylistdistcountratediv">
									(<span id="buylistdiscountratespan${idx.count}">${b.d_discountrate}</span>%)
								</div></td>
							<td class="buylistcounttd" id="buylistcounttd${idx.count}">${b.bd_count}</td>
							<td class="buylistbuypricetd">
								<div>
									$<span class="pricecomma1" id="buylistafterprice${idx.count}"></span>
								</div>
								<div>
									(<span class="pricecomma0" id="buylistkorspan${idx.count}"></span>원)
								</div>
							</td>
						</tr>
					</c:forEach>
				</table></td>
		</tr>
		<tr>
			<td class="Buypadding">
				<table id="BuyResultTable">
					<tr>
						<td><table id="onetable">
								<tr>
									<td id="onetabletd1"><div class="topdivname">정상가</div>
										<div id="opri">(오프라인매장가)</div></td>
									<td><div class="Allpricediv1">
											$<span class="pricecomma1" id="onetableprice"></span>
										</div>
										<div class="Allpricediv2">
											(<span class="pricecomma0" id="onetablekorprice"></span>원)
										</div></td>
								</tr>
							</table></td>
						<td><table id="twotable">
								<tr id="twotabletr1">
									<td><div class="topdivname">총 할인금액</div></td>
									<td><div class="Allpricediv1">
											$<span class="pricecomma1" id="alldiscountprice"></span>
										</div>
										<div class="Allpricediv2">
											(<span class="pricecomma0" id="alldiscountkorprice"></span>원)
										</div></td>
								</tr>
								<tr>
									<td colspan="2"><div class="discountdivs2">회원/상품할인</div>
										<div class="discountdivs">
											$<span class="pricecomma1" id="userdiscountprice"></span>(<span
												class="pricecomma0" id="userdiscountkorprice"></span>원)
										</div></td>
								</tr>
								<tr>
									<td colspan="2"><div class="discountdivs2">멤버십추가할인</div>
										<div class="discountdivs">
											$<span class="pricecomma1" id="memberdiscountprice"></span>(<span
												class="pricecomma0" id="memberdiscountkorprice">${Buylist.b_udiscount}</span>원)
										</div></td>
								</tr>
								<tr>
									<td colspan="2"><div class="discountdivs2">쿠폰 할인</div>
										<div class="discountdivs">
											$<span class="pricecomma1" id="coupondiscountprice"></span>(<span
												class="pricecomma0" id="coupondiscountkorprice">${Buylist.b_ucdiscount}</span>원)
										</div></td>
								</tr>
								<tr>
									<td colspan="2"><div class="discountdivs2">HK.POINT</div>
										<div class="discountdivs">
											<span class="pricecomma0" id="pointdiscountprice">${Buylist.b_ptdiscount}</span>원
										</div></td>
								</tr>
							</table></td>
						<td><table id="threetable">
								<tr id="threetr1">
									<td><div class="topdivname">최종 결제금액</div></td>
									<td><div id="LastBuydiv1">
											$<span class="pricecomma1" id="LastBuyPrice"></span>
										</div>
										<div id="LastBuydiv2">
											(<span class="pricecomma0" id="LastBuykorPrice">${Buylist.b_payment}</span>원)
										</div></td>
								</tr>
								<tr>
									<td id="lasttd" colspan="2"><div class="discountdivs2">HK.POINT 적립</div>
										<div class="discountdivs">
											<span class="pricecomma0" id="pointinputspan"></span>원
										</div></td>
								</tr>
							</table></td>
					<tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>