package com.hk.dutyfree;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hk.dutyfree.user.Passport;
import com.hk.dutyfree.user.User;
import com.hk.dutyfree.user.UserDAO;


@Controller
public class HomeController_K {
	@Autowired 
	private UserDAO uDAO;
	
	@RequestMapping(value = "/logout.go", method = RequestMethod.GET)
	public String logout(HttpServletRequest req, HttpServletResponse res) {
		uDAO.logout(req, res);
		//uDAO.loginCheck(req);
		req.setAttribute("centerpage", "main/main.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/login.go", method = RequestMethod.GET)
	public String loginGo(User u, HttpServletRequest request, HttpServletResponse response) {
		return "member/login";
	}
	
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String loginDo(User u, HttpServletRequest request, HttpServletResponse response) {
		uDAO.login(u, request, response);
		request.setAttribute("centerpage", "main/main.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/join.go", method = RequestMethod.GET)
	public String joinGo(HttpServletRequest request) {
		return "member/join";
	}
	
	@RequestMapping(value = "/join.do", method = RequestMethod.POST)
	public String joinDo(User u, Passport p, HttpServletRequest request) {
		uDAO.join(u, p, request);
		request.setAttribute("centerpage", "main/main.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/memberinfo", method = RequestMethod.GET)
	public String memberInfo(HttpServletRequest request) {
		if (uDAO.loginCheck(request)) {
			request.setAttribute("centerpage", "Mypage/MypageMain.jsp");
			request.setAttribute("Mypage", "../member/memberInfo.jsp");
		} else {
			request.setAttribute("centerpage", "main/main.jsp");
		}
		return "index";
	}
	
	@RequestMapping(value = "/memberupdate", method = RequestMethod.GET)
	public String memberUpdate(HttpServletRequest request) {
		if (uDAO.loginCheck(request)) {
			uDAO.divideAddr(request);
			uDAO.divideAddr(request);
			request.setAttribute("centerpage", "Mypage/MypageMain.jsp");
			request.setAttribute("Mypage", "../member/memberUpdate.jsp");
		} else {
			request.setAttribute("centerpage", "main/main.jsp");
		}
		return "index";
	}
	
	@RequestMapping(value = "/memberupdate.do", method = RequestMethod.POST)
	public String memberUpdateDo(User u, HttpServletRequest request) {
		if (uDAO.loginCheck(request)) {
			uDAO.update(u, request);
			uDAO.divideAddr(request);
			uDAO.divideMail(request);
			request.setAttribute("centerpage", "Mypage/MypageMain.jsp");
			request.setAttribute("Mypage", "../member/memberInfo.jsp");
		} else {
			request.setAttribute("centerpage", "main/main.jsp");
		}
		return "index";
	}
	
	@RequestMapping(value = "/member.bye", method = RequestMethod.GET)
	public String memberBye(HttpServletRequest request, HttpServletResponse response) {
		uDAO.bye(request, response);
		request.setAttribute("centerpage", "main/main.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/bucket", method = RequestMethod.GET)
	public String bucket(HttpServletRequest request) {
		request.setAttribute("centerpage", "product/bucket.jsp");
		return "index";
	}
}
