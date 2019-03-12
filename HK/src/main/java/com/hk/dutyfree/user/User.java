package com.hk.dutyfree.user;

import java.math.BigDecimal;
import java.util.Date;

public class User {
	private String u_id;
	private String u_pw;
	private String u_name;
	private String u_addr;
	private String u_mail;
	private String u_phone;
	private String u_jumin;
	private Date u_joinday;
	private BigDecimal u_grade;
	private Date u_gradedate;
	private BigDecimal u_point;
	
	public User() {
		// TODO Auto-generated constructor stub
	}

	public User(String u_id, String u_pw, String u_name, String u_addr, String u_mail, String u_phone, String u_jumin,
			Date u_joinday, BigDecimal u_grade, Date u_gradedate, BigDecimal u_point) {
		super();
		this.u_id = u_id;
		this.u_pw = u_pw;
		this.u_name = u_name;
		this.u_addr = u_addr;
		this.u_mail = u_mail;
		this.u_phone = u_phone;
		this.u_jumin = u_jumin;
		this.u_joinday = u_joinday;
		this.u_grade = u_grade;
		this.u_gradedate = u_gradedate;
		this.u_point = u_point;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}

	public String getU_pw() {
		return u_pw;
	}

	public void setU_pw(String u_pw) {
		this.u_pw = u_pw;
	}

	public String getU_name() {
		return u_name;
	}

	public void setU_name(String u_name) {
		this.u_name = u_name;
	}

	public String getU_addr() {
		return u_addr;
	}

	public void setU_addr(String u_addr) {
		this.u_addr = u_addr;
	}

	public String getU_mail() {
		return u_mail;
	}

	public void setU_mail(String u_mail) {
		this.u_mail = u_mail;
	}

	public String getU_phone() {
		return u_phone;
	}

	public void setU_phone(String u_phone) {
		this.u_phone = u_phone;
	}

	public String getU_jumin() {
		return u_jumin;
	}

	public void setU_jumin(String u_jumin) {
		this.u_jumin = u_jumin;
	}

	public Date getU_joinday() {
		return u_joinday;
	}

	public void setU_joinday(Date u_joinday) {
		this.u_joinday = u_joinday;
	}

	public BigDecimal getU_grade() {
		return u_grade;
	}

	public void setU_grade(BigDecimal u_grade) {
		this.u_grade = u_grade;
	}

	public Date getU_gradedate() {
		return u_gradedate;
	}

	public void setU_gradedate(Date u_gradedate) {
		this.u_gradedate = u_gradedate;
	}

	public BigDecimal getU_point() {
		return u_point;
	}

	public void setU_point(BigDecimal u_point) {
		this.u_point = u_point;
	}
	
	
}
