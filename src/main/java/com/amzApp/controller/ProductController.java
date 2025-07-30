package com.amzApp.controller;

import com.amzApp.entity.Product;
import com.amzApp.service.ProductService;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller

public class ProductController {

	final ProductService productService;

	public ProductController(ProductService productService) {
		this.productService = productService;
	}

	@SuppressWarnings("BooleanMethodIsAlwaysInverted")
	private boolean isAdmin(HttpSession session) {
		String role = (String) session.getAttribute("role");
		return role != null && role.equals("ADMIN");
	}

	@GetMapping("/products")
	public String viewProducts(Model model) {
		model.addAttribute("products", productService.getAllProducts());
		return "products";
	}

	@GetMapping("/products/add")
	public String showAddProductForm(Model model, HttpSession session) {
		if (!isAdmin(session)) {
			return "unauthorized";
		}
		model.addAttribute("product", new Product());
		return "product/add_product";
	}

	@PostMapping("/products/save")
	public String saveProduct(@ModelAttribute("product") Product product, HttpSession session) {
		if (!isAdmin(session)) {
			return "unauthorized";
		}
		productService.saveProduct(product);
		return "redirect:/products";
	}

	@GetMapping("/products/edit/{id}")
	public String editProduct(@PathVariable Long id, Model model, HttpSession session) {
		if (!isAdmin(session)) {
			return "unauthorized";
		}
		model.addAttribute("product", productService.getProductById(id));
		return "product/edit_product";
	}

	@PostMapping("/products/update")
	public String updateProduct(@ModelAttribute("product") Product product, HttpSession session) {
		if (!isAdmin(session)) {
			return "unauthorized";
		}
		productService.saveProduct(product);
		return "redirect:/products";
	}

	@GetMapping("/products/delete/{id}")
	public String deleteProduct(@PathVariable Long id, HttpSession session) {
		if (!isAdmin(session)) {
			return "unauthorized";
		}
		productService.deleteProduct(id);
		return "redirect:/products";
	}
}