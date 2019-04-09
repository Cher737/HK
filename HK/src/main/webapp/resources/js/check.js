function connectIdCheckEvent() {
	$("#u_id").keyup(function() {
		var id = $(this).val();

		$.ajax({
			url : "member.id.check",
			data : {
				u_id : id
			}, // {파라메터명:값, 파라메터명:값, ...}
			success : function(data) {
				if (id.length == 0) {
					$("#joinIdOk").text("ID 입력");
					$(".joininput2").css("width", "325");
					
				} else if ($(data).find("user").length == 1) {
					$("#joinIdOk").text("ID 중복");
					$(".joininput2").css("width", "325");
					
				} else {
					$("#joinIdOk").text("사용가능");
					$(".joininput2").css("width", "315");
					
				}
			}
		});

	});
}

function emailinput() {
	var emailval = $("select[name=emailcategory]").val();
	$("#u_mail2").val(emailval);

	$("#emailselect").change(function() {
		if ($(this).val() == '') { // 직접입력일경우
			$("#u_mail2").val(''); // 값 초기화
//			$("#u_mail2").attr("disabled",false); // 활성화
		}else{ // 직접입력이 아닌경우
			emailval = $("select[name=emailcategory]").val(); // 선택값 입력
			$("#u_mail2").val(emailval);
//			$("#u_mail2").attr("disabled",true); // 비활성화
		}
	});
}

// 환율값 가져오기
function rateinput() {
//	var select = $("select[name=moneyselect]").val();
	var select = $("select[name=moneyselect]").val();
	
	$.ajax({
		type:"post",
		url : "SelectRate.go",
		data:{"rateselect" : select},
		success : function(Rdata){
			
		}
	})
}

function joinCheck() {
	var u_id = document.joinForm.u_id;
	var u_pw = document.joinForm.u_pw;
	var u_pwchk = document.joinForm.u_pwchk;
	var u_name = document.joinForm.u_name;
	var u_jumin = document.joinForm.u_jumin;
	var u_mail1 = document.joinForm.u_mail1;
	var u_mail2 = document.joinForm.u_mail2;
	var u_phone = document.joinForm.u_phone;	
	var u_addr1 = document.joinForm.u_addr1;
	var u_addr2 = document.joinForm.u_addr2;
	var u_addr3 = document.joinForm.u_addr3;
	var pp_engname = document.joinForm.pp_engname;
	var pp_ppnumber = document.joinForm.pp_ppnumber;
	var pp_exp2 = document.joinForm.pp_exp2;

	if (isEmpty(u_id) || containsHS(u_id) || $("#joinIdOk").text() == "ID중복") {
		alert("아이디를 확인하세요!");
		u_id.value = "";
		u_id.focus();
		return false;
	} else if (isEmpty(u_pw) || notEquals(u_pw, u_pwchk)
			|| notContains(u_pw, "1234567890")
			|| notContains(u_pw, "qwertyuiopasdfghjklzxcvbnm")) {
		alert("비밀번호를 확인하세요!");
		u_pw.value = "";
		u_pwchk.value = "";
		u_pw.focus();
		return false;
	} else if (isEmpty(u_name)) {
		alert("이름을 확인하세요!");
		u_name.value = "";
		u_name.focus();
		return false;
	} else if (isEmpty(u_jumin) || isNotNumber(u_jumin)) {
		alert("주민등록번호를 확인하세요!");
		u_jumin.value = "";
		u_jumin.focus();
		return false;
	} else if (isEmpty(u_mail1) || isEmpty(u_mail2)) {
		alert("이메일를 확인하세요!");
		u_mail1.value = "";
		u_mail2.value = "";
		u_mail1.focus();
		return false;
	} else if (isEmpty(u_phone) || isNotNumber(u_phone)) {
		alert("휴대전화 번호를 확인하세요!");
		u_phone.value = "";
		u_phone.focus();
		return false;
	} else if (isEmpty(u_addr1) || isEmpty(u_addr2) || isEmpty(u_addr3)) {
		alert("주소를 확인하세요!");
		u_addr1.value = "";
		u_addr2.value = "";
		u_addr3.value = "";
		u_addr1.focus();
		return false;
	} else if (isEmpty(pp_engname)
			|| notContains(pp_engname, "QWERTYUIOPASDFGHJKLZXCVBNM")) {
		alert("여권이름을 확인하세요!");
		pp_engname.value = "";
		pp_engname.focus();
		return false;
	} else if (isEmpty(pp_ppnumber)
			|| notContains(pp_ppnumber, "MF0123456789")) {
		alert("여권번호를 확인하세요!");
		pp_ppnumber.value = "";
		pp_ppnumber.focus();
		return false;
	} else if (isEmpty(pp_exp2) || isNotNumber(pp_exp2)) {
		alert("여권만료일을 확인하세요!");
		pp_exp2.value = "";
		pp_exp2.focus();
		return false;
	} 
	return true;
}

function updateMemberCheck() {
	var u_pw = document.updateForm.u_pw;
	var u_pwChk = document.updateForm.u_pwChk;
	var u_name = document.updateForm.u_name;
	var u_jumin = document.updateForm.u_jumin;
	var u_mail1 = document.updateForm.u_mail1;
	var u_mail2 = document.updateForm.u_mail2;
	var u_phone = document.updateForm.u_phone;	
	var u_addr1 = document.updateForm.u_addr1;
	var u_addr2 = document.updateForm.jm_addr2;
	var u_addr3 = document.updateForm.jm_addr3;
	
	if (isEmpty(u_pw) || notEquals(u_pw, u_pwChk)
			|| notContains(u_pw, "1234567890")
			|| notContains(u_pw, "qwertyuiopasdfghjklzxcvbnm")) {
		alert("비밀번호를 확인하세요!");
		u_pw.value = "";
		u_pwChk.value = "";
		u_pw.focus();
		return false;
	} else if (isEmpty(u_name)) {
		alert("이름을 확인하세요!");
		u_name.value = "";
		u_name.focus();
		return false;
	} else if (isEmpty(u_jumin) || isNotNumber(u_jumin)) {
		alert("주민등록번호를 확인하세요!");
		u_jumin.value = "";
		u_jumin.focus();
		return false;
	} else if (isEmpty(u_mail1) || isEmpty(u_mail2)) {
		alert("이메일를 확인하세요!");
		u_mail1.value = "";
		u_mail2.value = "";
		u_mail1.focus();
		return false;
	} else if (isEmpty(u_phone) || isNotNumber(u_phone)) {
		alert("휴대전화 번호를 확인하세요!");
		u_phone.value = "";
		u_phone.focus();
		return false;
	} else if (isEmpty(u_addr1) || isEmpty(u_addr2) || isEmpty(u_addr3)) {
		alert("주소를 확인하세요!");
		u_addr1.value = "";
		u_addr2.value = "";
		u_addr3.value = "";
		u_addr1.focus();
		return false;
	} 
	return true;
}

function loginCheck() {
	var u_id = document.loginForm.u_id;
	var u_pw = document.loginForm.u_pw;

	if (isEmpty(u_id) || isEmpty(u_pw)) {
		alert("아이디 및 비밀번호를 확인하세요.");
		u_id.value = "";
		u_pw.value = "";
		u_id.focus();
		return false;
	}
	return true;
}