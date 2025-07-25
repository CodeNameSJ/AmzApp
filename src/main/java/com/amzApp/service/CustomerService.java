package com.amzApp.service;

import com.amzApp.dto.CustomerDTO;
import com.amzApp.entity.Customer;
import com.amzApp.repository.CustomerRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class CustomerService {
	final CustomerRepository customerRepository;

	public CustomerService(CustomerRepository customerRepository) {
		this.customerRepository = customerRepository;
	}

	@Transactional
	public CustomerDTO insert(Customer customer) {
		customerRepository.save(customer);
		CustomerDTO customerDTO = new CustomerDTO();

		customerDTO.setFullName(customer.getFullName());
		customerDTO.setEmail(customer.getEmail());
		return customerDTO;
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