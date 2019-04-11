package com.hk.dutyfree.buysystem;

import java.util.List;

import com.hk.dutyfree.point.Point;
import com.hk.dutyfree.product.Product;
import com.hk.dutyfree.user.User;
import com.hk.dutyfree.coupon.UseCoupon;

public interface BuyMapper {

	
	
	public abstract Integer Bucketinsert(Bucket bk);
	
	public abstract List<Bucket> BucketSelect(Bucket bk);
	
	public abstract List<Product> BucketProductselect(Bucket bk);

	public abstract List<Bucket> BucketProductselect2(Bucket bk);
	
	public abstract Integer BucketDelete(Bucket bk);
	
	public abstract Integer UseCoupon(UseCoupon uc);
	
	public abstract Integer UsePoint(Point pt);
	
	public abstract Integer UpdateUserPoint(User u);
	
	public abstract Point SelectPoint(Point pt);
	
	public abstract Integer insertBuylist(Buylist b);
	
	public abstract Buylist SelectBuylist(Buylist b);
	
	public abstract Integer insertBuyDetail(BuyDetail bd);
	
	public abstract List<BuyDetail> selectBuyDetail(BuyDetail bd);
	
	
}
