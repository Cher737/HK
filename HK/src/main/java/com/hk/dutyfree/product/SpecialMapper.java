package com.hk.dutyfree.product;

import java.util.List;

public interface SpecialMapper {

	public abstract List<Product> getSailProducts(Productno pdn);	
	
	public abstract List<Product> getTopProducts(Productno pdn);	
}
