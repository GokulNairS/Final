package com.niit.EComBack.DAOimp;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.EComBack.DAO.UserDAO;
import com.niit.EComBack.Model.UserDetails;
import com.niit.EComBack.Model.Usercred;

@Repository
@Transactional
public class UserDAOimpl implements UserDAO {
	
	
		
		@Autowired
		 SessionFactory sessionFactory;
		
		
		 public boolean createUser(UserDetails userDetail) {
		
		  try {
		
		  Usercred uc=new Usercred();
		  uc.setEmailid(userDetail.getEmailId());
		  uc.setUser_Password(userDetail.getPassword());
		  uc.setRole("ROLE_USER");
		  
		sessionFactory.getCurrentSession().saveOrUpdate(userDetail);
		sessionFactory.getCurrentSession().saveOrUpdate(uc);
		return true;
		}
		catch(Exception e)
		{
		return false;
		}
		 }
		 
		 public UserDetails SelectUser(String emailId) {
		 
		 try {
		
		
		return(UserDetails)sessionFactory.getCurrentSession().createQuery("from UserDetails where emailId='"+emailId+"'").uniqueResult();
		
		
		}
		catch(Exception e)
		{
		return null;
		}
		}

		
}
