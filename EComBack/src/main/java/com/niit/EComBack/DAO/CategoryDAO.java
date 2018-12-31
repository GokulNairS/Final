package com.niit.EComBack.DAO;

import java.util.List;

import com.niit.EComBack.Model.Category;

public interface CategoryDAO {
	boolean CreateCategory(Category c);
	boolean UpdateCategory(Category category);
	List<Category> ViewAllCategory();
	Category ViewOneCategory(String categoryid);
	boolean DeleteCategory(Category category);

}
