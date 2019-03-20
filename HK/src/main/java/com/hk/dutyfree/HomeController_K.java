package com.hk.dutyfree;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hk.dutyfree.user.Passport;
import com.hk.dutyfree.user.User;
import com.hk.dutyfree.user.UserDAO;
import com.hk.dutyfree.user.Users;


@Controller
public class HomeController_K {
	@Autowired 
	private UserDAO uDAO;
	
	@RequestMapping(value = "/logout.go", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		uDAO.logout(request, response);
		uDAO.loginCheck(request);
		request.setAttribute("centerpage", "main/main.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/login.go", method = RequestMethod.GET)
	public String loginGo(User u, HttpServletRequest request, HttpServletResponse response) {
		uDAO.loginCheck(request);
		return "member/login";
	}
	
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String loginDo(User u, HttpServletRequest request, HttpServletResponse response) {
		uDAO.login(u, request, response);
		uDAO.loginCheck(request);
		request.setAttribute("centerpage", "main/main.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/join.go", method = RequestMethod.GET)
	public String joinGo(HttpServletRequest request) {
		uDAO.loginCheck(request);
		return "member/join";
	}
	
	@RequestMapping(value = "/join.do", method = RequestMethod.POST)
	public String joinDo(User u, Passport p, HttpServletRequest request) {
		uDAO.join(u, p, request);
		uDAO.loginCheck(request);
		request.setAttribute("centerpage", "main/main.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/memberinfo", method = RequestMethod.GET)
	public String memberInfo(HttpServletRequest request) {
		if (uDAO.loginCheck(request)) {
//			uDAO.divideMail(request);
			uDAO.Info(request);
			request.setAttribute("centerpage", "Mypage/MypageMain.jsp");
			request.setAttribute("Mypage", "../member/memberInfo.jsp");
		} else {
			request.setAttribute("centerpage", "main/main.jsp");
		}
		return "index";
	}
	
	@RequestMapping(value = "/memberupdate.go", method = RequestMethod.GET)
	public String memberUpdate(HttpServletRequest request) {
		if (uDAO.loginCheck(request)) {
			uDAO.divideAddr(request);
			uDAO.divideMail(request);
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
		uDAO.bye2(request, response);
		request.setAttribute("centerpage", "main/main.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/member.id.check", method = RequestMethod.GET, 
			produces = "application/xml; charset=utf-8")
	public @ResponseBody Users idCheck(User u) {
		return uDAO.idCheck(u);
	}
	
	@RequestMapping(value = "/bucket", method = RequestMethod.GET)
	public String bucket(HttpServletRequest request) {
		request.setAttribute("centerpage", "product/bucket.jsp");
		return "index";
	}
}
