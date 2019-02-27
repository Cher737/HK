<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/product.css">
<script src="resources/js/jquery.js"></script>
<script type="text/javascript">

$(function(){
	$("#Supportgo").click(function(){
		location.href = "Support.FAQ";
	});
});

</script>
</head>
<body>
	
	<table class="categorytable" border="1">
		<tr>
			<td class="categorytd1">
				<select name="categoryone">
					<option value="">스킨케어/메이크업</option>
					<option>향수/바디/헤어</option>
					<option>가방/지갑</option>
					<option>시계/주얼리</option>
					<option>패션/잡화</option>
					<option>디지털/전자담배</option>
					<option>식품/리빙</option>
					<!-- 밸류 쓰면 실제 전달되는 값이 달라짐(다르게 하고 싶을때) -->
				</select>
			</td>
			<td class="categorytd2">
				<select name="categorytwo">
					<option value="">남성상의</option>
					<option>남성하의</option>
					<option>여성상의</option>
					<option>여성하의</option>
				</select>
			</td>
			<td class="categorytitle">남성상의</td>
			
			<td class="categorysearch1" align="right">
				<input id="searchproductInput" placeholder="카테고리내 검색" maxlength="15" autocomplete="off">
			</td>
			<td class="categorysearch2" align="left">
				<img id="searchproductimg" src="resources/img/search.png">
			</td>
		</tr>
	</table>
	
	<table id="selecttable" border="1">
		<tr>
			<td class="subtitle">가격대</td>
			<td><input type="checkbox"> $10 미만</td>
			<td><input type="checkbox"> $10 ~ $50</td>
			<td><input type="checkbox"> $50 ~ $100</td>
			<td><input type="checkbox"> $100 ~ $300</td>
			<td><input type="checkbox"> $301이상</td>
		</tr>
		<tr>
			<td class="subtitle">성별</td>
			<td><input type="checkbox"> 남성</td>
			<td><input type="checkbox"> 여성</td>
			<td><input type="checkbox"> 남여공용</td>
		</tr>
		<tr>
			<td class="subtitle">혜택</td>
			<td><input type="checkbox"> 세일</td>
			<td><input type="checkbox"> 쿠폰</td>
		</tr>
	</table>
	
	
	<table class="producttable1" border="1">
		<tr>
			<td>
				<img class="topimg"
					src="http://static.lottedfs.com/prod/prd-img/01/87/32/02/00/01/10002328701_3.jpg/dims/resize/180x180">
					<div>
						태그호이어
						<p>TAG HEUER
						<p>FORMULA 1
					</div>
					<div>1,450$</div></td>
					<td>
				<img class="topimg"
					src="http://static.lottedfs.com/prod/prd-img/81/36/28/02/00/01/10002283681_3.jpg/dims/resize/180x180">
					<div>
						태그호이어
						<p>TAG HEUER
						<p>FORMULA 1
					</div>
					<div>1,450$</div></td>
					<td>
				<img class="topimg"
					src="http://static.lottedfs.com/prod/prd-img/66/64/49/00/00/02/20000496466_1.jpg/dims/resize/180x180">
					<div>
						태그호이어
						<p>TAG HEUER
						<p>FORMULA 1
					</div>
					<div>1,450$</div></td>
					<td>
				<img class="topimg"
					src="http://static.lottedfs.com/prod/prd-img/57/97/08/03/00/01/10003089757_3.jpg/dims/resize/180x180">
					<div>
						태그호이어
						<p>TAG HEUER
						<p>FORMULA 1
					</div>
					<div>1,450$</div></td>
					<td>
				<img class="topimg"
					src="http://static.lottedfs.com/prod/prd-img/15/43/38/00/00/02/20000384315_1.jpg/dims/resize/180x180">
					<div>
						태그호이어
						<p>TAG HEUER
						<p>FORMULA 1
					</div>
					<div>1,450$</div>
			</td>
		</tr>
	</table>
	<table class="producttable2" border="1">
		<tr>
			<td>
				<img class="topimg"
					src="http://static.lottedfs.com/prod/prd-img/01/87/32/02/00/01/10002328701_3.jpg/dims/resize/180x180">
					<div>
						태그호이어
						<p>TAG HEUER
						<p>FORMULA 1
					</div>
					<div>1,450$</div></td>
					<td>
				<img class="topimg"
					src="http://static.lottedfs.com/prod/prd-img/81/36/28/02/00/01/10002283681_3.jpg/dims/resize/180x180">
					<div>
						태그호이어
						<p>TAG HEUER
						<p>FORMULA 1
					</div>
					<div>1,450$</div></td>
					<td>
				<img class="topimg"
					src="http://static.lottedfs.com/prod/prd-img/66/64/49/00/00/02/20000496466_1.jpg/dims/resize/180x180">
					<div>
						태그호이어
						<p>TAG HEUER
						<p>FORMULA 1
					</div>
					<div>1,450$</div></td>
					<td>
				<img class="topimg"
					src="http://static.lottedfs.com/prod/prd-img/57/97/08/03/00/01/10003089757_3.jpg/dims/resize/180x180">
					<div>
						태그호이어
						<p>TAG HEUER
						<p>FORMULA 1
					</div>
					<div>1,450$</div></td>
					<td>
				<img class="topimg"
					src="http://static.lottedfs.com/prod/prd-img/15/43/38/00/00/02/20000384315_1.jpg/dims/resize/180x180">
					<div>
						태그호이어
						<p>TAG HEUER
						<p>FORMULA 1
					</div>
					<div>1,450$</div>
			</td>
		</tr>
	</table>	
	<table class="producttable3" border="1">		
		<tr>
			<td>
				<img class="topimg"
					src="http://static.lottedfs.com/prod/prd-img/01/87/32/02/00/01/10002328701_3.jpg/dims/resize/180x180">
					<div>
						태그호이어
						<p>TAG HEUER
						<p>FORMULA 1
					</div>
					<div>1,450$</div></td>
					<td>
				<img class="topimg"
					src="http://static.lottedfs.com/prod/prd-img/81/36/28/02/00/01/10002283681_3.jpg/dims/resize/180x180">
					<div>
						태그호이어
						<p>TAG HEUER
						<p>FORMULA 1
					</div>
					<div>1,450$</div></td>
					<td>
				<img class="topimg"
					src="http://static.lottedfs.com/prod/prd-img/66/64/49/00/00/02/20000496466_1.jpg/dims/resize/180x180">
					<div>
						태그호이어
						<p>TAG HEUER
						<p>FORMULA 1
					</div>
					<div>1,450$</div></td>
					<td>
				<img class="topimg"
					src="http://static.lottedfs.com/prod/prd-img/57/97/08/03/00/01/10003089757_3.jpg/dims/resize/180x180">
					<div>
						태그호이어
						<p>TAG HEUER
						<p>FORMULA 1
					</div>
					<div>1,450$</div></td>
					<td>
				<img class="topimg"
					src="http://static.lottedfs.com/prod/prd-img/15/43/38/00/00/02/20000384315_1.jpg/dims/resize/180x180">
					<div>
						태그호이어
						<p>TAG HEUER
						<p>FORMULA 1
					</div>
					<div>1,450$</div>
			</td>
		</tr>
	</table>
		

</body>
</html>