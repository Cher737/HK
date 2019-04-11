package com.hk.dutyfree.buysystem;

import java.math.BigDecimal;
import java.util.Date;

public class Buylist {

	private String b_buycode;
	private Date b_date;
	private String b_id;
	private String b_pay;
	private BigDecimal b_payment;
	private BigDecimal b_ucnumber;
	private BigDecimal b_ucdiscount;
	private BigDecimal b_ptnumber;
	private BigDecimal b_ptdiscount;
	private BigDecimal b_ugrade;
	private BigDecimal b_udiscount;

	public Buylist(String b_buycode, Date b_date, String b_id, String b_pay, BigDecimal b_payment,
			BigDecimal b_ucnumber, BigDecimal b_ucdiscount, BigDecimal b_ptnumber, BigDecimal b_ptdiscount,
			BigDecimal b_ugrade, BigDecimal b_udiscount) {
		super();
		this.b_buycode = b_buycode;
		this.b_date = b_date;
		this.b_id = b_id;
		this.b_pay = b_pay;
		this.b_payment = b_payment;
		this.b_ucnumber = b_ucnumber;
		this.b_ucdiscount = b_ucdiscount;
		this.b_ptnumber = b_ptnumber;
		this.b_ptdiscount = b_ptdiscount;
		this.b_ugrade = b_ugrade;
		this.b_udiscount = b_udiscount;
	}

	public Buylist() {
		// TODO Auto-generated constructor stub
	}

	public String getB_buycode() {
		return b_buycode;
	}

	public void setB_buycode(String b_buycode) {
		this.b_buycode = b_buycode;
	}

	public Date getB_date() {
		return b_date;
	}

	public void setB_date(Date b_date) {
		this.b_date = b_date;
	}

	public String getB_id() {
		return b_id;
	}

	public void setB_id(String b_id) {
		this.b_id = b_id;
	}

	public String getB_pay() {
		return b_pay;
	}

	public void setB_pay(String b_pay) {
		this.b_pay = b_pay;
	}

	public BigDecimal getB_payment() {
		return b_payment;
	}

	public void setB_payment(BigDecimal b_payment) {
		this.b_payment = b_payment;
	}

	public BigDecimal getB_ucnumber() {
		return b_ucnumber;
	}

	public void setB_ucnumber(BigDecimal b_ucnumber) {
		this.b_ucnumber = b_ucnumber;
	}

	public BigDecimal getB_ucdiscount() {
		return b_ucdiscount;
	}

	public void setB_ucdiscount(BigDecimal b_ucdiscount) {
		this.b_ucdiscount = b_ucdiscount;
	}

	public BigDecimal getB_ptnumber() {
		return b_ptnumber;
	}

	public void setB_ptnumber(BigDecimal b_ptnumber) {
		this.b_ptnumber = b_ptnumber;
	}

	public BigDecimal getB_ptdiscount() {
		return b_ptdiscount;
	}

	public void setB_ptdiscount(BigDecimal b_ptdiscount) {
		this.b_ptdiscount = b_ptdiscount;
	}

	public BigDecimal getB_ugrade() {
		return b_ugrade;
	}

	public void setB_ugrade(BigDecimal b_ugrade) {
		this.b_ugrade = b_ugrade;
	}

	public BigDecimal getB_udiscount() {
		return b_udiscount;
	}

	public void setB_udiscount(BigDecimal b_udiscount) {
		this.b_udiscount = b_udiscount;
	}

}
