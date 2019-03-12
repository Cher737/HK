function page(p,url){
	var categoryone = $("select[name=categoryone]").val();
	var categorytwo = $("select[name=categorytwo]").val();
	
	 
	 
	   
	
	if(categorytwo ==""){
		$(".categorytitle").text(categoryone);
	} else{
		$(".categorytitle").text(categorytwo);
	}
	$(".producttable1").empty();
	$(".producttable2").empty();
	$(".producttable3").empty();
	$.getJSON(url, function(data){
		var products = data.products;
		var allCount = data.allCount;
		if(allCount != 0){
		var td = [];
		$.each(products, function(i,p){
			var p_name = p.p_name;
			var p_price =p.p_price;
			var p_img =	p.p_img;
			var p_brand = p.p_brand;
				
			var tagp = $("<p>");
				var div1 = $("<div></div>").text(p_brand).append(tagp).text(p_name);
				var div2 = $("<div></div>").text(p_price);
				var img = $("<img>").attr("class","topimg").attr("src",p_img);
				td[i] = $("<td></td>").attr("class","producttd").append(img,div1,div2);
			});
		
		
		
			var tr = $("<tr></tr>").attr("id","producttr1").append(td[0],td[1],td[2],td[3],td[4]);
			$(".producttable1").append(tr);
			var tr = $("<tr></tr>").attr("id","producttr2").append(td[5],td[6],td[7],td[8],td[9]);
			$(".producttable2").append(tr);
			var tr = $("<tr></tr>").attr("id","producttr3").append(td[10],td[11],td[12],td[13],td[14]);
			$(".producttable3").append(tr);
			
			if(allCount > 15){
				var page = allCount / 15;
			} else{
				var page = 1
			}
			$("#pagetd").empty();	
			for (var i = 1; i <= page; i++) {
				var pagename= "page="+i
				if(p.substring(p.length-1) == i){
					var pagediv = $("<div></div>").text(i).attr("class","pagecount").attr("id",pagename).css("color","red");
				} else{
					var pagediv = $("<div></div>").text(i).attr("class","pagecount").attr("id",pagename);
					
				}
				$("#pagetd").append(pagediv);
			}
		} else{
			var pagediv = $("<div></div>").text(1).attr("class","pagecount").attr("id","page=1").css("color","red");
			$("#pagetd").empty();
			$("#pagetd").append(pagediv);
		}
			
		});
}

function checkbox(p,name){
	var check1 = $("#cb1").is(":checked");
	var check2 = $("#cb2").is(":checked");
	var check3 = $("#cb3").is(":checked");
	var check4 = $("#cb4").is(":checked");
	var check5 = $("#cb5").is(":checked");
	var check6 = $("#cb6").is(":checked");
	var check7 = $("#cb7").is(":checked");
	var check8 = $("#cb8").is(":checked");
	var check9 = $("#cb9").is(":checked");
	var categoryone = $("select[name=categoryone]").val();
	var categorytwo = $("select[name=categorytwo]").val();
	name = $("#searchproductInput").val();
	if(name == "") {
		name = null;
	}
	var pricemin = 0;
	var pricemax= 0;
	var search = 0;
	var gender = null;
	var discount = null;
	
	
	if(check1 == true){
		pricemin = 0;
		pricemax= 10;
		search = 1;
	} else if(check2 == true){
		pricemin = 10;
		pricemax= 50;
		search = 1;
	} else if(check3 == true){
		pricemin = 50;
		pricemax= 100;
		search = 1;
	} else if(check4 == true){
		var pricemin = 100;
		var pricemax= 300;
		search = 1;
	} else if(check5 == true){
		pricemin = 301;
		pricemax= 50000;
		search = 1;
	} 
	if(check6 == true){
		gender = "남성";
			search = 1;
	} else if(check7 == true){
		gender = "여성";
			search = 1;
	} else if(check8 == true){
		gender = "공용";
			search = 1;
	}
	
	if(check9 == true){
		discount = "y";
		search = 1;
	}
	
	var url = "product.json?"+p+"&search="+search+ "&name="+name+"&gender="+gender+
	"&pricemin="+pricemin+"&pricemax="+pricemax+"&discount="+discount+
	"&categoryone="+categoryone +"&categorytwo="+categorytwo ;
	
	Category();
	page(p,url);
	
}

