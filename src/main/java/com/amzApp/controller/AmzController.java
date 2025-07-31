package com.amzApp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AmzController {

<<<<<<< Updated upstream
	@GetMapping({"/home", "/"})
	public String home() {
		return "index";
	}

	@GetMapping("/products")
	public String products() {
		return "products";
=======

	@GetMapping({"/", "/home"})
	public String showHomePage() {
		return "home";
>>>>>>> Stashed changes
	}
	
}