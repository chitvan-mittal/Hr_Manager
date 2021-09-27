package com.hr.management.system;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.databind.ObjectMapper;

@SpringBootApplication
public class HrManagementSystemApplication {

	 @Bean
	    public RestTemplate getRestTemplate() {
	        return new RestTemplate();
	    }
	 
	  @Bean
	    public ObjectMapper getObjectMapper() {
	        return new ObjectMapper();
	    }
	public static void main(String[] args) {
		SpringApplication.run(HrManagementSystemApplication.class, args);
	}

}
