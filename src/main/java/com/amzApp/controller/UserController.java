package com.amzApp.controller;

import com.amzApp.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserController {
	@PostMapping("/sign-in")
	@ResponseBody
	public String login(@ModelAttribute("user") User user) {
		return "Login Success";
	}
}