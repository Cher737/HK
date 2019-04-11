package com.hk.dutyfree.coupon;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hk.dutyfree.product.SpecialDAO;
import com.hk.dutyfree.rate.rateDAO;


@Controller
public class CouponController {
	
	@Autowired
	private CouponDAO CDAO;

	@Autowired
	private rateDAO rDAO;
	
	@Autowired
	private SpecialDAO spDAO;
	
	@RequestMapping(value = "/coupon", method = RequestMethod.GET)
	public String createCoupon(HttpServletRequest request,HttpServletResponse response) {
		CDAO.createCoupon();
		spDAO.getSailProducts(request);
		request.setAttribute("centerpage", "main/main.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/Mypage.Coupon.insert", method = RequestMethod.POST)
	public String MypageCouponinsert(HttpServletRequest request) {
		CDAO.IDinsertRegCoupon(request);
		request.setAttribute("centerpage", "Mypage/MypageMain.jsp");
		request.setAttribute("Mypage", "Coupon.jsp");
		CDAO.SelectMyCoupon(request);
		return "index";
	}
	
	@RequestMapping(value = "/Mypage.Coupon", method = RequestMethod.GET)
	public String MypageMyCoupon(HttpServletRequest request) {
		CDAO.SelectMyCoupon(request);
		rDAO.getRate(request);
		request.setAttribute("centerpage", "Mypage/MypageMain.jsp");
		request.setAttribute("Mypage", "Coupon.jsp");
		return "index";
	}
}
