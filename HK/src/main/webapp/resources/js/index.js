$(function() {
	
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
	});