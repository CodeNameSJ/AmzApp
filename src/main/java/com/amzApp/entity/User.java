package com.amzApp.entity;

import org.springframework.stereotype.Component;

@Component
public class User {
<<<<<<< Updated upstream
=======
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private String name;
>>>>>>> Stashed changes

	private String email;
	private String password;

	public User() {

	}

	public User(String email, String password) {
		this.email = email;
		this.password = password;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {}

	@Override
	public String toString() {
		return "UserRepository{" + "email='" + email + '\'' + ", password='" + password + '\'' + '}';
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
