
$(function() {
	
	$(".menu").click(function(){
		var name = $(this).text();
		location.href = "home?categoryone="+name;
	})
	
	$(document).on("mouseenter",".inproducttable",function() {
		$(this).css("border","#666666 solid 1px");
		$(this).find(".carttd").css("opacity","1").css("border-top","#666666 solid 1px").css("border-right","#666666 solid 1px");
		$(this).find(".buytd").css("opacity","1").css("border-top","#666666 solid 1px");
	});
	$(document).on("mouseleave",".inproducttable",function() {
		$(this).css("border","white solid 1px");
		$(this).find(".carttd").css("opacity","0").css("border-top","white solid 1px").css("border-right","white solid 1px");
		$(this).find(".buytd").css("opacity","0").css("border-top","white solid 1px");
	});
	
	var discountrate = 0;
	var discount = 0 ;
	var discountkor = 0;
	var price = 0;
	var todaymoney = todaymoney = $("#todaymoneyspan1").text().replace(/,/gi,"");
	var todaymoneyspan2 = $("#todaymoneyspan2").text().replace(/,/gi,"");
	for (var i = 1; i < 21; i++) {
		price = $("#pricespan"+i).text().replace("$","").replace(/,/gi,""); 
		discountrate = $("#discount"+i).text().replace("off","").replace("%","");
		discount = (100 - discountrate) / 100;
		discountprice = price * discount
		
		discountkor = discountprice * todaymoney;
		discountprice = $.number(discountprice,1)
		$("#discountpricespan"+i).text("$" + discountprice);
		discountkor = $.number(discountkor,0)
		$("#price2span"+i).text(discountkor +todaymoneyspan2);
		$(".pricespand").number(true,1)
	}
	
	$(document).on("click",".carttd",function(){
		var productnumber = $((this)).attr("id");
		
		$.ajax({
			type:"get",
			url : "inputbucket",
			data:{"p_number" : productnumber},
			success : function(data){
				alert("장바구니에 상품을 넣었습니다.")
			}
	});
	
	});
	
});