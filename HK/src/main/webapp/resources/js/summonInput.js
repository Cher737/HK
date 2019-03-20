// 결제?
// 휴대폰 인증?
// 주소검색
function connectSummonAddrInputEvent(){
	$("#joinAddrSearchBtn").click(function(){
		new daum.Postcode({
	        oncomplete: function(data) {
	        	$("#u_addr3").val(data.zonecode);
	        	$("#u_addr1").val(data.address);
	        }
	    }).open();
	});
	
	$("#updateAddrSearchBtn").click(function(){
		new daum.Postcode({
	        oncomplete: function(data) {
	        	$("#u_addr3").val(data.zonecode);
	        	$("#u_addr1").val(data.address);
	        }
	    }).open();
	});
}












