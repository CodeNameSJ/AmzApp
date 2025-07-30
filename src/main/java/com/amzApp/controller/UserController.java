package com.amzApp.controller;

import com.amzApp.dto.UserDTO;
import com.amzApp.entity.User;
import com.amzApp.service.UserService;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Optional;

@Controller
public class UserController {

	final UserService userService;

	UserController(UserService userService) {
		this.userService = userService;
	}

	private boolean isAdmin(HttpSession session) {
		String role = (String) session.getAttribute("role");
		return role != null && role.equals("ADMIN");
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

		Optional<User> userByEmail = userService.getUserByEmail(userDto.getEmail());

		if (result.equals("Login Successful!")) {
			session.setAttribute("email", userByEmail.get().getName());
			session.setAttribute("role", userByEmail.get().getRole().name());

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