package com.amzApp.service;

import com.amzApp.entity.Cart;
import com.amzApp.entity.Product;
import com.amzApp.repository.CartRepository;
import com.amzApp.repository.ProductRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CartService {
	private final CartRepository cartRepository;
	private final ProductRepository productRepository;

	public CartService(CartRepository cartRepository, ProductRepository productRepository) {
		this.cartRepository = cartRepository;
		this.productRepository = productRepository;
	}

	public void addToCart(Long productId, String userEmail) {
		Optional<Product> productOpt = productRepository.findById(productId);
		if (productOpt.isEmpty()) return;

		Product product = productOpt.get();

		List<Cart> existing = cartRepository.findByUserEmail(userEmail);
		for (Cart item : existing) {
			if (item.getProduct().getId().equals(productId)) {
				item.setQuantity(item.getQuantity() + 1);
				cartRepository.save(item);
				return;
			}
		}

		Cart cart = new Cart(product, userEmail, 1);
		cartRepository.save(cart);
	}

	public List<Cart> getCartByUser(String userEmail) {
		return cartRepository.findByUserEmail(userEmail);
	}

	public void removeItem(Long id) {
		cartRepository.deleteById(id);
	}

	public void clearCart(String userEmail) {
		cartRepository.deleteByUserEmail(userEmail);
	}
}