package com.hk.dutyfree;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class HomeController_K {
	
	@RequestMapping(value = "/login.go", method = RequestMethod.GET)
	public String login2() {		
		return "member/login";
	}
	
	@RequestMapping(value = "/join.go", method = RequestMethod.GET)
	public String join() {		
		return "member/join";
	}
	
	
	@RequestMapping(value = "/memberinfo", method = RequestMethod.GET)
	public String memberInfo(HttpServletRequest request) {
		request.setAttribute("centerpage", "Mypage/MypageMain.jsp");
		request.setAttribute("Mypage", "../member/memberInfo.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/memberupdate", method = RequestMethod.GET)
	public String memberUpdate(HttpServletRequest request) {
		request.setAttribute("centerpage", "Mypage/MypageMain.jsp");
		request.setAttribute("Mypage", "../member/memberUpdate.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/bucket", method = RequestMethod.GET)
	public String bucket(HttpServletRequest request) {
		request.setAttribute("centerpage", "product/bucket.jsp");
		return "index";
	}
}
