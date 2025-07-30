package com.amzApp.service;

import com.amzApp.dto.UserDTO;
import com.amzApp.entity.Role;
import com.amzApp.entity.User;
import com.amzApp.repository.UserRepository;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserService {
	final UserRepository userRepo;

	UserService(UserRepository userRepo) {
		this.userRepo = userRepo;
	}

	public String registerUser(UserDTO userDto) {
		Optional<User> existing = userRepo.findByEmail(userDto.getEmail());
		if (existing.isPresent()) {
			return "Email already registered!";
		}

		User user = new User();
		user.setName(userDto.getName());
		user.setEmail(userDto.getEmail());
		user.setPassword(userDto.getPassword());
		user.setRole(Role.CUSTOMER);

		userRepo.save(user);
		return "Registered Successfully!";
	}

	public String loginUser(UserDTO userDto) {
		Optional<User> userOpt = userRepo.findByEmail(userDto.getEmail());
		if (userOpt.isPresent()) {
			User user = userOpt.get();

			if (user.getPassword().equals(userDto.getPassword())) {
				return "Login Successful!";
			} else {
				return "Invalid Password!";
			}
		}
		return "User Not Found!";
	}

	public Optional<User> getUserByEmail(String email) {
		return userRepo.findByEmail(email);
	}
}