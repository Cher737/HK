<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>장바구니</title>
<link rel="stylesheet" href="resources/css/product.css">
</head>
<body>
	<table id="buckettable">
		<tr>
			<td class="buckettitle" colspan="2" align="left"> 장바구니</td>
		</tr>
	</table>
	
	<table class="estimatedpurchasetable" align="right">
		<tr>
			<td class="estimatedpurchasepricetd" align="left">결제예정금액</td>
		</tr>
		<tr>
			<td class="estimatedpurchaseprice" align="right">$399.7</td>
		</tr>
		<tr>
			<td class="estimatedpurchasepointtd" align="left">적립예정포인트</td>
		</tr>
		<tr>
			<td class="estimatedpurchasepoint" align="right">3950</td>
		</tr>
		<tr>
			<td align="center">
				<button class="bucketpurchasebtn">주문하기</button>
			</td>
		</tr>
	</table>
	
	<table class="bucketlist" align="left">
		<tr>
			<td class="bucketproductname" colspan="2">엠포리오 아르마니 EMPORIO ARMANI</td>
			<td class="bucketdeletetd" align="right"><button class="bucketdeletebtn">삭제</button></td>
		</tr>
		<tr class="bucketproductinfo">
			<td class="bucketproductimgtd" rowspan="2" colspan="2">
				<img class="bucketproductimg" src="http://static.lottedfs.com/prod/prd-img/80/51/01/00/00/01/10000015180_8.jpg/dims/resize/90x90">
			</td>
			<td class="bucketproductprice" align="left">$ 315</td>
		</tr>
		<tr>
			<td align="left">
				<select class="bucketproductnumber">
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
					<option>5</option>
				</select>
			</td>
		</tr>
	</table>
	
	<table class="bucketlist" align="left">
		<tr>
			<td class="bucketproductname" colspan="2">숄더백 SALVIA JOY MINI BK</td>
			<td class="bucketdeletetd" align="right"><button class="bucketdeletebtn">삭제</button></td>
		</tr>
		<tr class="bucketproductinfo">
			<td class="bucketproductimgtd" rowspan="2" colspan="2">
				<img class="bucketproductimg" src="http://static.lottedfs.com/prod/prd-img/80/51/01/00/00/01/10000015180_8.jpg/dims/resize/90x90">
			</td>
			<td class="bucketproductprice" align="left">$ 84.7</td>
		</tr>
		<tr>
			<td align="left">
				<select class="bucketproductnumber">
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
					<option>5</option>
				</select>
			</td>
		</tr>
	</table>
	
</body>
</html>