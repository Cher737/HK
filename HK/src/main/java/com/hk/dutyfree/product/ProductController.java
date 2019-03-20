package com.hk.dutyfree.product;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hk.dutyfree.product.ProductDAO;


@Controller
public class ProductController {
	
	public ProductController() {
		firstReq = true;
	}
	@Autowired
	private ProductDAO PDAO; 
	
	private boolean firstReq;
	
	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public String product(HttpServletRequest request, HttpServletResponse response) {
		if (firstReq) {
			PDAO.getProductcount();
			firstReq = false;
		}
		PDAO.PageCount(request, response);
		request.setAttribute("centerpage", "product/product.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/product.detail", method = RequestMethod.GET)
	public String product2(HttpServletRequest request) {
		request.setAttribute("centerpage", "product/productdetail.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/product.json", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
	public @ResponseBody Products paging(HttpServletRequest request, HttpServletResponse response) {
			return PDAO.searchJson(request, response);
	}
	@RequestMapping(value = "/product.json2", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
	public @ResponseBody Products paging2(HttpServletRequest request, HttpServletResponse response) {
		return PDAO.getpageJson(request, response);
	}
	
	@RequestMapping(value = "/product.insert", method = RequestMethod.GET)
	public String home(HttpServletRequest request) {
		PDAO.WebCrolling();
		request.setAttribute("centerpage", "main/main.jsp");
		return "index";
	}
	@RequestMapping(value = "/SelectMoney.go", method = RequestMethod.POST)
	public String SelectMoney(HttpServletRequest request,HttpServletResponse response) {
		PDAO.MoneySession(request, response);
		request.setAttribute("centerpage", "main/main.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/lank.top", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
	public @ResponseBody Searchs lank(HttpServletRequest request, HttpServletResponse response) {
		return PDAO.getSearchJson(request, response);
	}
}
