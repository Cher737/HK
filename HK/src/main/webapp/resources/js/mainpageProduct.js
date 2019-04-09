function page(p,url){
	$.each(products, function(i,ff){
		var p_name = ff.p_name;
		var p_price =ff.p_price;
		var p_img =	ff.p_img;
		var p_brand = ff.p_brand;
		var p_discountprice = p_price;
		var todaymoney = $("#todaymoneyspan1").text().replace(",","");
		
		
		if(ff.d_discount == "y"){
		var p_discountrate = ff.d_discountrate;
		var discount = (100 - p_discountrate) / 100;
		p_discountprice = p_price * discount;
		p_discountrate = p_discountrate + "% off";
		p_price = $.number(p_price);
		p_price = "$ " + p_price;
		var p_price2 = p_discountprice * todaymoney;
		} else{
			var p_price2 = p_price * todaymoney;
			p_price = "";
		}
		p_price2 = $.number(p_price2);
		p_price2 = "(" +p_price2 + " " + $("select[name=moneyselect]").val().replace("(￦)","")
		.replace("(￥)","").replace("(€)","").replace("(元)","") +")";
		p_discountprice = p_discountprice+"";
		if(p_discountprice.indexOf(".") != -1){
			p_discountprice = $.number(p_discountprice,1);
		} else{
			p_discountprice = $.number(p_discountprice);
		}
		p_discountprice = "$"+p_discountprice;
		
		});
}

$(function() {
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
	
});