package com.niit.EComBack.DAO;

import java.util.List;

import com.niit.EComBack.Model.Cart;

public interface cartDAO {
		public boolean add(Cart cart);
		public boolean delete(Cart cart);
		public boolean update(Cart cart);
		public List<Cart> listCart(int cartId);
		public Cart getCart(int itemid);

	}


