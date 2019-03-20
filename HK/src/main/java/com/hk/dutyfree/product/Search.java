package com.hk.dutyfree.product;

import java.math.BigDecimal;

public class Search {

	private BigDecimal s_number;
	private String s_word;
	private BigDecimal s_frequency;

	public Search(BigDecimal s_number, String s_word, BigDecimal s_frequency) {
		super();
		this.s_number = s_number;
		this.s_word = s_word;
		this.s_frequency = s_frequency;
	}

	public BigDecimal getS_number() {
		return s_number;
	}

	public void setS_number(BigDecimal s_number) {
		this.s_number = s_number;
	}

	public String getS_word() {
		return s_word;
	}

	public void setS_word(String s_word) {
		this.s_word = s_word;
	}

	public BigDecimal getS_frequency() {
		return s_frequency;
	}

	public void setS_frequency(BigDecimal s_frequency) {
		this.s_frequency = s_frequency;
	}

	public Search() {
		// TODO Auto-generated constructor stub
	}
}
