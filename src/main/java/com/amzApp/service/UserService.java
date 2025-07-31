package com.amzApp.service;

import com.amzApp.dto.UserDTO;
import com.amzApp.entity.Role;
import com.amzApp.entity.User;
import com.amzApp.repository.UserRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class UserService {
	final UserRepository userRepository;

	UserService(UserRepository userRepository) {
		this.userRepository = userRepository;
	}

	public String registerUser(UserDTO userDto) {
		Optional<User> existing = userRepository.findByEmail(userDto.getEmail());
		if (existing.isPresent()) {
			return "Email already registered!";
		}

		User user = new User();
		user.setName(userDto.getName());
		user.setEmail(userDto.getEmail());
		user.setPassword(userDto.getPassword());
		user.setRole(Role.CUSTOMER);

		userRepository.save(user);
		return "Registered Successfully!";
	}

	public String loginUser(UserDTO userDto) {
		Optional<User> userOpt = userRepository.findByEmail(userDto.getEmail());
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
		return userRepository.findByEmail(email);
	}

	public List<User> getAllUsers() {
		return userRepository.findAll();
	}

	public void deleteUserById(Long id) {
		userRepository.deleteById(id);
	}

	public User getUserById(Long id) {
		return userRepository.findById(id).orElseThrow(() -> new RuntimeException("User not found"));
	}

	public void updateUser(User user) {
		userRepository.save(user); // assumes ID is present, so it updates
	}

}