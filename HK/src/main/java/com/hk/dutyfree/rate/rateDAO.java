package com.hk.dutyfree.rate;

import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class rateDAO {
	
	private Boolean aa = false;
	//private Date vv;
	private Date d = new Date();
	private int xx;
	
	@Autowired
	private SqlSession ss;
	
	public void getRate(HttpServletRequest request) {
		// xx는 DB에 저장되어있는 최근 환율의 날짜? (매퍼사용X ?)
		SimpleDateFormat sdf = new SimpleDateFormat("YYYYMMdd");
		String sdfstring = sdf.format(d);
		String day2 = sdfstring.substring(6,8);
		int day = Integer.parseInt(day2);
		if (!aa) {
			// boolean이 false일경우 true로 바꿔줌
			aa = true;
		}
		if (xx != day) { // 최신날짜가 아니면 환율 웹크롤링 시작
			try {
				Rate rt = new Rate();
				Document d = Jsoup.connect("https://ko.valutafx.com/USD-JPY.htm").execute().parse();
				Document d2 = Jsoup.connect("https://ko.valutafx.com/USD-CNY.htm").execute().parse();
				Document d3 = Jsoup.connect("https://ko.valutafx.com/USD-EUR.htm").execute().parse();
				Document d4 = Jsoup.connect("https://ko.valutafx.com/USD-KRW.htm").execute().parse();
				
				Elements es = d.select("#main-wrap div div div div div div div .converter-result");
				Elements es2 = d2.select("#main-wrap div div div div div div div .converter-result");
				Elements es3 = d3.select("#main-wrap div div div div div div div .converter-result");
				Elements es4 = d4.select("#main-wrap div div div div div div div .converter-result");
				
				if (es != null) {
					rt.setEr_rate(es.select(".rate-value").text());
					rt.setEr_country("JP");
					ss.getMapper(RateMapper.class).insertRate(rt);
				}
				if (es2 != null) {
					rt.setEr_rate(es2.select(".rate-value").text());
					rt.setEr_country("CN");
					ss.getMapper(RateMapper.class).insertRate(rt);
				}
				if (es3 != null) {
					rt.setEr_rate(es3.select(".rate-value").text());
					rt.setEr_country("EU");
					ss.getMapper(RateMapper.class).insertRate(rt);
				}
				if (es4 != null) {
					rt.setEr_rate(es4.select(".rate-value").text());
					rt.setEr_country("KR");
					ss.getMapper(RateMapper.class).insertRate(rt);
				}
			} catch (Exception e) {
				e.printStackTrace();
				request.setAttribute("rateResult", "환율입력을 실패했습니다.");
			}
			
			xx = day;
			aa = false;
		} // if괄호
		
		// System.out.println(request.getParameter("rateselect"));
		try {
			
			Cookie[] cookies = request.getCookies(); // 준호거 ProductDAO 아래 MoneySession 메소드 참고
			if (cookies != null && cookies.length > 0) {
				for (Cookie cookie : cookies) {
					if (cookie.getName().equals("selectmoney")) {
						String select =  URLDecoder.decode(cookie.getValue(), "UTF-8");
						
						Rate rt = new Rate();
						
						if (select.equals("￦")){
							rt.setEr_country("KR");
							rt = ss.getMapper(RateMapper.class).getRate(rt);
							request.setAttribute("rateResult", rt);
							
						} else if (select.equals("￥")) {
							rt.setEr_country("JP");
							rt = ss.getMapper(RateMapper.class).getRate(rt);
							request.setAttribute("rateResult", rt);
							
						} else if (select.equals("元")) {
							rt.setEr_country("CN");
							rt = ss.getMapper(RateMapper.class).getRate(rt);
							request.setAttribute("rateResult", rt);
							
						} else {
							rt.setEr_country("EU");
							rt = ss.getMapper(RateMapper.class).getRate(rt);
							request.setAttribute("rateResult", rt);
						}
						
					} else{
						Rate rt = new Rate();
						rt.setEr_country("KR");
						rt = ss.getMapper(RateMapper.class).getRate(rt);
						request.setAttribute("rateResult", rt);
					}
				}
				
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("rateResult", "환율조회실패");
		} // 환율가져오는 괄호
		
	}
	
//	public void insertRate(Rate rt, HttpServletRequest request) {
//	}
	
	public void buypageRate (HttpServletRequest req){
		Rate rt = new Rate();
		rt.setEr_country("KR");
		rt = ss.getMapper(RateMapper.class).getRate(rt);
		
		req.setAttribute("rateResult", rt);
	}
}
