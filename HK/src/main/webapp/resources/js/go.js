function goHome() {
	location.href = "home.go";
}

function goJoin() {
	location.href = "member.join.go";
}

function logout() {
	if (confirm("?")) {
		location.href = "member.logout";
	}
}

function memberBye() {
	if (confirm("탈퇴하시겠습니까?")) {
		location.href = "member.bye";
	}
}

function memberUpdate() {
	location.href = "memberupdate";
}

function msgSend(jcm_to) {
	var jcm_txt = prompt("뭐");
	if (!jcm_txt) {
		return;
	} else if (jcm_txt.length > 200) {
		alert("!");
	} else {
		location.href = "community.msg.send?jcm_to=" + jcm_to + "&jcm_txt="
				+ jcm_txt;
	}
}
function msgDelete(jcm_no) {
	if (confirm("?")) {
		location.href = "community.msg.delete?jcm_no=" + jcm_no;
	}
}
function snsMsgDelete(js_no) {
	if (confirm("?")) {
		location.href = "sns.delete?js_no=" + js_no;
	}
}

function snsMsgUpdate(js_no, js_txt) {
	js_txt = prompt("뭐", js_txt);
	if (!js_txt && js_txt.length > 300) {
		alert("!");
	} else {
		location.href = "sns.update?js_no=" + js_no + "&js_txt=" + js_txt;
	}
}

function snsReplDelete(jsr_no) {
	if (confirm("?")) {
		location.href = "sns.reply.delete?jsr_no=" + jsr_no;
	}
}

function fileDel(jd_no) {
	if (confirm("?")) {
		location.href = "dataroom.delete?jd_no=" + jd_no;
	}
}

function fileSearch(jd_cate) {
	jd_cate = encodeURIComponent(jd_cate);
	location.href = "dataroom.search?jd_cate=" + jd_cate;
}