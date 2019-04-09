package com.hk.dutyfree.rate;

import java.util.List;

public interface RateMapper {
	
	public abstract int insertRate(Rate rt);
	
	public abstract Rate getRate(Rate rt);
	
	public abstract List<Rate> getRates();
}
