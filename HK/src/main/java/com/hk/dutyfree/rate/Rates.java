package com.hk.dutyfree.rate;

import java.util.ArrayList;

public class Rates {
	private ArrayList<Rate> rate;
	
	public Rates() {
		// TODO Auto-generated constructor stub
	}

	public Rates(ArrayList<Rate> rate) {
		super();
		this.rate = rate;
	}

	public ArrayList<Rate> getRate() {
		return rate;
	}

	public void setRate(ArrayList<Rate> rate) {
		this.rate = rate;
	}
	
}
