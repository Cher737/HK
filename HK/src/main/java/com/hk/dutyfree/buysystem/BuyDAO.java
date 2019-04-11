package com.hk.dutyfree.buysystem;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.dutyfree.coupon.UseCoupon;
import com.hk.dutyfree.point.Point;
import com.hk.dutyfree.product.Product;
import com.hk.dutyfree.product.ProductMapper;
import com.hk.dutyfree.user.Passport;
import com.hk.dutyfree.user.PassportMapper;
import com.hk.dutyfree.user.User;
import com.hk.dutyfree.user.UserMapper;

@Service
public class BuyDAO {

	@Autowired
	private SqlSession ss;
	
	public void inputBucket(Product p, HttpServletRequest req){
		
		Product pd = new Product();
		pd = ss.getMapper(ProductMapper.class).numberselect(p);
		BigDecimal count = pd.getP_avgscore();
		count = count.add(new BigDecimal(1));
		pd.setP_avgscore(count);
		ss.getMapper(ProductMapper.class).productcount(pd);
		
		List<Product> pds = new ArrayList<Product>();
		
		pds.add(pd);
		
		if (req.getSession().getAttribute("loginMember") == null){
			if(req.getSession().getAttribute("BucketList") == null){
			req.getSession().setAttribute("BucketList", pds);
			req.getSession().setMaxInactiveInterval(3 * 60 * 60 * 24);
			} else{
				pds = (List<Product>) req.getSession().getAttribute("BucketList");
				pds.add(pd);
				req.getSession().setAttribute("BucketList", pds);
			}
		} else {
			User u = (User) req.getSession().getAttribute("loginMember");
			
			Bucket bk = new Bucket(null, u.getU_id(), p.getP_number());
			
			ss.getMapper(BuyMapper.class).Bucketinsert(bk);
			
		}
		
		
		
	}
	
	public void SelectMyBucket(HttpServletRequest req){
		
		if(req.getSession().getAttribute("loginMember") == null){
			
			List<Product> pds = (List<Product>) req.getSession().getAttribute("BucketList");	
			if (pds != null){
				req.setAttribute("MybucketList", pds);
			} else{
				req.setAttribute("MybucketList", null);
			}
			
		} else{
			if(req.getSession().getAttribute("BucketList") != null){
				User u =  (User) req.getSession().getAttribute("loginMember");
				List<Product> pds = (List<Product>) req.getSession().getAttribute("BucketList");
				Bucket bk = null;
				List<Bucket> bks = null;
				for (int i = 0; i < pds.size(); i++) {
					bk = new Bucket(null, u.getU_id(), pds.get(i).getP_number());
					ss.getMapper(BuyMapper.class).Bucketinsert(bk);
				} 
				bks = ss.getMapper(BuyMapper.class).BucketSelect(bk);

				pds = ss.getMapper(BuyMapper.class).BucketProductselect(bk);
				req.setAttribute("MybucketList", pds);
				req.getSession().setAttribute("BucketList", null);
				
			} else{
				
				User u =  (User) req.getSession().getAttribute("loginMember");
				Bucket bk = new Bucket(null, u.getU_id(), null);
				List<Bucket> bks  = ss.getMapper(BuyMapper.class).BucketProductselect2(bk);
				if(bks.size() >= 1){
					req.setAttribute("MybucketList", bks);
				} else{
					req.setAttribute("MybucketList", null);
				}
			}
		}
		
		
	}
	public void DeleteBucket(HttpServletRequest req){
		if(req.getSession().getAttribute("loginMember") == null){
			List<Product> pds = (List<Product>) req.getSession().getAttribute("BucketList");
			
			List<Product> pds2 = new ArrayList<Product>();
			for (int i = 0; i < pds.size(); i++) {
				if(pds.get(i).getP_number().equals(new BigDecimal(req.getParameter("bk_pnumber")))){
				} else{
					pds2.add(pds.get(i));
				}
				
			}
			if(pds2.size() >= 1){
				req.getSession().setAttribute("BucketList", pds2);
			} else{
				req.getSession().setAttribute("BucketList", null);
			}
			
		} else{
			User u =  (User) req.getSession().getAttribute("loginMember");
			BigDecimal bk_pnumber = new BigDecimal(req.getParameter("bk_pnumber"));
			Bucket bk = new Bucket(null, u.getU_id(), bk_pnumber);
			ss.getMapper(BuyMapper.class).BucketDelete(bk);
		}
	}
	
	public String gobuylist(HttpServletRequest req){
		
		User u =  (User) req.getSession().getAttribute("loginMember");
		int Birth = Integer.parseInt(u.getU_jumin().substring(0,1));
		String BirthDay = u.getU_jumin().substring(0,2);
		if(Birth > 3){
			BirthDay = "19"+ BirthDay+ "년 ";
		} else{
			BirthDay = "20" +BirthDay+ "년 ";
		}
				
		BirthDay = BirthDay + u.getU_jumin().substring(2,4) +"월 ";
		BirthDay = BirthDay + u.getU_jumin().substring(4,6) +"일";
		if(u.getU_jumin().substring(6,7).equals("1") || u.getU_jumin().substring(6,7).equals("3")){
			req.setAttribute("gender", "남자");
		} else {
			req.setAttribute("gender", "여자");
		}
		req.setAttribute("BirthDay", BirthDay);
		
		Passport pp = new Passport();
		pp.setPp_id(u.getU_id());
		pp = ss.getMapper(PassportMapper.class).getPassportById(pp);
		req.setAttribute("Passport", pp);
		
		if(req.getSession().getAttribute("loginMember") != null){
		String number = req.getParameter("p_number");
		String count = req.getParameter("p_count");
		StringTokenizer tokens  = new StringTokenizer(number, ",");
		StringTokenizer tokens2  = new StringTokenizer(count, ",");

		ArrayList<String> numbers = new ArrayList<String>();
		ArrayList<String> counts = new ArrayList<String>();
		while(tokens.hasMoreTokens()){
			numbers.add(tokens.nextToken());
			counts.add(tokens2.nextToken());
		}
		Product pd = new Product();
		Product pd2 = new Product();
		List<Product> pds = new ArrayList<Product>();
		for (int j = 0; j < numbers.size(); j++) {
		pd.setP_number(new BigDecimal(numbers.get(j)));
		pd2 = ss.getMapper(ProductMapper.class).numberselect(pd);
		pd2.setP_count(counts.get(j));
		pds.add(pd2);
		}
		
		for (int i = 0; i < pds.size(); i++) {
		}
		req.setAttribute("buylist", pds);
		
		req.setAttribute("UserPoint", u.getU_point());
		return "Mypage/Buy.jsp";
		}
		else{
			req.setAttribute("Login", "X");
			return "product/bucket.jsp";
		}
	}
	
