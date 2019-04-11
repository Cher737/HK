<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>장바구니</title>
<script src="resources/js/buy.js"></script>
<link rel="stylesheet" href="resources/css/product.css">
</head>
<body>
	<table id="bucketbodytable">
		<tr>
			<td colspan="2" class="pageTitle"  align="center">장바구니</td>
		</tr>
		<tr>
			<td colspan="2">
				<table id="buckettable">
					<tr>
						<td align="right">
							<div id="leftz" class="gobuyon">①&nbsp;&nbsp;</div>
							<div class="gobuyon2">장바구니&nbsp;&nbsp;</div>
							<div class="gobuyon">＞&nbsp;&nbsp;</div>
							<div class="gobuyon3">②&nbsp;&nbsp;</div>
							<div class="gobuyon4">주문결제&nbsp;&nbsp;</div>
							<div class="gobuyon3">＞&nbsp;&nbsp;</div>
							<div class="gobuyon3">③&nbsp;&nbsp;</div>
							<div class="gobuyon4">주문완료&nbsp;&nbsp;</div>
							<div class="gobuyon3"></div>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<table id="buckectlisttable">
					<tr>
						<td><c:if test="${MybucketList != null}">
								<c:forEach var="b" items="${MybucketList}" varStatus="idx">
									<table class="bucketlist">
										<tr>
											<td class="bucketproductname" colspan="5"><div>${b.p_brand}</div>
												<div>${b.p_name}</div></td>
											<td class="bucketdeletetd" align="right"><button
													class="bucketdeletebtn" id="${b.p_number}">삭제</button></td>
										</tr>
										<tr>
											<td align="center" class="bucketcheckboxtd" rowspan="3"><input
												id="ckb${idx.count}" checked="checked" type="checkbox">
											</td>
											<td class="bucketproductimgtd" rowspan="3"><img
												class="bucketproductimg" src="${b.p_img }">
										</tr>
										<tr>
											<td class="Bucketpricemenutd">판매금액</td>
											<td class="Bucketdiscountratemenutd">할인률</td>
											<td class="Bucketdiscountpricemenutd">구매금액</td>
											<td class="Bucketselectcountmenutd">수량</td>
										</tr>
										<tr class="bucketproductinfo">
											<td class="bucketproductprice">$ <span
												class="bucketpricespan1" id="bkpso${idx.count}">${b.p_price}</span>
											</td>
											<td class="bucketdiscountratetd"><span
												id="bkdrs${idx.count}">${b.d_discountrate}</span>%</td>
											<td class="bucketdiscountprice">
												<div class="bucketdiscountpricediv1">
													<span>$</span><span id="bkdpdo${idx.count}" class="bkdpdo"></span>
												</div>
												<div class="bucketdiscountpricediv2">
													(<span id="bkdpdt${idx.count}" class="bkdpdt"></span><span>원)</span>
												</div>
											</td>
											<td align="left"><select class="bucketproductnumber">
													<c:forEach begin="1" end="20" var="i">
														<option value="${i}">${i}</option>
													</c:forEach>
											</select></td>
										</tr>

									</table>
								</c:forEach>
							</c:if> <c:if test="${MybucketList == null}">
								<table class="bucketlist">
									<tr>
										<td class="bucketproductname" colspan="2">장바구니가 비었습니다.</td>
									</tr>
								</table>
							</c:if></td>
					</tr>
				</table>
			</td>
			<td>
				<table class="estimatedpurchasetable" align="right">
					<tr>
						<td class="estimatedpurchasepricetd" align="left">결제예정금액</td>
					</tr>
					<tr>
						<td class="estimatedpurchaseprice" align="right">
							<div>
								<span>$</span><span id="allpricespan"></span>
							</div>
							<div>
								(<span id="allpricespan2"></span> 원)
							</div>
						</td>
					</tr>
					<tr>
						<td class="estimatedpurchasepointtd" align="left">적립예정포인트</td>
					</tr>
					<tr>
						<td class="estimatedpurchasepoint" align="right"></td>
					</tr>
					<tr>
						<td align="center">
							<button class="bucketpurchasebtn">주문하기</button>
						</td>
					</tr>
				</table>
	</table>
</body>
</html>