package com.amzApp.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import org.springframework.stereotype.Component;

@Component
@Entity
public class Orders {
	@Id
	private Long oid;
	private String prod;

	public String getProd() {
		return prod;
	}

	public void setProd(String prod) {
		this.prod = prod;
	}

	public void setId(Long oid) {
		this.oid = oid;
	}

	public Long getId() {
		return oid;
	}
}
