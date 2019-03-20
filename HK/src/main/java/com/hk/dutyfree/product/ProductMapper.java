package com.hk.dutyfree.product;

import java.util.List;

public interface ProductMapper {

	
	public abstract List<Product> getProducts(Productno pdn);

	public abstract List<Product> searchProduct(ProductSearch pds);
	
	public abstract Integer getProductcount();
	
	public abstract Integer searchProductCount(ProductSearch pds);
	
	public abstract Product lastProduct();
	
	public abstract int DBwrite(Product pd);
	
	public abstract int DCwrite(Discount dc);

	public abstract Integer searchlastcount(Search s);
	
	public abstract int searchupdate(Search s);
	
	public abstract int searchinsert(Search s);
	
	public abstract List<Search> selectlank();
}