function Catego(){
	var urlParams = new URLSearchParams(window.location.search);
		var categoriones = urlParams.get('categoryone');
		
		$(".categoryone").val(categoriones).prop("selected", true);
		Category()
}
function Catego2(){
	

}


function Category(){
	
	
	$("#selectcate2").empty();
	var select = $("select[name=categoryone]").val();
	var selectcate = $('#selectcate2').attr("class","categorytwo").attr("name","categorytwo")
	if(select == "화장품/향수"){
		selectcate.append('<option value="스킨케어">스킨케어</option>');
		selectcate.append('<option value="메이크업">메이크업</option>');
		selectcate.append('<option value="썬케어/클렌징">썬케어/클렌징</option>');
		selectcate.append('<option value="헤어">헤어</option>');
		selectcate.append('<option value="바디">바디</option>');
		selectcate.append('<option value="향수">향수</option>');
	} else if(select =="패션/잡화"){
		selectcate.append('<option value="가방">가방</option>');
		selectcate.append('<option value="지갑">지갑</option>');
		selectcate.append('<option value="벨트">벨트</option>');
		selectcate.append('<option value="선글라스">선글라스</option>');
		selectcate.append('<option value="의류">의류</option>');
		selectcate.append('<option value="슈즈">슈즈</option>');
		selectcate.append('<option value="패션소품">패션소품</option>');
		selectcate.append('<option value="LIFESTYLE">LIFESTYLE</option>');
	} else if(select =="시계/주얼리"){
		selectcate.append('<option value="클래식시계">클래식시계</option>');
		selectcate.append('<option value="패션/스포츠시계">패션/스포츠시계</option>');
		selectcate.append('<option value="주얼리">주얼리</option>');
		selectcate.append('<option value="장식소품">장식소품</option>');
	} else if(select =="전자제품"){
		selectcate.append('<option value="카메라/캠코더">카메라/캠코더</option>');
		selectcate.append('<option value="휴대기기">휴대기기</option>');
		selectcate.append('<option value="음향기기">음향기기</option>');
		selectcate.append('<option value="가전제품">가전제품</option>');
		selectcate.append('<option value="주변기기">주변기기</option>');
	} else if(select =="식품"){
		selectcate.append('<option value="건강식품">건강식품</option>');
		selectcate.append('<option value="선호식품">선호식품</option>');
	}
	
	var urlParams = new URLSearchParams(window.location.search);
	var categoritwos = urlParams.get('categorytwo');
	$(".categorytwo").val(categoritwos).prop("selected", true);
}


$(function() {
	var p = "page=1"
		Catego();
		checkbox(p);
	
	$(".cb1").click(function() {
		var clickcb = $(this).attr("id");
		if($(this).is(":checked") == false){
			checkbox(p)
		} else {
		$(".cb1").prop("checked",false);
		$("#"+clickcb).prop("checked",true);
		checkbox(p)
		}
		
	});
	$(".cb2").click(function() {
		var clickcb = $(this).attr("id");
		if($(this).is(":checked") == false){
			checkbox(p)
		} else {
			$(".cb2").prop("checked",false);
			$("#"+clickcb).prop("checked",true);
			checkbox(p)
		}
		
	});
	$(".cb3").click(function() {
		var clickcb = $(this).attr("id");
		
		checkbox(p)
		
	});
	$(document).on("click",".pagecount",function(){
		
		p = $(this).attr('id');

		checkbox(p);
		
	});
	
	$("#SearchButton").click(function() {
		});
	
		
	$(".categorysearchbtn").click(function(){
		var name = $("#searchproductInput").val();
		checkbox(p,name)
	});
	
	$(".categoryone").change(function(){
		Category();
	});
	$(".categorytwo").change(function(){
		var categoryone = $("select[name=categoryone]").val();
		var categorytwo = $("select[name=categorytwo]").val();
		location.href = "product?categoryone="+categoryone+"&categorytwo="+categorytwo;
	});
	
	

});

