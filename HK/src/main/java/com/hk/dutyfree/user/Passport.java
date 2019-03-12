package com.hk.dutyfree.user;

import java.util.Date;

public class Passport {
	private String pp_ppnumber;
	private String pp_id;
	private Date pp_exp;
	private String pp_nationality;
	private String pp_engname;
	
	public Passport() {
		// TODO Auto-generated constructor stub
	}

	public Passport(String pp_ppnumber, String pp_id, Date pp_exp, String pp_nationality, String pp_engname) {
		super();
		this.pp_ppnumber = pp_ppnumber;
		this.pp_id = pp_id;
		this.pp_exp = pp_exp;
		this.pp_nationality = pp_nationality;
		this.pp_engname = pp_engname;
	}

	public String getPp_ppnumber() {
		return pp_ppnumber;
	}

	public void setPp_ppnumber(String pp_ppnumber) {
		this.pp_ppnumber = pp_ppnumber;
	}

	public String getPp_id() {
		return pp_id;
	}

	public void setPp_id(String pp_id) {
		this.pp_id = pp_id;
	}

	public Date getPp_exp() {
		return pp_exp;
	}

	public void setPp_exp(Date pp_exp) {
		this.pp_exp = pp_exp;
	}

	public String getPp_nationality() {
		return pp_nationality;
	}

	public void setPp_nationality(String pp_nationality) {
		this.pp_nationality = pp_nationality;
	}

	public String getPp_engname() {
		return pp_engname;
	}

	public void setPp_engname(String pp_engname) {
		this.pp_engname = pp_engname;
	}
	
	
}
