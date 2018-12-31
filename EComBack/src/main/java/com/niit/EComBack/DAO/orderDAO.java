package com.niit.EComBack.DAO;

import java.util.List;

import com.niit.EComBack.Model.Orders;

public interface orderDAO {

	public boolean add(Orders order);
	public List<Orders> listOrder(int cartid);
	public Orders getOrder(String orderid);
}

