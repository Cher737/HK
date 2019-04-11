$(function() {

	$("#BuyButton").click(function() {
		var pay = $('[name=pay]:checked').val();
		var name =$("#buylistproducttr1").find(".buylistnamediv").text();
		var buylistcount = $("#productlist").text().replace("(총 ","").replace("종)","");
		buylistcount = buylistcount -1
		name = name + " 외 " + buylistcount + "종";
		var buylistnumber;
		var buylistcount;
		var buyname;
		var productnumber = null;
		var productcount = null;
		var productprice = null;
		var usepoint = $("#PointUseSpan").text().replace(/,/gi,"");
		var inputpoint = $("#Pointinput").val().replace(/,/gi,"");
		var userdiscount = $("#Userdiscountspan3").text().replace(/,/gi,"");
		var coupondiscount = $("#coupondiscountpricespan4").text().replace(/,/gi,"");
		if(usepoint != inputpoint){
			usepoint = 0;
			inputpoint = 0;
		}
		var usecoupon = $("#UseCouponspan2").text().replace("[","").replace("]","");
		for (var i = 1; i < 20; i++) {
			buylistnumber = $("#buylistnumberdiv"+i).text().replace("[#","").replace("]","");
			buylistcount = $("#buylistcounttd"+i).text();
			buylistprice = $("#buylistkorspan"+i).text().replace(/,/gi,"");
			if(productnumber == null) {
				productnumber = buylistnumber
				productcount = buylistcount
				productprice = buylistprice
			} else if(buylistnumber == "" || buylistnumber == " "){
				
			} else{
				productnumber= productnumber + "," + buylistnumber
				productcount = productcount + "," + buylistcount
				productprice = productprice + "," + buylistprice
			}
		}
		
		
		IMP.init('iamport');
		IMP.request_pay({
			pay_method : pay,
			merchant_uid : 'merchant_' + new Date().getTime(),
			name : name,
			amount : $("#finalkorprice").text().replace(/,/gi,""),
			buyer_email : $("#emailtd").text(),
			buyer_name : $("#username").text(),
		}, function(rsp) {
			if (rsp.success) {
				var msg = '결제가 완료되었습니다.';
				$.ajax({
					type:"POST",
					url : "Buyresult",
					data:{"productnumber" : productnumber,
						"productcount" : productcount,
						"productprice" : productprice,
						"point" : usepoint,
						"usecoupon" : usecoupon,
						"userdiscount" : userdiscount,
						"coupondiscount" : coupondiscount,
						"pay" : pay,
						"payment" : $("#finalkorprice").text().replace(/,/gi,""),
						"buycode" : new Date().getTime()
					},
					success : function(data){
						msg += '고유ID : ' + rsp.imp_uid;
						msg += '상점 거래ID : ' + rsp.merchant_uid;
						msg += '결제 금액 : ' + rsp.paid_amount;
						msg += '카드 승인번호 : ' + rsp.apply_num;
						alert(msg);
						location.href = "Buyresult.do";
					}
				});
				
				
			} else {
				var msg = '결제에 실패하였습니다.';
				msg += '에러내용 : ' + rsp.error_msg;
				alert(msg);
			}
		
	});
	});
	$(".bucketdeletebtn").click(function() {

		if (confirm("정말 삭제하시겠습니까?")) {
			var productnumber = $(this).attr("id");

			$.ajax({
				type : "get",
				url : "deletebucket",
				data : {"bk_pnumber" : productnumber},
				success : function(data) {
					window.location.reload();
				}	
			})

			
		}

	});
	var Allprice = 0;
	var price = 0;
	var price2 = 0;
	var rate = 0;
	var todaymoney;
	for (var i = 1; i < 20; i++) {
		todaymoney = $("#todaymoneyspan1").text().replace(/,/gi,""); 
		$("#bkdpdo"+i).empty();
		$("#bkdpdt"+i).empty();
		price = $("#bkpso"+i).text() * 1;
		rate = $("#bkdrs"+i).text() *1;
		rate = (100 - rate)/100;
		price2 = price * rate;
		$("#bkdpdo"+i).text(price2);
		$("#bkdpdt"+i).text(price2 * todaymoney);
		Allprice = Allprice+price2;
		Allprice2 = Allprice * todaymoney;
	}
	$("#allpricespan").text(Allprice);
	$("#allpricespan2").text(Allprice2);
	$(".estimatedpurchasepoint").text(Allprice2 *0.1 +"원");
	
	$(".bkdpdo").number(true,1);
	$(".bkdpdt").number(true,0);
	$("#allpricespan").number(true,1);
	$("#allpricespan2").number(true,0);
	$(".estimatedpurchasepoint").number(true,0);
	var Allbuyprice = 0;
	var beforeprice;
	var buylistcounttd;
	var countprice;
	var discountrate;
	var discountprice;
	var buyprice;
	var todaymoney;
	var coupondiscount;
	var userdiscount;
	var pointdiscount;
	var buylistbol = true;
	for (var i = 1; i < 20; i++) {
		beforeprice = $("#buylistbeforeprice"+i).text().replace(/,/gi,"")
		buylistcounttd = $("#buylistcounttd"+i).text()
		countprice = beforeprice * buylistcounttd
		$("#buylistbeforeprice"+i).text(countprice)
		discountrate = $("#buylistdiscountratespan"+i).text()
		discountrate = discountrate /100
		discountprice = countprice * discountrate;
		$("#buylistdiscountmoney"+i).text(discountprice)
		buyprice = countprice - discountprice;
		$("#buylistafterprice"+i).text(buyprice);
		Allbuyprice = Allbuyprice + buyprice;
		todaymoney = $("#todaymoneyspan1").text().replace(/,/gi,"");
		korprice = todaymoney * buyprice;
		$("#buylistkorspan"+i).text(korprice);
		if(korprice == "" && buylistbol == true){
			var buylistcount = i-1;
			$("#productlist").text("(총 "+buylistcount+"종)")
			buylistbol = false
		}
		if(i > 18){
			
			var Userdiscountrate = 0.15; 
			var Userdiscount = Allbuyprice * Userdiscountrate;
			$("#Userdiscountspan1").text(Userdiscount);
			Userdiscountrate = 0.15 * 100;
			Userdiscountrate = $("#Userdiscountspan2").text("("+Userdiscountrate+"%)");
			$("#Allbuyprice").text(Allbuyprice);
			$(".pricecomma1").number(true,1)
			Allbuyprice = $("#Allbuyprice").text().replace(/,/gi,"");
			
			var Userdiscountspan1 = $("#Userdiscountspan1").text().replace(/,/gi,"");
			var Userdiscountspan3 = Userdiscountspan1 *todaymoney;
			$("#Userdiscountspan3").text(Userdiscountspan3);
			$(".pricecomma0").number(true,0)
			Userdiscountspan3 = $("#Userdiscountspan3").text().replace(/,/gi,"")
			$("#Allbuykorprice").text(todaymoney * Allbuyprice)
			$(".pricecomma0").number(true,0)
			var Allbuykorprice = $("#Allbuykorprice").text().replace(/,/gi,"");
			$("#usepossiblePoint").text((todaymoney * Allbuyprice) *0.3)
			$("#finalprice").text(Allbuyprice - Userdiscountspan1)
			$("#finalkorprice").text(Allbuykorprice - Userdiscountspan3);
			
		}		
	}
	
	
	$(".pricecomma0").number(true,0)
	$(".pricecomma1").number(true,1)
	
	$("#couponselectgo").click(function(){
		 x = (screen.availWidth - 700) / 2;
		 y = (screen.availHeight - 700) / 2;
		window.open('Coupon.select.go','pop','width=700,height=700,left='+x+',top='+y);
		
	});
	
	
	$(".bucketpurchasebtn").click(function() {
		
		var check = false;
		var number = null
		var productcount = null
		for (var i = 1; i < 20; i++) {
			check = $("#ckb"+i).is(":checked");
			if(check == true){
				if(number == null){
					number = $("#ckb"+i).closest("table").find("button").attr("id")
					productcount = $("#ckb"+i).closest("table").find(".bucketproductnumber").val()
				} else {
					number = number + "," + $("#ckb"+i).closest("table").find("button").attr("id")
					productcount = productcount + "," + $("#ckb"+i).closest("table").find(".bucketproductnumber").val()
				}
			}
		}
		
		
		var form = $("<form></form>");
		 var p_numbertag = $("<input/>").attr("type","hidden")
		 .attr("name","p_number").attr("value",number).appendTo(form);
		
		var productcounttag = $("<input/>").attr("type","hidden").attr("name","p_count")
		.attr("value",productcount).appendTo(form);
		
		form.attr("method","post").attr("action","gobuylist.go").appendTo('body').submit();
		
	});
	
	$("#PointUsebutton").click(function(){
		var Allbuykorprice = $("#Allbuykorprice").text().replace(/,/gi,"");
		var inputPoint = $("#Pointinput").val();
		var MyPoint = $("#MyPointSpan").text().replace(/,/gi,"");
		var UsePoint = $("#PointUseSpan").text().replace(/,/gi,"");
		if(UsePoint > 0 ){
		} else{
			var finalkorprice =$("#finalkorprice").text().replace(/,/gi,"")
			
			if(inputPoint - MyPoint <= 0){
				
				if((Allbuykorprice * 0.3) < inputPoint ){
					alert("오버")
					
				} else{
					$("#Pointinput").attr("readonly",true).css("background-color","#BDBDBD");
					$("#PointUseSpan").text(inputPoint);
					todaymoney = $("#todaymoneyspan1").text().replace(/,/gi,"");
					finalkorprice =$("#finalkorprice").text().replace(/,/gi,"");
					var finalprice = (finalkorprice - inputPoint) / todaymoney;
					$("#finalkorprice").text(finalkorprice - inputPoint);
					$("#finalprice").text(finalprice);
					$(".pricecomma0").number(true,0)
					$(".pricecomma1").number(true,1)
					
				}
				
			} else if( inputPoint = 0){
				
			}else{
				
				alert("잔여 포인트보다 큰 수입니다.")
				$("#Pointinput").val("");
				
		
		} 
		}
		
	});
	$("#PointNotUsebutton").click(function(){
		var MyPoint = $("#Pointinput").val();
		$("#Pointinput").val("");
		$("#Pointinput").attr("readonly",false).css("background-color","white");
		var usepoint = $("#PointUseSpan").text().replace(/,/gi,"");
		var finalkorprice = $("#finalkorprice").text().replace(/,/gi,"");
		finalkorprice = Number(finalkorprice);
		usepoint = Number(usepoint);
		var afterkorprice = finalkorprice + usepoint;
		var finalprice = afterkorprice / todaymoney;
		$("#finalkorprice").text(afterkorprice);
		$("#finalprice").text(finalprice);
		$("#PointUseSpan").text("0");
		$(".pricecomma0").number(true,0)
		$(".pricecomma1").number(true,1)
	});
	
	$("#AllPointCheck").change(function(){
		
		var MyPoint = $("#MyPointSpan").text().replace(/,/gi,"");
		var usepossiblePoint = $("#usepossiblePoint").text().replace(/,/gi,"");
		var check1 = $("#AllPointCheck").is(":checked");
		if (check1 == false){
			$("#Pointinput").val("");
			$("#Pointinput").attr("readonly",false).css("background-color","white");
			var usepoint = $("#PointUseSpan").text().replace(/,/gi,"");
			var finalkorprice = $("#finalkorprice").text().replace(/,/gi,"");
			finalkorprice = Number(finalkorprice);
			usepoint = Number(usepoint);
			var afterkorprice = finalkorprice + usepoint;
			var finalprice = afterkorprice / todaymoney;
			$("#finalkorprice").text(afterkorprice);
			$("#finalprice").text(finalprice);
			$("#PointUseSpan").text("0");
			$(".pricecomma0").number(true,0)
			$(".pricecomma1").number(true,1)
		} else{
			usepossiblePoint = Number(usepossiblePoint);
			MyPoint = Number(MyPoint);
			if(usepossiblePoint >= MyPoint){
				$("#Pointinput").val(MyPoint);
				var inputPoint = $("#Pointinput").val().replace(/,/gi,"");
				$("#Pointinput").attr("readonly",true).css("background-color","#BDBDBD");
				$("#PointUseSpan").text(inputPoint);
				todaymoney = $("#todaymoneyspan1").text().replace(/,/gi,"");
				var finalkorprice =$("#finalkorprice").text().replace(/,/gi,"");
				var finalprice = (finalkorprice - inputPoint) / todaymoney;
				$("#finalkorprice").text(finalkorprice - inputPoint);
				$("#finalprice").text(finalprice);
				$(".pricecomma0").number(true,0)
				$(".pricecomma1").number(true,1)
			} else{
			$("#Pointinput").val(usepossiblePoint);
			var inputPoint = $("#Pointinput").val().replace(/,/gi,"");
			$("#Pointinput").attr("readonly",true).css("background-color","#BDBDBD");
			$("#PointUseSpan").text(inputPoint);
			todaymoney = $("#todaymoneyspan1").text().replace(/,/gi,"");
			var finalkorprice =$("#finalkorprice").text().replace(/,/gi,"");
			var finalprice = (finalkorprice - inputPoint) / todaymoney;
			$("#finalkorprice").text(finalkorprice - inputPoint);
			$("#finalprice").text(finalprice);
			$(".pricecomma0").number(true,0)
			$(".pricecomma1").number(true,1)
		}
			}
	});
	
	
	
	
});
