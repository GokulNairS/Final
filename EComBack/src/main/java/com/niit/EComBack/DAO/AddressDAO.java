package com.niit.EComBack.DAO;

import java.util.List;

import com.niit.EComBack.Model.Address;

public interface AddressDAO {


		public boolean add(Address address);
		public boolean delete(Address address);
		public boolean update(Address address);
		public List<Address> listAddress(int cartId);
		public Address getAddress(int addressId);

}
