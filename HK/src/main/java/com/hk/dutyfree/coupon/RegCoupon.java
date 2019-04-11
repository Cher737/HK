package com.hk.dutyfree.coupon;

import java.math.BigDecimal;
import java.util.Date;

public class RegCoupon {

	private String r_number;
	private String r_name;
	private BigDecimal r_amount;
	private Date r_exp;
	private String r_exp2;
	private String r_used;

	public String getR_number() {
		return r_number;
	}

	public void setR_number(String r_number) {
		this.r_number = r_number;
	}

	public String getR_name() {
		return r_name;
	}

	public void setR_name(String r_name) {
		this.r_name = r_name;
	}

	public BigDecimal getR_amount() {
		return r_amount;
	}

	public void setR_amount(BigDecimal r_amount) {
		this.r_amount = r_amount;
	}

	public Date getR_exp() {
		return r_exp;
	}

	public void setR_exp(Date r_exp) {
		this.r_exp = r_exp;
	}

	public String getR_exp2() {
		return r_exp2;
	}

	public void setR_exp2(String r_exp2) {
		this.r_exp2 = r_exp2;
	}

	public String getR_used() {
		return r_used;
	}

	public void setR_used(String r_used) {
		this.r_used = r_used;
	}

	public RegCoupon(String r_number, String r_name, BigDecimal r_amount, Date r_exp, String r_exp2, String r_used) {
		super();
		this.r_number = r_number;
		this.r_name = r_name;
		this.r_amount = r_amount;
		this.r_exp = r_exp;
		this.r_exp2 = r_exp2;
		this.r_used = r_used;
	}

	public RegCoupon() {
		// TODO Auto-generated constructor stub
	}

}
