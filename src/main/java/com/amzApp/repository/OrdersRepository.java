package com.amzApp.repository;

import com.amzApp.entity.Orders;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface OrdersRepository extends JpaRepository<Orders, Long> {
	List<Orders> findByUserEmail(String email);
}