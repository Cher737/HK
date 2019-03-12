package com.hk.dutyfree.product;

import java.math.BigDecimal;

public class Productno {

	private BigDecimal start;
	private BigDecimal end;
	
	
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
