package com.amzApp.controller;

import com.amzApp.dto.UserDTO;
import com.amzApp.entity.User;
import com.amzApp.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserController {

	final UserService userService;

	UserController(UserService userService) {
		this.userService = userService;
	}

	@PostMapping("/login")
	@ResponseBody
	public String login(@ModelAttribute("user") User user) {
		return "Login Success";
	}

	@PostMapping("/signup")
	@ResponseBody
	public String signup(@ModelAttribute UserDTO userDTO) {
		System.out.println(userService.registerUser(userDTO));
		return "Signed Up Successfully!";
	}
}