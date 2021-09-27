package com.hr.management.system.service;

import java.util.List;

import org.springframework.data.domain.Page;

import com.hr.management.system.model.Employee;

public interface EmployeeService {
	List<Employee> getAllEmployees();

	void saveEmployee(Employee employee);


	
}
