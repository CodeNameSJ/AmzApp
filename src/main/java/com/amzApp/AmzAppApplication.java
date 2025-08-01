package com.amzApp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com")
public class AmzAppApplication {
	public static void main(String[] args) {
		SpringApplication.run(AmzAppApplication.class, args);
	}
}
