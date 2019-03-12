package com.hk.dutyfree.product;

import java.math.BigDecimal;

public class ProductSearch {

	private String p_name;
	private String p_gender;
	private String d_discount;
	private BigDecimal p_pricemin;
	private BigDecimal p_pricemax;
	private String p_categoryone;
	private String p_categorytwo;
	private BigDecimal start;
	private BigDecimal end;

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
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

	public BigDecimal getP_pricemin() {
		return p_pricemin;
	}

	public void setP_pricemin(BigDecimal p_pricemin) {
		this.p_pricemin = p_pricemin;
	}

	public BigDecimal getP_pricemax() {
		return p_pricemax;
	}

	public void setP_pricemax(BigDecimal p_pricemax) {
		this.p_pricemax = p_pricemax;
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

	public BigDecimal getStart() {
		return start;
	}

	public void setStart(BigDecimal start) {
		this.start = start;
	}

	public BigDecimal getEnd() {
		return end;
	}

	public void setEnd(BigDecimal end) {
		this.end = end;
	}

	public ProductSearch(String p_name, String p_gender, String d_discount, BigDecimal p_pricemin,
			BigDecimal p_pricemax, String p_categoryone, String p_categorytwo, BigDecimal start, BigDecimal end) {
		super();
		this.p_name = p_name;
		this.p_gender = p_gender;
		this.d_discount = d_discount;
		this.p_pricemin = p_pricemin;
		this.p_pricemax = p_pricemax;
		this.p_categoryone = p_categoryone;
		this.p_categorytwo = p_categorytwo;
		this.start = start;
		this.end = end;
	}

	public ProductSearch() {
		// TODO Auto-generated constructor stub
	}
}
