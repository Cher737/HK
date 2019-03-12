package com.hk.dutyfree.product;

import java.util.List;

public class Products {

	private int AllCount;

	private List<Product> Products;

	public Products(int allCount, List<Product> products) {
		super();
		AllCount = allCount;
		Products = products;
	}

	public Products(List<Product> products) {
		super();
		Products = products;
	}

	public int getAllCount() {
		return AllCount;
	}

	public void setAllCount(int allCount) {
		AllCount = allCount;
	}

	public List<Product> getProducts() {
		return Products;
	}

	public void setProducts(List<Product> products) {
		Products = products;
	}

	public Products() {
		// TODO Auto-generated constructor stub
	}
}
