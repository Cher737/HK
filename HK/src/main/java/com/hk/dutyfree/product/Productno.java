package com.hk.dutyfree.product;

import java.math.BigDecimal;

public class Productno {

	private BigDecimal start;
	private BigDecimal end;
	private String categoryone;
	
	public Productno(BigDecimal start, BigDecimal end, String categoryone) {
		super();
		this.start = start;
		this.end = end;
		this.categoryone = categoryone;
	}

	public String getCategoryone() {
		return categoryone;
	}

	public void setCategoryone(String categoryone) {
		this.categoryone = categoryone;
	}

	public Productno() {
		// TODO Auto-generated constructor stub
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



	public Productno(BigDecimal start, BigDecimal end) {
		super();
		this.start = start;
		this.end = end;
	}
	
	
}
