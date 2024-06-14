package com.hello.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@EnableJpaRepositories
@SpringBootApplication
public class HelloDayApplication {

	public static void main(String[] args) {
		SpringApplication.run(HelloDayApplication.class, args);
	}

}
