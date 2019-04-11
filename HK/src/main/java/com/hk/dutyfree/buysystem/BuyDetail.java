package com.hk.dutyfree.buysystem;

import java.math.BigDecimal;

public class BuyDetail {

	private BigDecimal bd_number;
	private String bd_bbuycode;
	private String bd_receive;
	private BigDecimal bd_pnumber;
	private BigDecimal bd_payment;
	private BigDecimal bd_count;
	private String p_brand;
	private String p_name;
	private BigDecimal p_price;
	private String p_img;
	private BigDecimal d_discountrate;
	
	
	public BigDecimal getD_discountrate() {
		return d_discountrate;
	}

	public void setD_discountrate(BigDecimal d_discountrate) {
		this.d_discountrate = d_discountrate;
	}


	public BuyDetail(BigDecimal bd_number, String bd_bbuycode, String bd_receive, BigDecimal bd_pnumber,
			BigDecimal bd_payment, BigDecimal bd_count, String p_brand, String p_name, BigDecimal p_price, String p_img,
			BigDecimal d_discountrate) {
		super();
		this.bd_number = bd_number;
		this.bd_bbuycode = bd_bbuycode;
		this.bd_receive = bd_receive;
		this.bd_pnumber = bd_pnumber;
		this.bd_payment = bd_payment;
		this.bd_count = bd_count;
		this.p_brand = p_brand;
		this.p_name = p_name;
		this.p_price = p_price;
		this.p_img = p_img;
		this.d_discountrate = d_discountrate;
	}

	public String getP_brand() {
		return p_brand;
	}

	public void setP_brand(String p_brand) {
		this.p_brand = p_brand;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public BigDecimal getP_price() {
		return p_price;
	}

	public void setP_price(BigDecimal p_price) {
		this.p_price = p_price;
	}

	public String getP_img() {
		return p_img;
	}

	public void setP_img(String p_img) {
		this.p_img = p_img;
	}

	public BuyDetail(BigDecimal bd_number, String bd_bbuycode, String bd_receive, BigDecimal bd_pnumber,
			BigDecimal bd_payment, BigDecimal bd_count) {
		super();
		this.bd_number = bd_number;
		this.bd_bbuycode = bd_bbuycode;
		this.bd_receive = bd_receive;
		this.bd_pnumber = bd_pnumber;
		this.bd_payment = bd_payment;
		this.bd_count = bd_count;
	}

	public BigDecimal getBd_number() {
		return bd_number;
	}

	public void setBd_number(BigDecimal bd_number) {
		this.bd_number = bd_number;
	}

	public String getBd_bbuycode() {
		return bd_bbuycode;
	}

	public void setBd_bbuycode(String bd_bbuycode) {
		this.bd_bbuycode = bd_bbuycode;
	}

	public String getBd_receive() {
		return bd_receive;
	}

	public void setBd_receive(String bd_receive) {
		this.bd_receive = bd_receive;
	}

	public BigDecimal getBd_pnumber() {
		return bd_pnumber;
	}

	public void setBd_pnumber(BigDecimal bd_pnumber) {
		this.bd_pnumber = bd_pnumber;
	}

	public BigDecimal getBd_payment() {
		return bd_payment;
	}

	public void setBd_payment(BigDecimal bd_payment) {
		this.bd_payment = bd_payment;
	}

	public BigDecimal getBd_count() {
		return bd_count;
	}

	public void setBd_count(BigDecimal bd_count) {
		this.bd_count = bd_count;
	}

	public BuyDetail() {
		// TODO Auto-generated constructor stub
	}
}
