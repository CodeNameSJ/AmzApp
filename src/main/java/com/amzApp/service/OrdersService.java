package com.amzApp.service;

import com.amzApp.entity.Cart;
import com.amzApp.entity.Orders;
import com.amzApp.repository.CartRepository;
import com.amzApp.repository.OrdersRepository;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;

@Service
public class OrdersService {

	private final OrdersRepository ordersRepository;
	private final CartRepository cartRepository;

	public OrdersService(OrdersRepository ordersRepository, CartRepository cartRepository) {
		this.ordersRepository = ordersRepository;
		this.cartRepository = cartRepository;
	}

	public Orders placeOrder(String email) {
		List<Cart> cartItems = cartRepository.findByUserEmail(email);

		double total = cartItems.stream().mapToDouble(item -> item.getProduct().getPrice() * item.getQuantity()).sum();

		Orders orders = new Orders();
		orders.setUserEmail(email);
		orders.setOrderTime(LocalDateTime.now());
		orders.setTotalAmount(total);
		orders.setStatus("PLACED");

		Orders savedOrder = ordersRepository.save(orders);
		cartRepository.deleteAll(cartItems); // Clear cart after placing orders

		return savedOrder;
	}

	public List<Orders> getOrdersByUser(String email) {
		return ordersRepository.findByUserEmail(email);
	}

	public List<Orders> getAllOrders() {
		return ordersRepository.findAll();
	}

	public void updateOrderStatus(Long orderId, String status) {
		Orders orders = ordersRepository.findById(orderId).orElse(null);
		if (orders != null) {
			orders.setStatus(status);
			ordersRepository.save(orders);
		}
	}
}