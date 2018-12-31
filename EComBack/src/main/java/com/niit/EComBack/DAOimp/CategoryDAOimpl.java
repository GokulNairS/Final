package com.niit.EComBack.DAOimp;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.EComBack.DAO.CategoryDAO;
import com.niit.EComBack.Model.Category;
@Repository
@Transactional
public class CategoryDAOimpl implements CategoryDAO {
	@Autowired
	SessionFactory sessionfactory;
	@Override
	public boolean CreateCategory(Category c) {
		try {
			sessionfactory.getCurrentSession().save(c);
			return true;
		} catch (Exception e) {
			System.err.println(e.getMessage());
			return false;
		}
		}

	@Override
	public boolean UpdateCategory(Category category) {
		try {
			sessionfactory.getCurrentSession().update(category);
			return true;
		} catch (Exception e) {
			return false;
		}

	}

	@Override
	public boolean DeleteCategory(Category category) {
		try {
			sessionfactory.getCurrentSession().delete(category);
			return true;
		} catch (Exception e) {
			return false;
		}	
	}

	@Override
	public List<Category> ViewAllCategory() {
		try {
			System.out.println("hi");
			return sessionfactory.getCurrentSession().createQuery("from Category").list();
		}

		catch (Exception e) {
			return null;

		}
	}

	@Override
	public Category ViewOneCategory(String categoryid) {
		try {
			return (Category) sessionfactory.getCurrentSession()
					.createQuery("from Category where category_Name='" + categoryid + "'").uniqueResult();
		}

		catch (Exception e) {
			return null;

		}

	}

}
