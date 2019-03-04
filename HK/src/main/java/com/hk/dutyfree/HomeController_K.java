package com.hk.dutyfree;


import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HomeController_K {
	

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String Index(HttpServletRequest request) {
		request.setAttribute("centerpage", "main/main.jsp");
		return "index";
	}
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(HttpServletRequest request) {
		request.setAttribute("centerpage", "main/main.jsp");
		return "index";
		
	}
	
	@RequestMapping(value = "/Support.FAQ", method = RequestMethod.GET)
	public String Support(HttpServletRequest request) {
		request.setAttribute("centerpage", "Support/Supportmain.jsp");
		request.setAttribute("Surportpage", "SupportFAQ.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/Support.Counseling", method = RequestMethod.GET)
	public String Counseling(HttpServletRequest request) {
		request.setAttribute("centerpage", "Support/Supportmain.jsp");
		request.setAttribute("Surportpage", "Counseling.jsp");
		return "index";
	}
	@RequestMapping(value = "/Mypage.main", method = RequestMethod.GET)
	public String Mypage(HttpServletRequest request) {
		request.setAttribute("centerpage", "Mypage/MypageMain.jsp");
		request.setAttribute("Mypage", "BuyList.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/Mypage.Coupon", method = RequestMethod.GET)
	public String MypageCoupon(HttpServletRequest request) {
		request.setAttribute("centerpage", "Mypage/MypageMain.jsp");
		request.setAttribute("Mypage", "Coupon.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/login.go", method = RequestMethod.GET)
	public String login2() {		
		return "member/login";
	}
	
	@RequestMapping(value = "/join.go", method = RequestMethod.GET)
	public String join() {		
		return "member/join";
	}
	
	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public String product(HttpServletRequest request) {
		request.setAttribute("centerpage", "product/product.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/product.detail", method = RequestMethod.GET)
	public String product2(HttpServletRequest request) {
		request.setAttribute("centerpage", "product/productdetail.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/memberinfo", method = RequestMethod.GET)
	public String memberInfo() {		
		return "member/memberInfo";
	}
	
	@RequestMapping(value = "/memberupdate", method = RequestMethod.GET)
	public String memberUpdate() {		
		return "member/memberUpdate";
	}
}
