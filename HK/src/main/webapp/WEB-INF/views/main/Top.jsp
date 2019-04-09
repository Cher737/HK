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
<script src="resources/js/mainpageProduct.js"></script>
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
<div class="menu">스킨케어/메이크업</div>
<div class="menu">향수/바디/헤어</div>
<div class="menu">가방/지갑</div>
<div class="menu">시계/주얼리</div>
<div class="menu">패션/잡화</div>
<div class="menu">디지털/전자담배</div>
<div class="menu">식품/리빙</div></td>
</tr></table>

<table class="producttable1">
	<tr id="producttr1">
		<c:forEach var="spd" items="${spds}" begin="10" end="14">
		<!-- 배열(진짜 for-each)을 원하면 items -->
			<td class="producttd">
				<table class="inproducttable">
					<tr><td class="inimgtd" colspan="2" align="center"><img class="topimg" src="${spd.p_img }"><td></tr>
					<tr><td class="brandtd" colspan="2">${spd.p_brand }</td></tr>
					<tr><td class="nametd" colspan="2">${spd.p_name }</td></tr>
					<tr><td class="pricetd" colspan="2"><span class="pricespan">${spd.p_price }</span><span class="discountratespan">${spd.d_discountrate }% off</span></td></tr>
					<tr><td class="discountpricetd" colspan="2"><span class="discountpricespan"></span><span class="price2span"></span></td></tr>
					<tr><td class="carttd">장바구니</td><td class="buytd">바로구매</td></tr>
				</table>
			</td>
		</c:forEach>
	</tr>
</table>
<table class="producttable2">
	<tr id="producttr2">
		<c:forEach var="spd" items="${spds}" begin="15" end="19">
			<td class="producttd">
				<table class="inproducttable">
					<tr><td class="inimgtd" colspan="2" align="center"><img class="topimg" src="${spd.p_img }"><td></tr>
					<tr><td class="brandtd" colspan="2">${spd.p_brand }</td></tr>
					<tr><td class="nametd" colspan="2">${spd.p_name }</td></tr>
					<tr><td class="pricetd" colspan="2"><span class="pricespan">${spd.p_price }</span><span class="discountratespan">${spd.d_discountrate }% off</span></td></tr>
					<tr><td class="discountpricetd" colspan="2"><span class="discountpricespan"></span><span class="price2span"></span></td></tr>
					<tr><td class="carttd">장바구니</td><td class="buytd">바로구매</td></tr>
				</table>
			</td>
		</c:forEach>
	</tr>
</table>

</body>
</html>