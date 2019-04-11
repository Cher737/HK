package com.hk.dutyfree.user;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserDAO {
	@Autowired
	private SqlSession ss;
	
	public void autologin(HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie c : cookies) {
				if (c.getName().equals("autoLoginID")) {
					String u_id = c.getValue();
					if (u_id != null && u_id != "") {
						try {
							User u = new User(u_id, null, null, null, null, null, null, null, null, null, null);
							User dbM = ss.getMapper(UserMapper.class).getMemberById(u);
							if (dbM != null) {
								request.getSession().setAttribute("loginMember", dbM);
								request.getSession().setMaxInactiveInterval(15 * 60);
							} else {
								request.setAttribute("r", "미가입 ID입니다.");
							}
						} catch (Exception e) {
							e.printStackTrace();
							request.setAttribute("r", "DB서버오류입니다.");
						}
					}
					break;
				}
			}
		}
	}
		
	public void join(User u, Passport p, HttpServletRequest request) {
		try {
			request.setCharacterEncoding("utf-8");
			// 메일분할입력 처리? 
			String u_mail = String.format("%s=%s", request.getParameter("u_mail1"), 
					request.getParameter("u_mail2"));
			u.setU_mail(u_mail);
			
			// 주소분할입력 처리?
			String u_addr = String.format("%s=%s=%s", request.getParameter("u_addr1"), 
					request.getParameter("u_addr2"), request.getParameter("u_addr3"));
			u.setU_addr(u_addr);
			
			// 가입시 0점처리
			BigDecimal u_grade = new BigDecimal(0);
			u.setU_grade(u_grade);
			BigDecimal u_point = new BigDecimal(0);
			u.setU_point(u_point);
			
			// 입력받지 않은 여권ID처리, 주민번호로 국적처리
			String pp_id = u.getU_id();
			p.setPp_id(pp_id);
			String pp_nationality = String.format(u.getU_jumin().substring(6, 7)); 
			if (pp_nationality.equals("1") || pp_nationality.equals("2")) {
				p.setPp_nationality("대한민국");
			}
			
			// 여권만료일 날짜처리
			String pp_exp2 = request.getParameter("pp_exp2");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
			p.setPp_exp(sdf.parse(pp_exp2));
			
			if (ss.getMapper(UserMapper.class).join(u) == 1) {
				request.setAttribute("r", "회원가입이 완료되었습니다.");
			}
			if (ss.getMapper(UserMapper.class).join2(p) == 1){
				request.setAttribute("r", "회원가입이 완료되었습니다.");
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("r", "회원가입에 실패했습니다.");
		}
	}
	
	public void login(User u, HttpServletRequest request, HttpServletResponse response) {
		try {
			User dbM = ss.getMapper(UserMapper.class).getMemberById(u);
			String mail = dbM.getU_mail().replace("=","@");
			dbM.setU_mail(mail);
			if (dbM != null) {
				if (u.getU_pw().equals(dbM.getU_pw())) {
					request.getSession().setAttribute("loginMember", dbM);
					request.getSession().setMaxInactiveInterval(30 * 60);

					String u_auto = request.getParameter("u_auto");
					if (u_auto != null) {
						Cookie autoLoginID = new Cookie("autoLoginID", dbM.getU_id());
						autoLoginID.setMaxAge(1 * 60 * 60 * 24);
						response.addCookie(autoLoginID);
					}
				} else {
					request.setAttribute("r", "비밀번호 오류입니다.");
				}
			} else {
				request.setAttribute("r", "미가입 ID입니다.");
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("r", "DB서버오류입니다.");
		}
	}
	
	public void logout(HttpServletRequest request, HttpServletResponse response) {
		request.getSession().setAttribute("loginMember", null);

		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie c : cookies) {
				if (c.getName().equals("autoLoginID")) {
					c.setValue(null);
					response.addCookie(c);
				}
			}
		}
	}
	
	public boolean loginCheck(HttpServletRequest request) {
		autologin(request);
		User u = (User) request.getSession().getAttribute("loginMember");

		if (u != null) {
			request.setAttribute("loginPage", "member/loginOK.jsp");
			return true;
		}
//		request.setAttribute("loginPage", "member/login.jsp");
		request.setAttribute("loginPage", "member/loginOK.jsp");
		return false;
	}
	
	public void Info(Passport p,HttpServletRequest request) {
		User u = (User) request.getSession().getAttribute("loginMember");
		String pp_nationality = p.getPp_nationality();
		request.setAttribute("pp_nationality", pp_nationality);
		String u_birth = u.getU_jumin().substring(0,6);
		request.setAttribute("u_birthInfo", u_birth);
		String u_mail = u.getU_mail().replace("=", "@");
		request.setAttribute("u_mailInfo", u_mail);
	}
	
	public void update(User u, HttpServletRequest request) {
		try {
			u.setU_pw(request.getParameter("u_pw"));
			String u_mail = String.format("%s=%s", request.getParameter("u_mail1"), 
					request.getParameter("u_mail2"));
			u.setU_mail(u_mail);
			u.setU_phone(request.getParameter("u_phone"));
			String u_addr = String.format("%s=%s=%s", request.getParameter("u_addr1"), 
					request.getParameter("u_addr2"), request.getParameter("u_addr3"));
			u.setU_addr(u_addr);
			
			if (ss.getMapper(UserMapper.class).update(u) == 1) {
				request.setAttribute("r", "수정 완료되었습니다.");
				request.getSession().setAttribute("loginMember", u);
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("r", "정보수정에 실패했습니다.");
		}
	}
	
	public void bye(HttpServletRequest request, HttpServletResponse response) {
		try {
			User u = (User) request.getSession().getAttribute("loginMember");
			if (ss.getMapper(UserMapper.class).bye(u) == 1) {
				request.setAttribute("r", "탈퇴 처리되었습니다.");
				logout(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("r", "탈퇴처리에 실패했습니다.");
		}
	}
	public void bye2(HttpServletRequest request, HttpServletResponse response) {
		try {
			Passport p = (Passport) request.getSession().getAttribute("loginMember");
			if (ss.getMapper(UserMapper.class).bye2(p) == 1) {
					request.setAttribute("r", "탈퇴 처리되었습니다.");
					logout(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("r", "탈퇴처리에 실패했습니다.");
		}
	}
	
	public void divideAddr(HttpServletRequest request) {
		User u = (User) request.getSession().getAttribute("loginMember");
		String[] addr = u.getU_addr().split("=");
		request.setAttribute("addr1", addr[0]);
		request.setAttribute("addr2", addr[1]);
		request.setAttribute("addr3", addr[2]);
	}
	
	public void divideMail(HttpServletRequest request) {
		User u = (User) request.getSession().getAttribute("loginMember");
		String[] mail = u.getU_mail().split("@");
		request.setAttribute("mail1", mail[0]);
		request.setAttribute("mail2", mail[1]);
	}
	
//	public void mailInfo(HttpServletRequest request) {
//		User u = (User) request.getSession().getAttribute("loginMember");
//		String mail = u.getU_mail().replace("=", "@");
//		request.setAttribute("mail", mail);
//	}
	
	public Users idCheck(User u) {
		User dbM = ss.getMapper(UserMapper.class).getMemberById(u);
		ArrayList<User> al = new ArrayList<User>();
		al.add(dbM);
		Users us = new Users(al);
		return us;
	}
	
}
