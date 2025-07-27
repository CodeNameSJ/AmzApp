package com.amzApp.controller;

<<<<<<< Updated upstream
import com.amzApp.entity.User;
import org.springframework.stereotype.Controller;
=======
import com.amzApp.dto.UserDTO;
import com.amzApp.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
>>>>>>> Stashed changes
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserController {
<<<<<<< Updated upstream
	@PostMapping("/sign-in")
	@ResponseBody
	public String login(@ModelAttribute("user") User user) {
		return "Login Success";
	}

	@GetMapping("/validate")
	@ResponseBody
	public String validate(@ModelAttribute("user") User user) {
		return "Validate Success";
=======

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
	public String processLogin(@ModelAttribute("user") UserDTO userDto, Model model) {
		String result = userService.loginUser(userDto);
		model.addAttribute("message", result);
		return "login";
>>>>>>> Stashed changes
	}
}