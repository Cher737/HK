package com.hk.dutyfree.product;

import java.math.BigDecimal;

public class Discount {

	private BigDecimal d_number;
	private BigDecimal d_pnumber;
	private String d_discount;
	private BigDecimal d_discountrate;
	public Discount(BigDecimal d_number, BigDecimal d_pnumber, String d_discount, BigDecimal d_discountrate) {
		super();
		this.d_number = d_number;
		this.d_pnumber = d_pnumber;
		this.d_discount = d_discount;
		this.d_discountrate = d_discountrate;
	}
	public BigDecimal getD_number() {
		return d_number;
	}
	public void setD_number(BigDecimal d_number) {
		this.d_number = d_number;
	}
	public BigDecimal getD_pnumber() {
		return d_pnumber;
	}
	public void setD_pnumber(BigDecimal d_pnumber) {
		this.d_pnumber = d_pnumber;
	}
	public String getD_discount() {
		return d_discount;
	}
	public void setD_discount(String d_discount) {
		this.d_discount = d_discount;
	}
	public BigDecimal getD_discountrate() {
		return d_discountrate;
	}
	public void setD_discountrate(BigDecimal d_discountrate) {
		this.d_discountrate = d_discountrate;
	}
	
	public Discount() {
		// TODO Auto-generated constructor stub
	}
}
