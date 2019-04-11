package com.hk.dutyfree.coupon;

import java.math.BigDecimal;
import java.util.Date;

public class UseCoupon {

	private BigDecimal uc_number;
	private String uc_rnumber;
	private String uc_name;
	private BigDecimal uc_discount;
	private BigDecimal uc_discountrate;
	private String uc_id;
	private String uc_used;
	private String uc_exp2;
	private Date uc_exp;

	public BigDecimal getUc_number() {
		return uc_number;
	}

	public void setUc_number(BigDecimal uc_number) {
		this.uc_number = uc_number;
	}

	public String getUc_rnumber() {
		return uc_rnumber;
	}

	public void setUc_rnumber(String uc_rnumber) {
		this.uc_rnumber = uc_rnumber;
	}

	public String getUc_name() {
		return uc_name;
	}

	public void setUc_name(String uc_name) {
		this.uc_name = uc_name;
	}

	public BigDecimal getUc_discount() {
		return uc_discount;
	}

	public void setUc_discount(BigDecimal uc_discount) {
		this.uc_discount = uc_discount;
	}

	public BigDecimal getUc_discountrate() {
		return uc_discountrate;
	}

	public void setUc_discountrate(BigDecimal uc_discountrate) {
		this.uc_discountrate = uc_discountrate;
	}

	public String getUc_id() {
		return uc_id;
	}

	public void setUc_id(String uc_id) {
		this.uc_id = uc_id;
	}

	public String getUc_used() {
		return uc_used;
	}

	public void setUc_used(String uc_used) {
		this.uc_used = uc_used;
	}

	public String getUc_exp2() {
		return uc_exp2;
	}

	public void setUc_exp2(String uc_exp2) {
		this.uc_exp2 = uc_exp2;
	}

	public Date getUc_exp() {
		return uc_exp;
	}

	public void setUc_exp(Date uc_exp) {
		this.uc_exp = uc_exp;
	}

	public UseCoupon(BigDecimal uc_number, String uc_rnumber, String uc_name, BigDecimal uc_discount,
			BigDecimal uc_discountrate, String uc_id, String uc_used, String uc_exp2, Date uc_exp) {
		super();
		this.uc_number = uc_number;
		this.uc_rnumber = uc_rnumber;
		this.uc_name = uc_name;
		this.uc_discount = uc_discount;
		this.uc_discountrate = uc_discountrate;
		this.uc_id = uc_id;
		this.uc_used = uc_used;
		this.uc_exp2 = uc_exp2;
		this.uc_exp = uc_exp;
	}

	public UseCoupon() {
		// TODO Auto-generated constructor stub
	}
}
