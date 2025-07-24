package com.amzApp.dto;

import com.amzApp.entity.Customer;
import com.amzApp.entity.User;

public class VerifyLoginDTO {
	UserDTO userDTO = new UserDTO();
	CustomerDTO customerDTO = new CustomerDTO();
	
	Boolean isValid = new User().getPassword().equals(new Customer().getPassword());
}
