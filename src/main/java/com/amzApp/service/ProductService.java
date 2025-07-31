package com.amzApp.service;

import com.amzApp.entity.Product;
import com.amzApp.repository.ProductRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {

	final ProductRepository productRepo;

	ProductService(ProductRepository productRepo) {
		this.productRepo = productRepo;
	}

	public void saveProduct(Product product) {
		productRepo.save(product);
	}

	public List<Product> getAllProducts() {
		return productRepo.findAll();
	}

	public Product getProductById(Long id) {
		return productRepo.findById(id).orElse(null);
	}

	public void deleteProduct(Long id) {
		productRepo.deleteById(id);
	}

	public void addProduct(Product product) {
		productRepo.save(product);
	}

	public void updateProduct(Product product) {
		productRepo.save(product);
	}

}