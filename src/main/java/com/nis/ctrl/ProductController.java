package com.nis.ctrl;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.nis.model.Employee;
import com.nis.model.Product;
import com.nis.repository.ProductRepository;

 

@RestController
public class ProductController {
	
	@Autowired
	ProductRepository productRepository;

	@RequestMapping("ProductRegister")
	public ModelAndView productRegister() {
		return new ModelAndView("ProductRegister", "product", new Product());
	}
	
	@PostMapping("/ProductSubmit")
	public ModelAndView productSubmit(@RequestPart("pic") MultipartFile file,@ModelAttribute Product product) {
 
		 
		product.setPicture(file.getOriginalFilename());
		productRepository.save(product);
		int i = productRepository.findAll().size();
		i++;
		try {
			file.transferTo(new File("C:\\Users\\Sandeep Sappal\\Documents\\workspace-sts-3.9.10.RELEASE\\MM\\src\\main\\resources\\static\\images\\"+file.getOriginalFilename()));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Map<String,Object> m = new HashMap<>();
		m.put("product", product);
		m.put("msg", "Record Submitted succesfully");
		return new ModelAndView("ProductRegister",m);
	}
	
	@RequestMapping("/DisplayAllProducts") 
	public ModelAndView displayProduct() {
		List<Product> product = productRepository.findAll();
		return new ModelAndView("DisplayAllProducts","products",product);
		
	}
	
	@GetMapping("/ProductList") 
	public List<Product> productList() {
		List<Product> product = productRepository.findAll();
		return product; 
		
	}
	
	@GetMapping("/SearchByProductId") 
	public List <Product> searchByProductId(HttpServletRequest req) {
		List<Product> P = productRepository.searchById(Integer.parseInt(req.getParameter("pid")));
		 
		return P; 
		
	}
	
	
	
	
	
	
	
	
	
	@RequestMapping("/ProductDisplayById")
	public ModelAndView displayProductById(HttpServletRequest req) {
		int id = Integer.parseInt(req.getParameter("id"));
		Product P = productRepository.getOne(id);
		
		return new ModelAndView("/ProductEditDelete","product",P);
	}
	
	@GetMapping("/EditDeleteProduct")
	public ModelAndView editDeleteProduct(HttpServletRequest req,@ModelAttribute Product product) {
		String btn = req.getParameter("btn");
		if(btn.equals("Edit")) {
			productRepository.save(product);
		}else {
			File f = new File("F:\\MM\\src\\main\\resources\\static\\images\\"+product.getPicture());
			f.delete();
			productRepository.delete(product);
		}
		
		return new ModelAndView("redirect:/DisplayAllProducts");
		
	}
	@PostMapping("/UpdateProductImage")
	public ModelAndView EditProductPicture(@RequestPart("pic") MultipartFile file,@ModelAttribute Product product) {
		Product P=productRepository.getOne(product.getEmployeeid());
		   P.setPicture(file.getOriginalFilename());
		try {
			file.transferTo(new File("F:\\MM\\src\\main\\resources\\static\\images\\"+file.getOriginalFilename()));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return new ModelAndView("redirect:/DisplayAllProducts");
	}
	
}
