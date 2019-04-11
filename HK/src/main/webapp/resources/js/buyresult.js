$(function() {

	var allprice = 0;
	var price = 0;
	var discount = 0;
	var alldiscount = 0;
	todaymoney = $("#todaymoneyspan1").text().replace(/,/gi,"");
	for (var i = 0; i < 20; i++) {
		price = $("#buylistbeforeprice"+i).text().replace(/,/gi,"")
		price = Number(price);
		discount = $("#buylistdiscountmoney"+i).text().replace(/,/gi,"")
		discount = Number(discount)
		allprice = allprice + price
		alldiscount = alldiscount + discount
		
	}
	var korallprice = allprice * todaymoney;
	var koralldiscount = alldiscount * todaymoney;
	
	$("#onetableprice").text(allprice);
	$("#onetablekorprice").text(korallprice);
	$("#userdiscountprice").text(alldiscount);
	$("#userdiscountkorprice").text(koralldiscount);
	var memberdiscountkorprice = $("#memberdiscountkorprice").text().replace(/,/gi,"");
	memberdiscountkorprice = Number(memberdiscountkorprice)
	var memberdiscountprice = memberdiscountkorprice / todaymoney;
	$("#memberdiscountprice").text(memberdiscountprice);
	var coupondiscountkorprice = $("#coupondiscountkorprice").text().replace(/,/gi,"");
	coupondiscountkorprice = Number(coupondiscountkorprice)
	coupondiscountprice = coupondiscountkorprice / todaymoney;
	$("#coupondiscountprice").text(coupondiscountprice);
	var pointdiscountprice = $("#pointdiscountprice").text().replace(/,/gi,"");
	pointdiscountprice = Number(pointdiscountprice)
	var alldiscountkorprice = koralldiscount+memberdiscountkorprice+coupondiscountkorprice+pointdiscountprice
	$("#alldiscountprice").text(alldiscountkorprice / todaymoney)
	$("#alldiscountkorprice").text(alldiscountkorprice)
	var LastBuykorprice = $("#LastBuykorPrice").text().replace(/,/gi,"");
	LastBuykorprice = Number(LastBuykorprice);
	$("#LastBuyPrice").text(LastBuykorprice / todaymoney)
	var pointinputspan = LastBuykorprice / 10;
	$("#pointinputspan").text(pointinputspan)
	$(".pricecomma0").number(true,0)
	$(".pricecomma1").number(true,1)
	
	
});
