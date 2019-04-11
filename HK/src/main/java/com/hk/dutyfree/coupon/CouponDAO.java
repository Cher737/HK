package com.hk.dutyfree.coupon;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.jsoup.helper.HttpConnection.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.dutyfree.user.User;

@Service
public class CouponDAO {

	@Autowired
	private SqlSession ss;

	public void createCoupon() {

		int couponSize = 1;

		final char[] possibleCharacters = { '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', 'A', 'B', 'C', 'D', 'E',
				'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y',
				'Z' };

		final int possibleCharacterCount = possibleCharacters.length;

		String[] arr = new String[couponSize];
		Random rnd = new Random();
		int currentIndex = 0;
		int i = 0;
		while (currentIndex < couponSize) {
			StringBuffer buf = new StringBuffer(16);
			// i는 8자리의 랜덤값을 의미
			for (i = 16; i > 0; i--) {
				buf.append(possibleCharacters[rnd.nextInt(possibleCharacterCount)]);
			}
			String couponnum = buf.toString();
			System.out.println("couponnum==>" + couponnum);
			arr[currentIndex] = couponnum;

			try {
				String d = "2019-12-31";
				SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
				Date date = dateFormat.parse(d);
				RegCoupon rc = new RegCoupon(couponnum, "솔데스크 수료 축하쿠폰", new BigDecimal(40), date, null, "x");
				ss.getMapper(CouponMapper.class).CreateCoupon(rc);
				currentIndex++;
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

	}

	public void IDinsertRegCoupon(HttpServletRequest req) {
		
		String code = req.getParameter("r_number");
		
		RegCoupon rc = new RegCoupon();
		
		rc.setR_number(code);
		
		rc = ss.getMapper(CouponMapper.class).SelectCoupon(rc);
		
		if(rc != null){
			
		UseCoupon uc = new UseCoupon();
		
		if(rc.getR_amount().intValue() >100) {
			uc.setUc_discount(rc.getR_amount());
			uc.setUc_discountrate(new BigDecimal(0));
		} else{
			uc.setUc_discountrate(rc.getR_amount());
			uc.setUc_discount(new BigDecimal(0));
		}
		
		uc.setUc_name(rc.getR_name());
		uc.setUc_rnumber(rc.getR_number());
		uc.setUc_used("x");
		User u = (User) req.getSession().getAttribute("loginMember");
		uc.setUc_id(u.getU_id());
		uc.setUc_exp(rc.getR_exp());
		ss.getMapper(CouponMapper.class).IdinsertCoupon(uc);
		
		rc.setR_used("o");
		ss.getMapper(CouponMapper.class).UseRegCoupon(rc);
	} else{
		System.out.println("쿠폰이 없다.");
	}
		
	}

	public void SelectMyCoupon( HttpServletRequest req){
		User u = (User) req.getSession().getAttribute("loginMember");
		UseCoupon uc = new UseCoupon();
		uc.setUc_id(u.getU_id());
		List<UseCoupon> ucs = ss.getMapper(CouponMapper.class).SelectMycoupon(uc);
		
		if(ucs != null){
			req.setAttribute("Coupon", "couponok");
			req.setAttribute("MyCoupons", ucs);
		} 
	
	}
	
	
	public void IDinsertEventCoupon() {

	}

}
