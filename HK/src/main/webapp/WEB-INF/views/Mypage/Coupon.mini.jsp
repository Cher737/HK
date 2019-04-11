<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR"
	rel="stylesheet">
<script src="resources/js/jquery.js"></script>
<script src="resources/js/jquery.number.js"></script>
<link rel="stylesheet" href="resources/css/Mypage.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
$(function() {
	$(".couponselectbutton").click(function() {
		
		var Couponname = $(this).closest("tr").find(".Couponnametd2").find(".Couponname").text();
		var Couponnumber = $(this).closest("tr").find(".Couponnametd2").find(".Couponnumber").text();
		var CouponDiscount = $(this).closest("tr").find(".Coupondiscounttd2").text();
		CouponDiscount = CouponDiscount.replace(" ","").replace("%","").replace("원","");
		var CouponDiscountrate = 0;
		
		if(CouponDiscount > 100 ){
			var todaymoney = $(opener.document).find("#todaymoneyspan1").text().replace(/,/gi,"");
			$(opener.document).find("#coupondiscount").text("");
			$(opener.document).find("#coupondiscountpricespan1").text("");
			$(opener.document).find("#coupondiscountpricespan3").text("");
			$(opener.document).find("#coupondiscountpricespan4").text(CouponDiscount);
			$(opener.document).find("#coupondiscountpricespan5").text(" 원");
			$(opener.document).find("#coupondiscountpricespan2").text("");
			$(opener.document).find("#coupondiscountpricespan4").number(true,0);
			
			var finalkorprice = Number($(opener.document).find("#Allbuykorprice").text().replace(/,/gi,""));
			var Userdiscountkorprice = Number($(opener.document).find("#Userdiscountspan3").text().replace(/,/gi,""));
			var Point = Number($(opener.document).find("#PointUseSpan").text().replace(/,/gi,""));
			
			finalkorprice = finalkorprice - Userdiscountkorprice - CouponDiscount - Point ;
			var finalprice = finalkorprice /todaymoney;
			$(opener.document).find("#finalkorprice").text(finalkorprice);
			$(opener.document).find("#finalprice").text(finalprice);
			$(opener.document).find(".pricecomma0").number(true,0)
			$(opener.document).find(".pricecomma1").number(true,1)
		} else{
			var todaymoney = $(opener.document).find("#todaymoneyspan1").text().replace(/,/gi,"");
			var AllPrice = $(opener.document).find("#Allbuyprice").text().replace(/,/gi,"");
			CouponDiscountrate = CouponDiscount / 100;
			var CouponDiscountprice = CouponDiscountrate * AllPrice;
			$(opener.document).find("#coupondiscount").text(CouponDiscountprice);
			$(opener.document).find("#coupondiscountpricespan1").text("$ ");
			$(opener.document).find("#coupondiscountpricespan2").text(" ("+CouponDiscount+"%)");
			$(opener.document).find(".pricecomma1").number(true,1)
			var Coupondiscountkorprice = $(opener.document).find("#coupondiscount").text().replace(/,/gi,"");
			Coupondiscountkorprice = Coupondiscountkorprice * todaymoney;
			$(opener.document).find("#coupondiscountpricespan3").text("(");
			$(opener.document).find("#coupondiscountpricespan4").text(Coupondiscountkorprice);
			$(opener.document).find("#coupondiscountpricespan5").text("원)");
			$(opener.document).find(".pricecomma0").number(true,0)
			Coupondiscountkorprice = $(opener.document).find("#coupondiscountpricespan4").text().replace(/,/gi,"");
			var Userdiscountkorprice = Number($(opener.document).find("#Userdiscountspan3").text().replace(/,/gi,""));
			var finalkorprice = Number($(opener.document).find("#Allbuykorprice").text().replace(/,/gi,""));
			var Point = Number($(opener.document).find("#PointUseSpan").text().replace(/,/gi,""));
			Userdiscountkorprice = Number(Userdiscountkorprice);
			finalkorprice = Number(finalkorprice);
			Point = Number(Point);
			Coupondiscountkorprice = Number(Coupondiscountkorprice);
			finalkorprice = (finalkorprice - Userdiscountkorprice - Coupondiscountkorprice - Point);
			$(opener.document).find("#finalkorprice").text(finalkorprice);
			var finalprice = $(opener.document).find("#finalkorprice").text().replace(/,/gi,"");
			finalprice = finalprice / todaymoney;
			$(opener.document).find("#finalprice").text(finalprice);
			
			$(opener.document).find(".pricecomma0").number(true,0)
		$(opener.document).find("#coupondiscountpricespan4").number(true,0);
			$(opener.document).find(".pricecomma1").number(true,1)
			
			
		$(opener.document).find("#coupondiscount").number(true,1);
		}
		$(opener.document).find("#UseCouponspan").text(Couponname);
		$(opener.document).find("#UseCouponspan2").text(Couponnumber);
		
		window.close();
		
	});
	
	$("#NotCouponbutton").click(function() {
		var todaymoney = $(opener.document).find("#todaymoneyspan1").text().replace(/,/gi,"");
		var finalkorprice = Number($(opener.document).find("#Allbuykorprice").text().replace(/,/gi,""));
		var Userdiscountkorprice = Number($(opener.document).find("#Userdiscountspan3").text().replace(/,/gi,""));
		var Point = Number($(opener.document).find("#PointUseSpan").text().replace(/,/gi,""));
		finalkorprice = finalkorprice - Userdiscountkorprice - Point ;
		var finalprice = finalkorprice / todaymoney;
		$(opener.document).find("#finalkorprice").text(finalkorprice);
		$(opener.document).find("#finalprice").text(finalprice);
		$(opener.document).find(".pricecomma0").number(true,0)
		$(opener.document).find(".pricecomma1").number(true,1)
		
		$(opener.document).find("#coupondiscount").text("");
		$(opener.document).find("#coupondiscountpricespan1").text("");
		$(opener.document).find("#coupondiscountpricespan2").text("");
		$(opener.document).find("#coupondiscountpricespan3").text("");
		$(opener.document).find("#coupondiscountpricespan4").text("");
		$(opener.document).find("#coupondiscountpricespan5").text("");
		$(opener.document).find("#UseCouponspan").text("선택안함");
		$(opener.document).find("#UseCouponspan2").text("");
		
		
		window.close();
})
});

