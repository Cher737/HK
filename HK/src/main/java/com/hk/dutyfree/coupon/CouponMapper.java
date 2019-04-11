package com.hk.dutyfree.coupon;

import java.util.List;

public interface CouponMapper {

	public abstract Integer CreateCoupon(RegCoupon rc);
	
	public abstract Integer UseRegCoupon(RegCoupon rc);
	
	public abstract Integer IdinsertCoupon(UseCoupon rc);
	
	public abstract RegCoupon SelectCoupon(RegCoupon rc);
	
	public abstract List<UseCoupon> SelectMycoupon(UseCoupon uc);
	
}
