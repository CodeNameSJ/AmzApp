package com.amzApp.controller;

import com.amzApp.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@PostMapping("/sign-in")
	@ResponseBody
	public String login(@ModelAttribute("user") User user) {
		return "Login Success";
	}
}