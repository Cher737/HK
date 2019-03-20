package com.hk.dutyfree.product;

import java.math.BigDecimal;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductDAO {

	@Autowired
	private SqlSession ss;

	private int Productcount;

	public void getProductcount() {
		Productcount = ss.getMapper(ProductMapper.class).getProductcount();
	}

	public Products getpageJson(HttpServletRequest req, HttpServletResponse res) {
		try {

			int pageNo = Integer.parseInt(req.getParameter("page"));
			double count = 15;
			req.setAttribute("curpage", pageNo);

			int pageCount = (int) Math.ceil(Productcount / count);
			req.setAttribute("pageCount", pageCount);
			int start = (Productcount - ((pageNo - 1) * (int) count));
			int end = (pageNo == pageCount) ? 1 : (int) (start - (count - 1));
			Productno pdn = new Productno(new BigDecimal(start), new BigDecimal(end));
			List<Product> Products = ss.getMapper(ProductMapper.class).getProducts(pdn);
			Products products2 = new Products(Productcount, Products);

			return products2;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public void PageCount(HttpServletRequest req, HttpServletResponse res) {
		double count = 15;

		int pageCount = (int) Math.ceil(Productcount / count);
		req.setAttribute("pageCount", pageCount);

	}

	public Products searchJson(HttpServletRequest req, HttpServletResponse res) {
		try {
			int pageNo = 0;
			int searchCount = 0;
			String name = "";
			int pricemax = 50000;
			int pricemin = 0;
			String gender = "";
			String discount = "";
			String categoryone = "";
			String categorytwo = "";
			List<Product> Products = null;
			ProductSearch pds = new ProductSearch();
			if (req.getParameter("page") == null) {
				pageNo = 1;
			} else {
				pageNo = Integer.parseInt(req.getParameter("page"));
			}

			if (!req.getParameter("name").equals("null")) {
				name = req.getParameter("name");
				pds.setP_name(name);
			} else {
				pds.setP_name("");
			}
			if (!req.getParameter("pricemax").equals("0")) {
				pricemax = Integer.parseInt(req.getParameter("pricemax"));
				pricemin = Integer.parseInt(req.getParameter("pricemin"));
				pds.setP_pricemax(new BigDecimal(pricemax));
				pds.setP_pricemin(new BigDecimal(pricemin));
			} else {
				pds.setP_pricemax(new BigDecimal(pricemax));
				pds.setP_pricemin(new BigDecimal(pricemin));
			}
			if (!req.getParameter("gender").equals("null")) {
				gender = req.getParameter("gender");
				pds.setP_gender(gender);
			} else {
				pds.setP_gender("");
			}
			if (!req.getParameter("discount").equals("null")) {
				discount = req.getParameter("discount");
				pds.setD_discount(discount);
			} else {
				pds.setD_discount("");
			}
			if (!req.getParameter("categoryone").equals("null")) {
				categoryone = req.getParameter("categoryone");
				pds.setP_categoryone(categoryone);
			} else {
				pds.setP_categoryone("");
			}
			if (!req.getParameter("categorytwo").equals("null")) {
				categorytwo = req.getParameter("categorytwo");
				pds.setP_categorytwo(categorytwo);
			} else {
				pds.setP_categorytwo("");
			}

			searchCount = ss.getMapper(ProductMapper.class).searchProductCount(pds);

			double count = 15;

			int pageCount = (int) Math.ceil(searchCount / count);
			req.setAttribute("pageCount", pageCount);
			int start = (searchCount - ((pageNo - 1) * (int) count));
			int end = (pageNo == pageCount) ? 1 : (int) (start - (count - 1));
			pds.setStart(new BigDecimal(start));
			pds.setEnd(new BigDecimal(end));
			Products = ss.getMapper(ProductMapper.class).searchProduct(pds);

			Products products2 = new Products(searchCount, Products);
			Search s = new Search();
			System.out.println("제목: " + name);
			if( name != ""){
				System.out.println("ㅋㅋㅋ");
				s.setS_word(name);
				BigDecimal b = null;
				try {
					int searchcount1 = ss.getMapper(ProductMapper.class).searchlastcount(s) + 1;
					b = new BigDecimal(searchcount1);
					s.setS_frequency(b);
					ss.getMapper(ProductMapper.class).searchupdate(s);
				} catch (Exception e){
					e.printStackTrace();
					s.setS_frequency(new BigDecimal(1));
					ss.getMapper(ProductMapper.class).searchinsert(s);
				}
				
			}
			
			return products2;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public void WebCrolling() {
		try {

			Document d = Jsoup.connect("http://www.dootadutyfree.com/dutyfree/goods/list/2/100/200100050002/view.do")
					.execute().parse();
			Product pd = new Product();
			Random random = new Random();
			Discount dc = new Discount();
			BigDecimal last = null;
			int ran = 0;
			int ran2 = 0;
			Elements es = d.select(".cat_item");
			for (Element element : es) {
				pd.setP_brand(element.select(".brand").text().replace("\r", "").replace("\n", ""));
				pd.setP_img("http://www.dootadutyfree.com" + element.select("a img").attr("src"));
				pd.setP_name(element.select(".title").text().replace("\r", "").replace("\n", ""));
				// System.out.println(element.select(".orgPrice").text());;
				if (element.select(".orgPrice").text().replace("$", "").replace(" ", "").equals("")) {
					pd.setP_price(new BigDecimal(element.select(".Price").text().replace("$", "").replace(" ", "")));
				} else {
					pd.setP_price(new BigDecimal(element.select(".orgPrice").text().replace("$", "").replace(" ", "")));
				}
				pd.setP_categoryone("식품");
				pd.setP_categorytwo("선호식품");
				pd.setP_gender("공용");
				ss.getMapper(ProductMapper.class).DBwrite(pd);
				last = ss.getMapper(ProductMapper.class).lastProduct().getP_number();
				ran = random.nextInt(2);
				ran2 = random.nextInt(100) + 1;
				if (ran == 0) {
					dc.setD_discount("y");
					dc.setD_discountrate(new BigDecimal(ran2));
					dc.setD_pnumber(last);
					ss.getMapper(ProductMapper.class).DCwrite(dc);
				} else {
					dc.setD_discount("n");
					dc.setD_discountrate(new BigDecimal(0));
					dc.setD_pnumber(last);
					ss.getMapper(ProductMapper.class).DCwrite(dc);
				}

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void MoneySession(HttpServletRequest req, HttpServletResponse res) {
		try {
			
		
		String select = req.getParameter("moneyselect");
		select =  URLEncoder.encode(select, "UTF-8");

		Cookie[] cookies = req.getCookies();
		if (cookies != null && cookies.length > 0) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("selectmoney")) {
					if (cookie.getValue() != select) {
						Cookie selectMoney = new Cookie("selectmoney", select);
						res.addCookie(selectMoney);
						selectMoney.setMaxAge(60 * 60 * 5);
					} else {
					}

				} else{
					Cookie selectMoney = new Cookie("selectmoney", select);
					res.addCookie(selectMoney);
					selectMoney.setMaxAge(60 * 60 * 5);
				}
			}

		} else{
			Cookie selectMoney = new Cookie("selectmoney", select);
			res.addCookie(selectMoney);
			selectMoney.setMaxAge(60 * 60 * 5);
		}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public Searchs getSearchJson(HttpServletRequest req, HttpServletResponse res) {
		try {
System.out.println("시작");
			List<Search> s = ss.getMapper(ProductMapper.class).selectlank();
			System.out.println(s.get(0).getS_word());
			Searchs ss = new Searchs();
			ss.setSearchs(s);
			return ss;
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
