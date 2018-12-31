//package com.niit.EComBack;
//
//import static org.junit.Assert.assertEquals;
//
//import org.junit.After;
//import org.junit.Before;
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//
//import com.niit.EComBack.DAO.ProductDAO;
//import com.niit.EComBack.Model.Product;
//
//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(classes=DBconfig.class)
//public class ProductTest {
//
//	@Autowired
//	ProductDAO ProductDAOImpl;
//	Product c;
//	@Before
//	public void setUp() throws Exception {
//		c=new Product();
//		
//		c.setPrice(500);
//		c.setProduct_Name("shoe");
//		c.setProductDesc("dsds");
//	c.setQuantity(5);
//		}
//	
//
//	@After
//	public void tearDown() throws Exception {
//		 ProductDAOImpl.DeleteProduct(c);
//	}
//
//	@Test
//	public void test() {
//		assertEquals("Success", true, ProductDAOImpl.CreateProduct(c));
//		
//	}
//	}
//
//
