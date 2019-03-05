<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품상세페이지</title>
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
	
	<table class="categorytable">
		<tr>
			<td class="categorytd1">
				<select class="categoryone">
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
				<select class="categorytwo">
					<option value="">남성상의</option>
					<option>남성하의</option>
					<option>여성상의</option>
					<option>여성하의</option>
				</select>
			</td>
			<td class="categorytitle"></td>
			
			<td class="categorysearch1" align="right">
			</td>
			<td class="categorysearch2" align="left">
			</td>
		</tr>
	</table>
	
	<table class="productdetailtable1">
		<tr>
			<td class="productname" colspan="7" align="left"> 엠포리오 아르마니 EMPORIO ARMANI</td>
		</tr>
		<tr >
			<td rowspan="5" colspan="5" align="center" class="productdetailimgtd">
				<img class="productdetailimg" src="http://static.lottedfs.com/prod/prd-img/80/51/01/00/00/01/10000015180_8.jpg/dims/resize/340x340">
			</td>
			<td class="productdetailoriginalpricetd" align="center">정상가</td>
			<td align="center"> $ 370</td>
		</tr>
		<tr>
			<td class="productdetailsailpricetd" align="center">할인가</td>
			<td class="productdetailsailprice" align="center"> $ 340.2</td>
		</tr>
		<tr>
			<td class="productdetailcode" colspan="2" align="center">상품코드 : 2013506111</td>
		</tr>
		<tr>
			<td class="productdetailtd1" align="center">포인트</td>
			<td align="center"> 결제금액의 5% 적립</td>
		</tr>
		<tr>
			<td class="productdetailtd1" align="center">수량 :</td>
			<td align="center">
				<select class="productdetailnumber">
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
					<option>5</option>
				</select>
			 개</td>
		</tr>
		<tr>
			<td align="center"><img class="productdetailsmallimg"
					src="http://static.lottedfs.com/prod/prd-img/80/51/01/00/00/01/10000015180_8.jpg/dims/resize/68x68"></td>
			<td align="center"><img class="productdetailsmallimg"
					src="http://static.lottedfs.com/prod/prd-img/80/51/01/00/00/01/10000015180_10.jpg/dims/resize/68x68"></td>
			<td align="center"><img class="productdetailsmallimg"
					src="http://static.lottedfs.com/prod/prd-img/80/51/01/00/00/01/10000015180_11.jpg/dims/resize/68x68"></td>
			<td align="center"><img class="productdetailsmallimg"
					src="http://static.lottedfs.com/prod/prd-img/80/51/01/00/00/01/10000015180_12.jpg/dims/resize/68x68"></td>
			<td align="center"><img class="productdetailsmallimg"
					src="http://static.lottedfs.com/prod/prd-img/80/51/01/00/00/01/10000015180_13.jpg/dims/resize/68x68"></td>
			<td class="productdetailbuckettd" rowspan="2" align="center">
				<button class="productdetailbucketbtn">장바구니</button>
			</td>
			<td class="productpurchasetd" rowspan="2" align="center">
				<button class="purchasebtn">바로구매</button>
			</td>
		</tr>
		<tr>
			<td class="productdetailevaluate" colspan="4" align="center">
			<img class="starone" src="resources/img/starone.png">
			<img class="starone" src="resources/img/starone.png">
			<img class="starone" src="resources/img/starone.png">
			<img class="starone" src="resources/img/starone.png">
			<img class="starone" src="resources/img/starone.png">
			</td>
			<td class="productdetailscore" align="left">100 점</td> 
		</tr>
	</table>
	
	<table class="productdetailtable2" border="1">
		<tr>
			<td class="productdetailtd2" align="center">상세정보</td>
			<td class="productdetailtd2" align="center">상품평</td>
			<td class="productdetailtd2" align="center">상품 QnA</td>
			<td class="productdetailtd2" align="center">취소/환불안내</td>
		</tr>
	</table>	
		

</body>
</html>