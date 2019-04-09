package com.hk.dutyfree.product;

import java.math.BigDecimal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SpecialDAO {
	
	@Autowired
	private SqlSession ss;
	
	public void getSailProducts(HttpServletRequest request, HttpServletResponse response) {
		try {
			int start = 1;
			int end = 20;
			Productno pdn = new Productno(new BigDecimal(start), new BigDecimal(end));
			List<Product> spds = ss.getMapper(SpecialMapper.class).getSailProducts(pdn);
			request.setAttribute("spds", spds);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
