package com.amzApp.controller;

import com.amzApp.entity.User;
import com.amzApp.service.UserService;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/admin/users")
public class CustomersController {


	private final UserService userService;

	CustomersController(UserService userService) {
		this.userService = userService;
	}

	@GetMapping("/edit/{id}")
	public String editUserForm(@PathVariable Long id, Model model, HttpSession session) {
		if (!"ADMIN".equals(session.getAttribute("role"))) return "unauthorized";

		User user = userService.getUserById(id);
		model.addAttribute("user", user);
		return "admin/users/edit_user";
	}

	@PostMapping("/update")
	public String updateUser(@ModelAttribute("user") User user, HttpSession session) {
		if (!"ADMIN".equals(session.getAttribute("role"))) return "unauthorized";

		userService.updateUser(user);
		return "redirect:/admin/users";
	}

	@GetMapping("/customers")
	public String viewAllUsers(Model model, HttpSession session) {
		if (!"ADMIN".equals(session.getAttribute("role"))) {
			return "unauthorized";
		}

		model.addAttribute("users", userService.getAllUsers());
		return "admin/users/customers";
	}

	@GetMapping("/delete/{id}")
	public String deleteUser(@PathVariable Long id, HttpSession session) {
		if (!"ADMIN".equals(session.getAttribute("role"))) {
			return "unauthorized";
		}

		userService.deleteUserById(id);
		return "redirect:/admin/users";
	}


}
