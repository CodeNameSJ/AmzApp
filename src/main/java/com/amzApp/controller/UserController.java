package com.amzApp.controller;

import com.amzApp.dto.UserDTO;
import com.amzApp.service.UserService;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserController {

	final UserService userService;

	UserController(UserService userService) {
		this.userService = userService;
	}

	@GetMapping("/signup")
	public String showSignupPage(Model model) {
		model.addAttribute("user", new UserDTO());
		return "signup";
	}

	@PostMapping("/signup")
	public String processSignup(@ModelAttribute("user") UserDTO userDto, Model model) {
		String result = userService.registerUser(userDto);
		model.addAttribute("message", result);
		return "signup";
	}

	@GetMapping("/login")
	public String showLoginPage(Model model) {
		model.addAttribute("user", new UserDTO());
		return "login";
	}

	@PostMapping("/login")
	public String processLogin(@ModelAttribute("user") UserDTO userDto, Model model, HttpSession session) {

		String result = userService.loginUser(userDto);

		if (result.equals("Login Successful!")) {
			session.setAttribute("email", userDto.getEmail());
			return "redirect:/home";
		}

		model.addAttribute("message", result);
		return "login";
	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login";
	}

}