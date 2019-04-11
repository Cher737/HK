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
			String searchname = "";
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
			if (!req.getParameter("searchname").equals("null")) {
				searchname = req.getParameter("searchname");
				pds.setP_searchname(searchname);
			} else {
				pds.setP_searchname("");
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
			if( name != ""){
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

			Document d = Jsoup.connect("http://www.dootadutyfree.com/dutyfree/search/search/search.do?querys1=&querys2=&querys3=&querys4=&querys5=&querys6=&querys7=&querys8=&querys9=&querys10=&catePosition=L&LCate=&LCateNM=&MCate=&MCateNM=&SCate=&SCateNM=&queryRecomm=%25EC%259C%25A1%25EC%258B%25AC%25EC%259B%2590%2520%25EC%25A7%2580%25EA%25B0%2591&addQuery=&startCountStr=0&startSubCountStr=0&chkImgList=goodsimage&chkDetail=off&boost=goodsG30&boostSex=goodsG&boostAge=30&commentFlag=Pre&sort=WEIGHT&order=1&isPrice=NO&tMinPrice=3&tMaxPrice=107&strMinPriceWon=0&strMaxPriceWon=1000&strMinPrice=3&strMaxPrice=107&strAddQuery=%EC%9C%A1%EC%8B%AC%EC%9B%90+%EC%A7%80%EA%B0%91&collection=goods&untGdsStat=&brandFlag=KOR&collCnt=51&query=%EC%9C%A1%EC%8B%AC%EC%9B%90+%EC%A7%80%EA%B0%91&minPrice=3&maxPrice=107&goodsidx=20")
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
				pd.setP_categoryone("패션/잡화");
				pd.setP_categorytwo("지갑");
				pd.setP_gender("여성");
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
			List<Search> s = ss.getMapper(ProductMapper.class).selectlank();
			Searchs ss = new Searchs();
			ss.setSearchs(s);
			return ss;
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
