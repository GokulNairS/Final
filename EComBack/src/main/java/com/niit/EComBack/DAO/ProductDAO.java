package com.niit.EComBack.DAO;

import java.util.List;

import com.niit.EComBack.Model.Product;

public interface ProductDAO {
	public boolean add(Product product);
	public boolean delete(Product product);
	public boolean update(Product product);
	public List<Product> listproduct();
	public Product getProduct(String productName);

}
