package com.hk.dutyfree.buysystem;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hk.dutyfree.coupon.CouponDAO;
import com.hk.dutyfree.product.Product;
import com.hk.dutyfree.product.SpecialDAO;
import com.hk.dutyfree.rate.rateDAO;

@Controller
public class BuyController {

	@Autowired
	private BuyDAO BDAO;
	
	@Autowired
	private CouponDAO CDAO;
	
	@Autowired
	private rateDAO rDAO;
	
	@Autowired
	private SpecialDAO spDAO;
	
	@RequestMapping(value = "/buy", method = RequestMethod.GET)
	public String createCoupon(HttpServletRequest request,HttpServletResponse response) {
		request.setAttribute("centerpage", "main/main.jsp");
		spDAO.getSailProducts(request);
		return "index";
	}
	
	@RequestMapping(value = "/inputbucket", method = RequestMethod.GET)
	public String inputbucket(Product p ,HttpServletRequest request,HttpServletResponse response) {
		BDAO.inputBucket(p, request);
		request.setAttribute("centerpage", "product/product.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/bucket", method = RequestMethod.GET)
	public String bucket(HttpServletRequest request) {
		BDAO.SelectMyBucket(request);
		rDAO.buypageRate(request);
		request.setAttribute("centerpage", "product/bucket.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/deletebucket", method = RequestMethod.GET)
	public String deletebucket(HttpServletRequest request) {
		BDAO.DeleteBucket(request);
		request.setAttribute("centerpage", "product/bucket.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/gobuylist.go", method = RequestMethod.POST)
	public String gobuylist(HttpServletRequest request) {
		String a = BDAO.gobuylist(request);
		rDAO.buypageRate(request);
		request.setAttribute("centerpage", a);
		return "index";
	}
	
	@RequestMapping(value = "/Coupon.select.go", method = RequestMethod.GET)
	public String Couponselectgo(HttpServletRequest request) {
		CDAO.SelectMyCoupon(request);
		rDAO.buypageRate(request);
		return "Mypage/Coupon.mini";
	}
	
	@RequestMapping(value = "/GetPoint", method = RequestMethod.POST)
	public String GetPoint(HttpServletRequest request) {
		BDAO.gobuylist(request);
		rDAO.buypageRate(request);
		request.setAttribute("centerpage", "Mypage/Buy.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/Buyresult", method = RequestMethod.POST)
	public String Buyresult(HttpServletRequest request) {
		BDAO.buyresult(request);
		request.setAttribute("centerpage", "Mypage/Buy.jsp");
		return "index";
	}
@RequestMapping(value = "/Buyresult.do", method = RequestMethod.GET)
public String Buyresultdo(HttpServletRequest request) {
	BDAO.BuyResult2(request);
	rDAO.buypageRate(request);
	request.setAttribute("centerpage", "Mypage/BuyResult.jsp");
	return "index";
}

}