package com.amzApp.dto;

public class UserDTO {
	String userName;
	String password;
	String confirmPassword;

<<<<<<< Updated upstream
	public String getUserName() {
		return userName;
=======
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
>>>>>>> Stashed changes
	}
}