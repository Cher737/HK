$(function() {
	
		var money = $.cookie("selectmoney");
		if (money != null){
		$("#moneyselect").val(money).prop("selected", true);
		$("#todaymoneyspan2").text("  "+ money);
		}
	
		$("#todaymoneyspan1").number(true,1);
	
		$("#Supportgo").click(function() {
			location.href = "Support.FAQ";
		});
		
		$(".cates2").click(function() {
			var addr = $(this).text();
			if(addr =="스킨케어" 
			||addr == "메이크업"
			||addr == "썬케어/클렌징"
			||addr == "헤어"
			||addr == "바디"
			||addr == "향수"
				) {
				
			location.href = "product?categoryone=화장품/향수&categorytwo="+addr;
			} else if (addr =="가방" 
					||addr == "지갑"
					||addr == "벨트"
					||addr == "선글라스"
					||addr == "의류"
					||addr == "슈즈"
					||addr == "패션소품"
					||addr == "LIFESTYLE"
						) {
						
					location.href = "product?categoryone=패션/잡화&categorytwo="+addr;
					}
			else if (addr =="클래식시계" 
				||addr == "패션/스포츠시계"
				||addr == "주얼리"
				||addr == "장식소품"
					) {
					
				location.href = "product?categoryone=시계/주얼리&categorytwo="+addr;
				}
			else if (addr =="카메라/캠코더" 
				||addr == "휴대기기"
				||addr == "음향기기"
				||addr == "가전제품"
				||addr == "주변기기"
					) {
					
				location.href = "product?categoryone=전자제품&categorytwo="+addr;
				}
			else if (addr =="건강식품" 
				||addr == "선호식품"
					) {
					
				location.href = "product?categoryone=식품&categorytwo="+addr;
				}

		});

		$("#CATE1").mouseenter(function() {
			$("#CATETABLE1").css("left","151px").css("top","206px");
			$("#CATE1").css("border-right","none").css("border-top","#E0E0E0 solid 1px")
			.css("border-bottom","#E0E0E0 solid 1px").css("color","#BF360C");
			$("#CATETABLE1").css("border-left","none");
		});
		$("#CATE1").mouseleave(function() {
			$("#CATETABLE1").css("left","-300px").css("top","206px");
			$("#CATE1").css("border-right","#E0E0E0 solid 1px").css("border-top","none")
			.css("border-bottom","none").css("color","black");
			$("#CATETABLE1").css("border-left","none");
		});
		$("#CATETABLE1").mouseenter(function() {
			$("#CATETABLE1").css("left","151px").css("top","206px");
			$("#CATE1").css("border-right","none").css("border-top","#E0E0E0 solid 1px")
			.css("border-bottom","#E0E0E0 solid 1px").css("color","#BF360C");
			$("#CATETABLE1").css("border-left","none");
		});
		$("#CATETABLE1").mouseleave(function() {
			$("#CATETABLE1").css("left","-300px").css("top","206px");
			$("#CATE1").css("border-right","#E0E0E0 solid 1px").css("border-top","none")
			.css("border-bottom","none").css("color","black");
			$("#CATETABLE1").css("border-left","none");
		});
		
		
		
		$("#CATE2").mouseenter(function() {
			$("#CATETABLE2").css("left","151px").css("top","206px");
			$("#CATE2").css("border-right","none").css("border-top","#E0E0E0 solid 1px")
			.css("border-bottom","#E0E0E0 solid 1px").css("color","#BF360C");
			$("#CATETABLE2").css("border-left","none");
		});
		$("#CATE2").mouseleave(function() {
			$("#CATETABLE2").css("left","-300px").css("top","206px");
			$("#CATE2").css("border-right","#E0E0E0 solid 1px").css("border-top","none")
			.css("border-bottom","none").css("color","black");
			$("#CATETABLE2").css("border-left","none");
		});
		$("#CATETABLE2").mouseenter(function() {
			$("#CATETABLE2").css("left","151px").css("top","206px");
			$("#CATE2").css("border-right","none").css("border-top","#E0E0E0 solid 1px")
			.css("border-bottom","#E0E0E0 solid 1px").css("color","#BF360C");
			$("#CATETABLE2").css("border-left","none");
		});
		$("#CATETABLE2").mouseleave(function() {
			$("#CATETABLE2").css("left","-300px").css("top","206px");
			$("#CATE2").css("border-right","#E0E0E0 solid 1px").css("border-top","none")
			.css("border-bottom","none").css("color","black");
			$("#CATETABLE2").css("border-left","none");
		});
		
		$("#CATE3").mouseenter(function() {
			$("#CATETABLE3").css("left","151px").css("top","206px");
			$("#CATE3").css("border-right","none").css("border-top","#E0E0E0 solid 1px")
			.css("border-bottom","#E0E0E0 solid 1px").css("color","#BF360C");
			$("#CATETABLE3").css("border-left","none");
		});
		$("#CATE3").mouseleave(function() {
			$("#CATETABLE3").css("left","-300px").css("top","206px");
			$("#CATE3").css("border-right","#E0E0E0 solid 1px").css("border-top","none")
			.css("border-bottom","none").css("color","black");
			$("#CATETABLE3").css("border-left","none");
		});
		$("#CATETABLE3").mouseenter(function() {
			$("#CATETABLE3").css("left","151px").css("top","206px");
			$("#CATE3").css("border-right","none").css("border-top","#E0E0E0 solid 1px")
			.css("border-bottom","#E0E0E0 solid 1px").css("color","#BF360C");
			$("#CATETABLE3").css("border-left","none");
		});
		$("#CATETABLE3").mouseleave(function() {
			$("#CATETABLE3").css("left","-300px").css("top","206px");
			$("#CATE3").css("border-right","#E0E0E0 solid 1px").css("border-top","none")
			.css("border-bottom","none").css("color","black");
			$("#CATETABLE3").css("border-left","none");
		});
		
		$("#CATE4").mouseenter(function() {
			$("#CATETABLE4").css("left","151px").css("top","206px");
			$("#CATE4").css("border-right","none").css("border-top","#E0E0E0 solid 1px")
			.css("border-bottom","#E0E0E0 solid 1px").css("color","#BF360C");
			$("#CATETABLE4").css("border-left","none");
		});
		$("#CATE4").mouseleave(function() {
			$("#CATETABLE4").css("left","-300px").css("top","206px");
			$("#CATE4").css("border-right","#E0E0E0 solid 1px").css("border-top","none")
			.css("border-bottom","none").css("color","black");
			$("#CATETABLE4").css("border-left","none");
		});
		$("#CATETABLE4").mouseenter(function() {
			$("#CATETABLE4").css("left","151px").css("top","206px");
			$("#CATE4").css("border-right","none").css("border-top","#E0E0E0 solid 1px")
			.css("border-bottom","#E0E0E0 solid 1px").css("color","#BF360C");
			$("#CATETABLE4").css("border-left","none");
		});
		$("#CATETABLE4").mouseleave(function() {
			$("#CATETABLE4").css("left","-300px").css("top","206px");
			$("#CATE4").css("border-right","#E0E0E0 solid 1px").css("border-top","none")
			.css("border-bottom","none").css("color","black");
			$("#CATETABLE4").css("border-left","none");
		});
		$("#CATE5").mouseenter(function() {
			$("#CATETABLE5").css("left","151px").css("top","206px");
			$("#CATE5").css("border-right","none").css("border-top","#E0E0E0 solid 1px")
			.css("border-bottom","#E0E0E0 solid 1px").css("color","#BF360C");
			$("#CATETABLE5").css("border-left","none");
		});
		$("#CATE5").mouseleave(function() {
			$("#CATETABLE5").css("left","-300px").css("top","206px");
			$("#CATE5").css("border-right","#E0E0E0 solid 1px").css("border-top","none")
			.css("border-bottom","none").css("color","black");
			$("#CATETABLE5").css("border-left","none");
		});
		$("#CATETABLE5").mouseenter(function() {
			$("#CATETABLE5").css("left","151px").css("top","206px");
			$("#CATE5").css("border-right","none").css("border-top","#E0E0E0 solid 1px")
			.css("border-bottom","#E0E0E0 solid 1px").css("color","#BF360C");
			$("#CATETABLE5").css("border-left","none");
		});
		$("#CATETABLE5").mouseleave(function() {
			$("#CATETABLE5").css("left","-300px").css("top","206px");
			$("#CATE5").css("border-right","#E0E0E0 solid 1px").css("border-top","none")
			.css("border-bottom","none").css("color","black");
			$("#CATETABLE5").css("border-left","none");
		});
		$("#moneyselect").change(function(){
			var select = $("select[name=moneyselect]").val();
			$.ajax({
				type:"post",
				url : "SelectMoney.go",
				data:{"moneyselect" : select},
				success : function(data){
					window.location.reload();
				}
				
			});
			
		});
		$("#titlesearch").click(function(){
			$("#top10table").empty();
			
			var searchtd = $("<td></td>").text("인기검색어").attr("id","searchtitletd");
			var searchtr = $("<tr></tr>").append(searchtd);
			$("#top10table").append(searchtr)
			
			$.getJSON("lank.top", function(data){
				var searchs = data.searchs;
				$.each(searchs, function(i,s){
					var s_search = s.s_frequency
					var s_word = s.s_word;
					if (i == 0){
						var span2= $("<div></div>").text(s_search + "회").css("color","red").attr("class","lankdiv2");
						var span1 = $("<div></div>").text(s_word).css("color","red").attr("class","lankdiv1");
						var span = $("<div></div>").text(i +1).css("color","red").attr("class","lankdiv");	
					} else if (i == 9){
						
					var span2= $("<div></div>").text(s_search + "회").attr("class","lankdiv2").css("padding-bottom","10px");
					var span1 = $("<div></div>").text(s_word).attr("class","lankdiv1").css("padding-bottom","10px");
					var span = $("<div></div>").text(i +1).attr("class","lankdiv").css("padding-bottom","10px");
					} else{
						var span2= $("<div></div>").text(s_search + "회").attr("class","lankdiv2");
						var span1 = $("<div></div>").text(s_word).attr("class","lankdiv1");
						var span = $("<div></div>").text(i +1).attr("class","lankdiv");
					}
					var td = $("<td></td>").append(span,span1,span2);
					var tr = $("<tr></tr>").append(td);
					$("#top10table").append(tr).css("border-top","none")
					.css("border-right","black solid 1px")
					.css("border-bottom","black solid 1px")
					.css("border-left","black solid 1px")
					
				});
			});
			
			
			$('#titlesearch').focusout(function() {
				$("#top10table").empty();
				$("#top10table").css("border-top","white solid 1px")
				.css("border-right","white solid 1px")
				.css("border-bottom","white solid 1px")
				.css("border-left","white solid 1px");
				});
			
		});
	});