</script>
</head>
<body style=" width: 700px; height: 500px; ">
<div id="miniCoupontitle"> 쿠폰선택 </div>
				<table id="MyCouponTable">
					<tr>
						<td class="Couponnametd"><div>쿠폰명</div><div class="Couponnumber">[쿠폰번호]</div></td>
						<td class="Coupondiscounttd">할인액(률)</td>
						<td class="Couponexptd">유효기간</td>
						<td class="Couponstatetd">사용여부</td>
						<td class="Couponstatetd">선택</td>
					</tr>
					<c:if test="${Coupon == null }">
					<tr><td class="NotCoupon" colspan="5">쿠폰 정보가 없습니다.</td></tr>
					</c:if>
					<c:if test="${Coupon != null }">
					<c:forEach var="my" items="${MyCoupons}">
					<c:if test="${my.uc_discount > 0 }">
					<tr>
						<td class="Couponnametd2"><div class="Couponname">${my.uc_name}</div><div class="Couponnumber">[${my.uc_number}]</div></td>
						<td class="Coupondiscounttd2">${my.uc_discount} 원</td>
						<td class="Couponexptd2"><fmt:formatDate value="${my.uc_exp}" pattern="yyyy-MM-dd"/> 까지</td>
						<c:if test="${my.uc_used =='o'}">
						<td class="Couponstatetd2">사용불가</td>
						<td class="Couponstatetd2"><button class="couponselectbutton2">선택불가</button></td>
						</c:if>
						<c:if test="${my.uc_used =='x'}">
						<td class="Couponstatetd2">사용가능</td>
						<td class="Couponstatetd2"><button class="couponselectbutton" id="Couponselect${idx.count}">선택</button></td>
						</c:if>
					</tr>
					</c:if>
					<c:if test="${my.uc_discountrate > 0 }">
					<tr>
						<td class="Couponnametd2"><div class="Couponname">${my.uc_name}</div><div class="Couponnumber">[${my.uc_number}]</div></td>
						<td class="Coupondiscounttd2">${my.uc_discountrate} %</td>
						<td class="Couponexptd2"><fmt:formatDate value="${my.uc_exp}" pattern="yyyy-MM-dd"/>  까지</td>
						<c:if test="${my.uc_used =='o'}">
						<td class="Couponstatetd2">사용불가</td>
						<td class="Couponstatetd2"><button class="couponselectbutton2">선택불가</button></td>
						</c:if>
						<c:if test="${my.uc_used =='x'}">
						<td class="Couponstatetd2">사용가능</td>
						<td class="Couponstatetd2"><button class="couponselectbutton" id="Couponselect${idx.count}">선택</button></td>
						</c:if>
					</tr>
					</c:if>
					</c:forEach>
					</c:if>
					<tr><td align="center" colspan="5"><button id="NotCouponbutton">적용 안함</button></td></tr>
					
				</table>
	</body>
</html>