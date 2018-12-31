package com.niit.EComBack.DAO;

import com.niit.EComBack.Model.UserDetails;

public interface UserDAO {
	public boolean createUser(UserDetails userdetail);
	public UserDetails SelectUser(String emailId);
}
