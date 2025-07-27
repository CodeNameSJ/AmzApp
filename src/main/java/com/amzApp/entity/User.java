package com.amzApp.entity;

import jakarta.persistence.*;
import org.springframework.stereotype.Component;

@Component
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private String fullName;

	@Column(unique = true, nullable = false)
	private String email;
	private String password;


	@Enumerated(EnumType.STRING)
	private Role role;

	public User() {

	}

	public User(String email, String password) {
	}

	@Override
	public String toString() {
		return "UserRepository{" + "email='" + email + '\'' + ", password='" + password + '\'' + '}';
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
	}


	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
	}
}
