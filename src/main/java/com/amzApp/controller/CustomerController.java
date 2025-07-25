package com.amzApp.controller;

import com.amzApp.entity.Customer;
import com.amzApp.service.CustomerService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CustomerController {
	private final CustomerService customerService;
	
	public CustomerController(CustomerService customerService) {
		this.customerService = customerService;
	}
	
	@PostMapping("/register")
	@ResponseBody
	public String signup(@ModelAttribute Customer customer) {
		System.out.println(customerService.insert(customer));
		return "Signed Up Successfully!";
	}
}