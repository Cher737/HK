package com.hk.dutyfree;


import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HomeController_H {
	

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
	@RequestMapping(value = "/Mypage.MyCounseling", method = RequestMethod.GET)
	public String MyCounseling(HttpServletRequest request) {
		request.setAttribute("centerpage", "Mypage/MypageMain.jsp");
		request.setAttribute("Mypage", "MyCounseling.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/Mypage.Passport.main", method = RequestMethod.GET)
	public String PassPortMain(HttpServletRequest request) {
		request.setAttribute("centerpage", "Mypage/MypageMain.jsp");
		request.setAttribute("Mypage", "Passport/Passportmain.jsp");
		request.setAttribute("Passportpage", "Passportselect.jsp");
		return "index";
	}
	@RequestMapping(value = "/Mypage.Passport.update", method = RequestMethod.GET)
	public String PassPortupdate(HttpServletRequest request) {
		request.setAttribute("centerpage", "Mypage/MypageMain.jsp");
		request.setAttribute("Mypage", "Passport/Passportmain.jsp");
		request.setAttribute("Passportpage", "Passportupdate.jsp");
		return "index";
	}
	@RequestMapping(value = "/Mypage.Leave.Main", method = RequestMethod.GET)
	public String LeaveMain(HttpServletRequest request) {
		request.setAttribute("centerpage", "Mypage/MypageMain.jsp");
		request.setAttribute("Mypage", "LeaveMain.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/Mypage.Buy", method = RequestMethod.GET)
	public String Buy(HttpServletRequest request) {
		request.setAttribute("centerpage", "Mypage/Buy.jsp");
		return "index";
	}
}
