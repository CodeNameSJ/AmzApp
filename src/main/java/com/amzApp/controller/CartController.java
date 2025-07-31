package com.amzApp.controller;

import com.amzApp.entity.Cart;
import com.amzApp.service.CartService;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/cart")
public class CartController {

	private final CartService cartService;

	public CartController(CartService cartService) {
		this.cartService = cartService;
	}

	// Add product to cart
	@GetMapping("/add/{productId}")
	public String addToCart(@PathVariable Long productId, HttpSession session) {
		String userEmail = (String) session.getAttribute("email");

		if (userEmail == null) {
			return "redirect:/login";
		}

		cartService.addToCart(productId, userEmail);
		return "redirect:/cart/view";
	}

	@GetMapping("/view")
	public String viewCart(Model model, HttpSession session) {
		String userEmail = (String) session.getAttribute("email");

		if (userEmail == null) {
			return "redirect:/login";
		}

		List<Cart> cartItems = cartService.getCartByUser(userEmail);
		model.addAttribute("cartItems", cartItems);

		double total = cartItems.stream().mapToDouble(item -> item.getProduct().getPrice() * item.getQuantity()).sum();
		model.addAttribute("total", total);

		return "cart/view_cart";
	}

	@GetMapping("/remove/{id}")
	public String removeItem(@PathVariable Long id) {
		cartService.removeItem(id);
		return "redirect:/cart/view";
	}

	@GetMapping("/checkout")
	public String checkout(HttpSession session, Model model) {
		String userEmail = (String) session.getAttribute("email");

		if (userEmail == null) {
			return "redirect:/login";
		}

		List<Cart> cartItems = cartService.getCartByUser(userEmail);
		model.addAttribute("cartItems", cartItems);

		double total = cartItems.stream().mapToDouble(item -> item.getProduct().getPrice() * item.getQuantity()).sum();

		model.addAttribute("total", total);
		return "cart/final_bill";
	}

	@PostMapping("/confirm")
	public String confirmOrder(HttpSession session) {
		String userEmail = (String) session.getAttribute("email");

		if (userEmail == null) {
			return "redirect:/login";
		}

		// TODO: Save order details (handled in Order module)
		cartService.clearCart(userEmail);

		return "redirect:/order/confirmation";
	}
}