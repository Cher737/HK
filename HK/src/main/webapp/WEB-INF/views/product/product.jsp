<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품목록페이지</title>
<link rel="stylesheet" href="resources/css/product.css">
<script src="resources/js/jquery.js"></script>
<script src="resources/js/Product.js"></script>
</head>
<body>

	<table class="categorytable">
		<tr>
			<td class="categorytd1"><select name="categoryone" class="categoryone">
					<option  value="화장품/향수">화장품/향수</option>
					<option value="패션/잡화">패션/잡화</option>
					<option  value="시계/주얼리">시계/주얼리</option>
					<option  value="전자제품">전자제품</option>
					<option  value="식품">식품</option>
					<!-- 밸류 쓰면 실제 전달되는 값이 달라짐(다르게 하고 싶을때) -->
			</select></td>
			<td class="categorytd2"><select id="selectcate2"></select></td>
			<td class="categorytitle" align="center"></td>

			<td class="categorysearch1" align="right"><input
				id="searchproductInput" placeholder="카테고리내 검색" maxlength="15"
				autocomplete="off"></td>
			<td class="categorysearch2" align="center">
				<button class="categorysearchbtn">검색</button>
			</td>
		</tr>
	</table>

	<table id="selecttable">
		<tr>
			<td class="subtitle" align="center">가격대</td>
			<td class="sc"><input class="cb1" type="checkbox" id="cb1"><label
				for="cb1"></label> $10 미만</td>
			<td class="sc"><input class="cb1" type="checkbox" id="cb2"><label
				for="cb2"></label> $10 ~ $50</td>
			<td class="sc"><input class="cb1" type="checkbox" id="cb3"><label
				for="cb3"></label> $50 ~ $100</td>
			<td class="sc"><input class="cb1" type="checkbox" id="cb4"><label
				for="cb4"></label> $100 ~ $300</td>
			<td class="sc"><input class="cb1" type="checkbox" id="cb5"><label
				for="cb5"></label> $301이상</td>
		</tr>
		<tr>
			<td class="subtitle" align="center">성별</td>
			<td class="sc"><input class="cb2" type="checkbox" id="cb6"><label
				for="cb6"></label> 남성</td>
			<td class="sc"><input class="cb2" type="checkbox" id="cb7"><label
				for="cb7"></label> 여성</td>
			<td class="sc" colspan="3"><input class="cb2" type="checkbox" id="cb8"><label
				for="cb8"></label> 남녀공용</td>
		</tr>
		<tr>
			<td class="subtitle" align="center">혜택</td>
			<td class="sc"><input class="cb3" type="checkbox" id="cb9"><label
				for="cb9"></label> 세일</td>
			<td class="sc" colspan="4"></td>
		</tr>
	</table>


	<table class="producttable1">
	</table>
	<table class="producttable2">
	</table>
	<table class="producttable3">
	</table>
	<table>
		<tr>
			<td id="pagetd" align="center"></td>
		</tr>
	</table>

</body>
</html>