package com.amzApp.service;

import com.amzApp.dto.UserDTO;
import com.amzApp.repository.UserRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserService {
	final UserRepository userRepository;

	UserService(UserRepository userRepository) {
		this.userRepository = userRepository;
	}

	@Transactional
	public String registerUser(UserDTO userDto) {
		userRepository.save(userDto);
		return "";
	}

	boolean authenticate(String email, String password) {

		return true;
	}

	public String findByName(String name) {
		return "";
	}

	public String findByEmail(String email) {

		return "";
	}

	public String findByPhone(String phone) {
		return "";
	}

	@Transactional
	public void deleteByName(String name) {

	}

	public void updateByName(String name, String email, String phone) {

	}
}