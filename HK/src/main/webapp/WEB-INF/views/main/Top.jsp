<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/Top.css">
</head>
<body>
	<table id="TopmainTable">
		<tr>
		<tr>
			<td>
				<h2>카테고리별 Top 10</h2>
			</td>
		</tr>
	</table>
	<table id="Topmenutable">
		<tr>
			<td align="center">
				<div class="menu">화장품/향수</div>
				<div class="menu">패션/잡화</div>
				<div class="menu">시계/주얼리</div>
				<div class="menu">전자제품</div>
				<div class="menu">식품</div>
			</td>
		</tr>
	</table>

	<table class="producttable1">
		<tr id="producttr1">
			<c:forEach var="spd" items="${spdt}" begin="0" end="4" varStatus="idx">
			<!-- 배열(진짜 for-each)을 원하면 items -->
				<td class="producttd">
					<table class="inproducttable">
						<tr>
							<td class="inimgtd" colspan="2" align="center"><img
								class="topimg" src="${spd.p_img }">
							<td>
						</tr>
						<tr>
							<td class="brandtd" colspan="2">${spd.p_brand }</td>
						</tr>
						<tr>
							<td class="nametd" colspan="2">${spd.p_name }</td>
						</tr>
						<tr>
							<td class="pricetd" colspan="2"><span class="pricespan">$<span class="pricespand"
									id="pricespan${idx.count}">${spd.p_price }</span></span><span id="discount${idx.count}"
								class="discountratespan">${spd.d_discountrate }% off</span></td>
						</tr>
						<tr>
							<td class="discountpricetd" colspan="2"><span
								id="discountpricespan${idx.count}" class="discountpricespan">
							</span><span id="price2span${idx.count}" class="price2span"></span></td>
						</tr>
						<tr>
							<td id="${spd.p_number}" class="carttd">장바구니</td>
							<td class="buytd">바로구매</td>
						</tr>
					</table>
				</td>
			</c:forEach>
		</tr>
	</table>
	<table class="producttable2">
		<tr id="producttr2">
			<c:forEach var="spd" items="${spdt}" begin="5" end="9" varStatus="idx">
				<td class="producttd">
					<table class="inproducttable">
						<tr>
							<td class="inimgtd" colspan="2" align="center"><img
								class="topimg" src="${spd.p_img }">
							<td>
						</tr>
						<tr>
							<td class="brandtd" colspan="2">${spd.p_brand }</td>
						</tr>
						<tr>
							<td class="nametd" colspan="2">${spd.p_name }</td>
						</tr>
						<tr>
							<td class="pricetd" colspan="2"><span class="pricespan">$<span
									id="pricespan${idx.count+5}">${spd.p_price }</span></span> <span
								id="discount${idx.count+5}" class="discountratespan">${spd.d_discountrate }%
									off</span></td>
						</tr>
						<tr>
							<td class="discountpricetd" colspan="2"><span
								id="discountpricespan${idx.count+5}" class="discountpricespan">
							</span><span id="price2span${idx.count+5}" class="price2span"></span></td>
						</tr>
						<tr>
							<td id="${spd.p_number}" class="carttd">장바구니</td>
							<td class="buytd">바로구매</td>
						</tr>
					</table>
				</td>
			</c:forEach>
		</tr>
	</table>

</body>
</html>