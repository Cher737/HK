package com.hk.dutyfree.rate;

import java.math.BigDecimal;
import java.util.Date;

public class Rate {
	private BigDecimal er_number;
	private Date er_date;
	private String er_rate;
	private String er_country;
	
	public Rate() {
		// TODO Auto-generated constructor stub
	}

	public Rate(BigDecimal er_number, Date er_date, String er_rate, String er_country) {
		super();
		this.er_number = er_number;
		this.er_date = er_date;
		this.er_rate = er_rate;
		this.er_country = er_country;
	}

	public BigDecimal getEr_number() {
		return er_number;
	}

	public void setEr_number(BigDecimal er_number) {
		this.er_number = er_number;
	}

	public Date getEr_date() {
		return er_date;
	}

	public void setEr_date(Date er_date) {
		this.er_date = er_date;
	}

	public String getEr_rate() {
		return er_rate;
	}

	public void setEr_rate(String er_rate) {
		this.er_rate = er_rate;
	}

	public String getEr_country() {
		return er_country;
	}

	public void setEr_country(String er_country) {
		this.er_country = er_country;
	}
	
}
