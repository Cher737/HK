package com.hk.dutyfree;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hk.dutyfree.product.SpecialDAO;
import com.hk.dutyfree.rate.rateDAO;


@Controller
public class HomeController_H {
	
	@Autowired
	private rateDAO rDAO;
	
	@Autowired
	private SpecialDAO spDAO;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String Index(HttpServletRequest request, HttpServletResponse response) {
		rDAO.getRate(request);
		spDAO.getSailProducts(request, response);
		request.setAttribute("centerpage", "main/main.jsp");
		return "index";
	}
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(HttpServletRequest request) {
		rDAO.getRate(request);
		request.setAttribute("centerpage", "main/main.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/Support.FAQ", method = RequestMethod.GET)
	public String Support(HttpServletRequest request) {
		rDAO.getRate(request);
		request.setAttribute("centerpage", "Support/Supportmain.jsp");
		request.setAttribute("Surportpage", "SupportFAQ.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/Support.Counseling", method = RequestMethod.GET)
	public String Counseling(HttpServletRequest request) {
		rDAO.getRate(request);
		request.setAttribute("centerpage", "Support/Supportmain.jsp");
		request.setAttribute("Surportpage", "Counseling.jsp");
		return "index";
	}
	@RequestMapping(value = "/Mypage.main", method = RequestMethod.GET)
	public String Mypage(HttpServletRequest request) {
		rDAO.getRate(request);
		request.setAttribute("centerpage", "Mypage/MypageMain.jsp");
		request.setAttribute("Mypage", "BuyList.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/Mypage.Coupon", method = RequestMethod.GET)
	public String MypageCoupon(HttpServletRequest request) {
		rDAO.getRate(request);
		request.setAttribute("centerpage", "Mypage/MypageMain.jsp");
		request.setAttribute("Mypage", "Coupon.jsp");
		return "index";
	}
	@RequestMapping(value = "/Mypage.MyCounseling", method = RequestMethod.GET)
	public String MyCounseling(HttpServletRequest request) {
		rDAO.getRate(request);
		request.setAttribute("centerpage", "Mypage/MypageMain.jsp");
		request.setAttribute("Mypage", "MyCounseling.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/Mypage.Passport.main", method = RequestMethod.GET)
	public String PassPortMain(HttpServletRequest request) {
		rDAO.getRate(request);
		request.setAttribute("centerpage", "Mypage/MypageMain.jsp");
		request.setAttribute("Mypage", "Passport/Passportmain.jsp");
		request.setAttribute("Passportpage", "Passportselect.jsp");
		return "index";
	}
	@RequestMapping(value = "/Mypage.Passport.update", method = RequestMethod.GET)
	public String PassPortupdate(HttpServletRequest request) {
		rDAO.getRate(request);
		request.setAttribute("centerpage", "Mypage/MypageMain.jsp");
		request.setAttribute("Mypage", "Passport/Passportmain.jsp");
		request.setAttribute("Passportpage", "Passportupdate.jsp");
		return "index";
	}
	@RequestMapping(value = "/Mypage.Leave.Main", method = RequestMethod.GET)
	public String LeaveMain(HttpServletRequest request) {
		rDAO.getRate(request);
		request.setAttribute("centerpage", "Mypage/MypageMain.jsp");
		request.setAttribute("Mypage", "LeaveMain.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/Mypage.Buy", method = RequestMethod.GET)
	public String Buy(HttpServletRequest request) {
		rDAO.getRate(request);
		request.setAttribute("centerpage", "Mypage/Buy.jsp");
		return "index";
	}
}
