package com.hk.dutyfree.buysystem;

import java.math.BigDecimal;

public class Bucket {

	private BigDecimal bk_number;
	private String bk_id;
	private BigDecimal bk_pnumber;

	public Bucket(BigDecimal bk_number, String bk_id, BigDecimal bk_pnumber) {
		super();
		this.bk_number = bk_number;
		this.bk_id = bk_id;
		this.bk_pnumber = bk_pnumber;
	}

	public BigDecimal getBk_number() {
		return bk_number;
	}

	public void setBk_number(BigDecimal bk_number) {
		this.bk_number = bk_number;
	}

	public String getBk_id() {
		return bk_id;
	}

	public void setBk_id(String bk_id) {
		this.bk_id = bk_id;
	}

	public BigDecimal getBk_pnumber() {
		return bk_pnumber;
	}

	public void setBk_pnumber(BigDecimal bk_pnumber) {
		this.bk_pnumber = bk_pnumber;
	}

	public Bucket() {
		// TODO Auto-generated constructor stub
	}
}
