package com.hk.dutyfree.product;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SpecialController {

	@Autowired
	private SpecialDAO spDAO;
	
//	@RequestMapping(value = "/sailproduct", method = RequestMethod.GET)
//	public String product(HttpServletRequest request, HttpServletResponse response) {
//		spDAO.getSailProducts(request, response);
//		request.setAttribute("centerpage", "main/Sail.jsp");
//		return "index";
//	}
}
