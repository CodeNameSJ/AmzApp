package com.amzApp.controller;

import com.amzApp.entity.Customer;
import com.amzApp.entity.User;
import com.amzApp.service.CustomerService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CustomerController {
	private final CustomerService customerService;
	
	public CustomerController(CustomerService customerService) {
		this.customerService = customerService;
	}
	
	@GetMapping("/user/signup")
	public String signup() {
		return "signup";
	}
	
	@PostMapping("/user/register")
	@ResponseBody
	public String signup(@ModelAttribute Customer customer) {
		System.out.println(customerService.insert(customer));
		return "Signed Up Successfully!";
	}
	
	@PostMapping("/verify-login")
	public String insertUser(@ModelAttribute User user) {
		System.err.println(user);
		return "redirect";
	}
}