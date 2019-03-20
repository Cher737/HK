package com.hk.dutyfree.point;

import java.math.BigDecimal;
import java.util.Date;

public class Point {

	private BigDecimal pt_number;
	private BigDecimal pt_point;
	private String pt_id;
	private String pt_txt;
	private Date pt_date;
	private String pt_date2;
	private String pt_code;

	public BigDecimal getPt_number() {
		return pt_number;
	}

	public void setPt_number(BigDecimal pt_number) {
		this.pt_number = pt_number;
	}

	public BigDecimal getPt_point() {
		return pt_point;
	}

	public void setPt_point(BigDecimal pt_point) {
		this.pt_point = pt_point;
	}

	public String getPt_id() {
		return pt_id;
	}

	public void setPt_id(String pt_id) {
		this.pt_id = pt_id;
	}

	public String getPt_txt() {
		return pt_txt;
	}

	public void setPt_txt(String pt_txt) {
		this.pt_txt = pt_txt;
	}

	public Date getPt_date() {
		return pt_date;
	}

	public void setPt_date(Date pt_date) {
		this.pt_date = pt_date;
	}

	public String getPt_date2() {
		return pt_date2;
	}

	public void setPt_date2(String pt_date2) {
		this.pt_date2 = pt_date2;
	}

	public String getPt_code() {
		return pt_code;
	}

	public void setPt_code(String pt_code) {
		this.pt_code = pt_code;
	}

	public Point(BigDecimal pt_number, BigDecimal pt_point, String pt_id, String pt_txt, Date pt_date, String pt_date2,
			String pt_code) {
		super();
		this.pt_number = pt_number;
		this.pt_point = pt_point;
		this.pt_id = pt_id;
		this.pt_txt = pt_txt;
		this.pt_date = pt_date;
		this.pt_date2 = pt_date2;
		this.pt_code = pt_code;
	}

	public Point() {
		// TODO Auto-generated constructor stub
	}

}
