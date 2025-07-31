package com.amzApp.controller;

import com.amzApp.entity.Product;
import com.amzApp.service.ProductService;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/products")
public class ProductController {

	private final ProductService productService;

	public ProductController(ProductService productService) {
		this.productService = productService;
	}

	private boolean isAdmin(HttpSession session) {
		String role = (String) session.getAttribute("role");
		return role != null && role.equals("ADMIN");
	}

	@GetMapping
	public String viewAllProducts(Model model) {
		model.addAttribute("products", productService.getAllProducts());
		return "products";  // This is for normal users
	}

	@GetMapping("/admin")
	public String viewAllProductsAdmin(Model model, HttpSession session) {
		if (!isAdmin(session)) return "unauthorized";
		model.addAttribute("products", productService.getAllProducts());
		return "products_admin";  // Admin-only view
	}

	@GetMapping("/admin/add")
	public String addProductForm(Model model, HttpSession session) {
		if (!isAdmin(session)) return "unauthorized";
		model.addAttribute("product", new Product());
		return "product/add_product";
	}

	@PostMapping("/admin/add")
	public String addProduct(@ModelAttribute("product") Product product, HttpSession session) {
		if (!isAdmin(session)) return "unauthorized";
		productService.saveProduct(product);
		return "redirect:/products/admin";
	}

	@GetMapping("/admin/edit/{id}")
	public String editProductForm(@PathVariable Long id, Model model, HttpSession session) {
		if (!isAdmin(session)) return "unauthorized";
		model.addAttribute("product", productService.getProductById(id));
		return "product/edit_product";
	}

	@PostMapping("/admin/edit")
	public String updateProduct(@ModelAttribute("product") Product product, HttpSession session) {
		if (!isAdmin(session)) return "unauthorized";
		productService.saveProduct(product);
		return "redirect:/products/admin";
	}

	@GetMapping("/admin/delete/{id}")
	public String deleteProduct(@PathVariable Long id, HttpSession session) {
		if (!isAdmin(session)) return "unauthorized";
		productService.deleteProduct(id);
		return "redirect:/products/admin";
	}
}