	public void buyresult(HttpServletRequest req){
		
		String productnumber = req.getParameter("productnumber");
		String productcount = req.getParameter("productcount");
		String productprice = req.getParameter("productprice");
		String pay = req.getParameter("pay");
		String buycode = req.getParameter("buycode");
		BigDecimal usecoupon = null;
		BigDecimal coupondiscount = null;
		
		if(req.getParameter("usecoupon") != ""){
			usecoupon = new BigDecimal(req.getParameter("usecoupon"));
			coupondiscount = new BigDecimal(req.getParameter("coupondiscount"));

			UseCoupon uc = new UseCoupon();
			uc.setUc_number(usecoupon);
			uc.setUc_used("o");
			ss.getMapper(BuyMapper.class).UseCoupon(uc);
		} else{
			usecoupon = new BigDecimal(0);
			coupondiscount = new BigDecimal(0);
		}
		BigDecimal payment = new BigDecimal(req.getParameter("payment"));
		int point = 0 - Integer.parseInt(req.getParameter("point"));
		BigDecimal userdiscount = new BigDecimal(req.getParameter("userdiscount"));
		StringTokenizer tokens  = new StringTokenizer(productnumber, ",");
		StringTokenizer tokens2  = new StringTokenizer(productcount, ",");
		StringTokenizer tokens3  = new StringTokenizer(productprice, ",");

		ArrayList<String> numbers = new ArrayList<String>();
		ArrayList<String> counts = new ArrayList<String>();
		ArrayList<String> prices = new ArrayList<String>();
		while(tokens.hasMoreTokens()){
			numbers.add(tokens.nextToken());
			counts.add(tokens2.nextToken());
			prices.add(tokens3.nextToken());
		}
		User u =  (User) req.getSession().getAttribute("loginMember");
		
		BigDecimal userpoint = u.getU_point(); 
		BigDecimal resultpoint = userpoint.add(new BigDecimal(point));
		u.setU_point(resultpoint);
		Point pt = new Point(null, new BigDecimal(point), u.getU_id(), "결제시 포인트사용", null, null, "PT001");	
		ss.getMapper(BuyMapper.class).UsePoint(pt);
		ss.getMapper(BuyMapper.class).UpdateUserPoint(u);
		pt = ss.getMapper(BuyMapper.class).SelectPoint(pt);
		Buylist b = new Buylist
		(buycode, null, u.getU_id(), pay,
		payment, usecoupon, coupondiscount,
		pt.getPt_number(), new BigDecimal(point), u.getU_grade(),
		userdiscount);
		
		ss.getMapper(BuyMapper.class).insertBuylist(b);
		
		for (int i = 0; i < numbers.size(); i++) {
			BuyDetail bd 
			= new BuyDetail(null, buycode, "x", new BigDecimal(numbers.get(i)),
					new BigDecimal(prices.get(i)), new BigDecimal(counts.get(i)));
			ss.getMapper(BuyMapper.class).insertBuyDetail(bd);
		}
		
		
	}
	
	public void BuyResult2(HttpServletRequest req){
		User u =  (User) req.getSession().getAttribute("loginMember");
		int Birth = Integer.parseInt(u.getU_jumin().substring(0,1));
		String BirthDay = u.getU_jumin().substring(0,2);
		if(Birth > 3){
			BirthDay = "19"+ BirthDay+ "년 ";
		} else{
			BirthDay = "20" +BirthDay+ "년 ";
		}
				
		BirthDay = BirthDay + u.getU_jumin().substring(2,4) +"월 ";
		BirthDay = BirthDay + u.getU_jumin().substring(4,6) +"일";
		if(u.getU_jumin().substring(6,7).equals("1") || u.getU_jumin().substring(6,7).equals("3")){
			req.setAttribute("gender", "남자");
		} else {
			req.setAttribute("gender", "여자");
		}
		req.setAttribute("BirthDay", BirthDay);
		Buylist b = new Buylist();
		b.setB_id(u.getU_id());
		b = ss.getMapper(BuyMapper.class).SelectBuylist(b);
		System.out.println(b.getB_ucdiscount());
		req.setAttribute("Buylist", b);
		
		Passport pp = new Passport();
		pp.setPp_id(u.getU_id());
		pp = ss.getMapper(PassportMapper.class).getPassportById(pp);
		req.setAttribute("Passport", pp);
		
		BuyDetail bd = new BuyDetail();
		bd.setBd_bbuycode(b.getB_buycode());
		List<BuyDetail> bds = ss.getMapper(BuyMapper.class).selectBuyDetail(bd);
		
		req.setAttribute("Productcount", bds.size());
		req.setAttribute("BuyDetail", bds);
		
	}
	
}
