package com.amzApp.controller;

import com.amzApp.entity.Orders;
import com.amzApp.service.OrdersService;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/order")
public class OrdersController {

	private final OrdersService ordersService;

	public OrdersController(OrdersService orderService) {
		this.ordersService = orderService;
	}

	// For normal user: confirm and place order
	@PostMapping("/confirm")
	public String confirmOrder(HttpSession session, Model model) {
		String email = (String) session.getAttribute("email");
		if (email == null) return "redirect:/login";

		Orders order = ordersService.placeOrder(email);
		model.addAttribute("order", order);
		return "order/order_summary"; // JSP page
	}

	// For user: view past orders
	@GetMapping("/my")
	public String myOrders(HttpSession session, Model model) {
		String email = (String) session.getAttribute("email");
		if (email == null) return "redirect:/login";

		List<Orders> orders = ordersService.getOrdersByUser(email);
		model.addAttribute("orders", orders);
		return "order/user_orders"; // JSP page
	}

	// Admin only: view all orders
	@GetMapping("/all")
	public String viewAllOrders(HttpSession session, Model model) {
		String role = (String) session.getAttribute("role");
		if (role == null || !role.equals("ADMIN")) {
			return "unauthorized";
		}

		List<Orders> orders = ordersService.getAllOrders();
		model.addAttribute("orders", orders);
		return "order/all_orders"; // JSP page
	}

	// Admin only: update order status
	@PostMapping("/updateStatus")
	public String updateStatus(@RequestParam Long orderId, @RequestParam String status, HttpSession session) {
		String role = (String) session.getAttribute("role");
		if (role == null || !role.equals("ADMIN")) {
			return "unauthorized";
		}

		ordersService.updateOrderStatus(orderId, status);
		return "redirect:/order/all";
	}
}
