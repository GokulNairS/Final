//package com.niit.EComBack;
//
//import static org.junit.Assert.*;
//
//import org.junit.After;
//import org.junit.Before;
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//import com.niit.EComBack.DAO.CategoryDAO;
//import com.niit.EComBack.Model.Category;
//
//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(classes=DBconfig.class)
//public class CategoryTest {
//	
//	@Autowired
//	CategoryDAO categoryDAOImpl;
//	Category cd;
//	@Before
//	
//	
//	public void setUp() throws Exception {
//	cd=new Category();
//	cd.setCategory_Name("bvb");
//	cd.setCategoryDesc("new");
//	}
// 
//	@After  
//	public void tearDown() throws Exception {
//	 //categoryDAOImpl.DeleteCategory(cd);
//	}
//
//	@Test
//	public void test() {
//		assertEquals("Success", true, categoryDAOImpl.CreateCategory(cd));
//		assertEquals("Success", true, categoryDAOImpl.CreateCategory(cd));
//	}
//
//}
