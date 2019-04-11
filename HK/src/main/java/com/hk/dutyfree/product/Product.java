package com.hk.dutyfree.product;

import java.math.BigDecimal;

public class Product {

	private BigDecimal p_number;
	private String p_name;
	private BigDecimal p_price;
	private String p_img;
	private String p_categoryone;
	private String p_categorytwo;
	private String p_brand;
	private String p_gender;
	private BigDecimal p_avgscore;
	private String d_discount;
	private BigDecimal d_discountrate;
	private String p_count;
	
	public Product(BigDecimal p_number, String p_name, BigDecimal p_price, String p_img, String p_categoryone,
			String p_categorytwo, String p_brand, String p_gender, BigDecimal p_avgscore, String d_discount,
			BigDecimal d_discountrate) {
		super();
		this.p_number = p_number;
		this.p_name = p_name;
		this.p_price = p_price;
		this.p_img = p_img;
		this.p_categoryone = p_categoryone;
		this.p_categorytwo = p_categorytwo;
		this.p_brand = p_brand;
		this.p_gender = p_gender;
		this.p_avgscore = p_avgscore;
		this.d_discount = d_discount;
		this.d_discountrate = d_discountrate;
	}

	public String getP_count() {
		return p_count;
	}

	public void setP_count(String p_count) {
		this.p_count = p_count;
	}

	public Product(BigDecimal p_number, String p_name, BigDecimal p_price, String p_img, String p_categoryone,
			String p_categorytwo, String p_brand, String p_gender, BigDecimal p_avgscore, String d_discount,
			BigDecimal d_discountrate, String p_count) {
		super();
		this.p_number = p_number;
		this.p_name = p_name;
		this.p_price = p_price;
		this.p_img = p_img;
		this.p_categoryone = p_categoryone;
		this.p_categorytwo = p_categorytwo;
		this.p_brand = p_brand;
		this.p_gender = p_gender;
		this.p_avgscore = p_avgscore;
		this.d_discount = d_discount;
		this.d_discountrate = d_discountrate;
		this.p_count = p_count;
	}

	public BigDecimal getP_number() {
		return p_number;
	}

	public void setP_number(BigDecimal p_number) {
		this.p_number = p_number;
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

	public String getP_categoryone() {
		return p_categoryone;
	}

	public void setP_categoryone(String p_categoryone) {
		this.p_categoryone = p_categoryone;
	}

	public String getP_categorytwo() {
		return p_categorytwo;
	}

	public void setP_categorytwo(String p_categorytwo) {
		this.p_categorytwo = p_categorytwo;
	}

	public String getP_brand() {
		return p_brand;
	}

	public void setP_brand(String p_brand) {
		this.p_brand = p_brand;
	}

	public String getP_gender() {
		return p_gender;
	}

	public void setP_gender(String p_gender) {
		this.p_gender = p_gender;
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

	public BigDecimal getP_avgscore() {
		return p_avgscore;
	}

	public void setP_avgscore(BigDecimal p_avgscore) {
		this.p_avgscore = p_avgscore;
	}

	public Product() {
		// TODO Auto-generated constructor stub
	}

}
