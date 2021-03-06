package com.niit.EComFront.Controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.niit.EComBack.DAO.CategoryDAO;
import com.niit.EComBack.DAO.ProductDAO;
import com.niit.EComBack.Model.Product;

@Controller
public class ProductController {
	@Autowired
	ProductDAO productDAO;
	@Autowired
	CategoryDAO categoryDAO;

	void addimage(MultipartFile f, int id) {
		try {
			String path = "E:\\21112018\\EComFront\\src\\main\\webapp\\resources\\productImages\\";// location that u // copied
			path = path + String.valueOf(id) + ".jpg";
			if (!f.isEmpty()) {
				byte[] imagebytes = f.getBytes();
				File x = new File(path);
				if (x.exists()) {
					x.delete();
					BufferedOutputStream bs = new BufferedOutputStream(new FileOutputStream(x));
					bs.write(imagebytes);
					bs.close();
				} else {
					BufferedOutputStream bs = new BufferedOutputStream(new FileOutputStream(x));
					bs.write(imagebytes);
					bs.close();
				}
			}
			Thread.sleep(5000);
		} catch (Exception e) {

		}
	}

	@RequestMapping("/admin/product")
	public String productPage(Model m) {
		m.addAttribute("title", "Flower Paradise -Product");
		m.addAttribute("editMode", false);
		m.addAttribute("product", new Product());
		m.addAttribute("productPage", true);
		m.addAttribute("listcategory", categoryDAO.ViewAllCategory());
		m.addAttribute("listproduct", productDAO.listproduct());
		m.addAttribute("haserror", false);
		return "index";
	}

	@RequestMapping(value = "/admin/addproduct", method = RequestMethod.POST)
	public String add(@Valid @ModelAttribute("product") Product product, BindingResult br, Model m) {
		if (br.hasErrors()) {
			System.out.println(br.toString());
			m.addAttribute("title", "Flower Paradise -Product");
			m.addAttribute("editMode", false);
			m.addAttribute("product", product);
			m.addAttribute("productPage", true);
			m.addAttribute("listcategory", categoryDAO.ViewAllCategory());
			m.addAttribute("listproduct", productDAO.listproduct());
			m.addAttribute("haserror", true);
			m.addAttribute("error", "pls check data");
			return "index";
		} else {

			try {
				productDAO.add(product);
				addimage(product.getPimage(),product.getProductId());
				return "redirect:/admin/product";
			} 
			catch (Exception e) {
				m.addAttribute("title", "Flower Paradise -Product");
				m.addAttribute("editMode", false);
				m.addAttribute("product", product);
				m.addAttribute("productPage", true);
				m.addAttribute("listcategory", categoryDAO.ViewAllCategory());
				m.addAttribute("listproduct", productDAO.listproduct());
				m.addAttribute("error", "data already present");
				m.addAttribute("haserror", false);
				return "index";
			}
		}
	}

	@RequestMapping("/admin/deleteproduct")
	public String deleteproduct(@RequestParam("productName") String productName, Model m) {
		Product p = productDAO.getProduct(productName);
		m.addAttribute("title", "Flower Paradise -Product");

		productDAO.delete(p);
		return "redirect:/admin/product";
	}

	@RequestMapping("/admin/editProduct")
	public String editProduct(@RequestParam("productName") String productName, Model m) {
		m.addAttribute("editMode", true);
		m.addAttribute("listcategory", categoryDAO.ViewAllCategory());
		m.addAttribute("listproduct", productDAO.listproduct());
		m.addAttribute("product", productDAO.getProduct(productName));
		m.addAttribute("productPage", true);
		m.addAttribute("haserror", true);
		m.addAttribute("error", " ");
		return "index";
	}

	@RequestMapping(value = "/admin/updateproduct", method = RequestMethod.POST)
	public String update(@Valid @ModelAttribute("productModel") Product product, BindingResult br, Model m) {
		if (br.hasErrors()) {
			m.addAttribute("editMode", false);
			m.addAttribute("title", "Flower Paradise -Product");

			m.addAttribute("listcategory", categoryDAO.ViewAllCategory());
			m.addAttribute("listproduct", productDAO.listproduct());
			m.addAttribute("product", product);
			m.addAttribute("productPage", true);
			m.addAttribute("haserror", true);
			m.addAttribute("error", "please check your data");
			return "index";
		} else {try {

			productDAO.update(product);

			addimage(product.getPimage(), product.getProductId());
			return "redirect:/admin/product";
		}
			
			 catch (Exception e) 
			 { m.addAttribute("editMode", false);
			 m.addAttribute("title","Flower Paradise -Product");
			 
			 m.addAttribute("listcategory", categoryDAO.ViewAllCategory());
			 m.addAttribute("listproduct", productDAO.listproduct());
			 m.addAttribute("product", product);
			 m.addAttribute("productPage", true);
			 m.addAttribute("haserror", true); 
			 m.addAttribute("error"," data already present"); 
			 return "index";
			  
			  }
			  
		}
	}
	


	@RequestMapping("/viewoneproduct")
	public String viewoneproductpage(@RequestParam("productName")String productName,Model m) {
		m.addAttribute("title", "Flower Paradise -Display");
		m.addAttribute("listproduct", productDAO.getProduct(productName));
		m.addAttribute("viewoneproductpage", true);
		return "index";
	}
	
	@RequestMapping("/viewallproduct")
	public String viewallproductpage(Model m) {
		m.addAttribute("title", "Flower Paradise -Product");
		m.addAttribute("prodlist", productDAO.listproduct());
		m.addAttribute("viewallproductpage", true);
		return "index";
	}
}