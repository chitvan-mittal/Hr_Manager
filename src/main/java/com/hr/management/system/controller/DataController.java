package com.hr.management.system.controller;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.internal.build.AllowSysOut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.hr.management.system.constants.UsedConstants;
import com.hr.management.system.model.Employee;
import com.hr.management.system.model.HrLogin;
import com.hr.management.system.service.EmployeeService;

@Controller
public class DataController {

	@Autowired
	private RestTemplate restTemplate;



	@Autowired
	private EmployeeService service;

	@Autowired
	private ObjectMapper mapper;

	@RequestMapping("/")
	public String loginPage() {

		return "login.jsp";
	}

	@RequestMapping("/login")
	public String indexPage(HttpServletRequest req, Model model) {

		String username = req.getParameter(UsedConstants.GET_USERNAME);
		String password = req.getParameter(UsedConstants.GET_PASSWORD);

//		List<HrLogin> login = hlr.findAll();
		ResponseEntity<Object[]> responseEntity = restTemplate.getForEntity("http://localhost:8083/user",
				Object[].class);
		Object[] objects = responseEntity.getBody();
		List<HrLogin> login = Arrays.stream(objects).map(object -> mapper.convertValue(object, HrLogin.class))
				.collect(Collectors.toList());
		for (HrLogin data : login) {
			if (data.getUsername().equals(username) && data.getPassword().equals(password)) {

				model.addAttribute(UsedConstants.GET_USER,username);
				model.addAttribute(UsedConstants.GET_LIST_EMPLOYEE, service.getAllEmployees());
				return "employee.jsp";
			}
		}
		return "login.jsp";
	}

	@GetMapping("/showNewEmployeeForm")
	public String showNewEmployeeForm(Model model) {
		// create model attribute to bind form data
		return "addEmployee.jsp";
	}

	@PostMapping("/saveEmployee")
	public String saveEmployee(@ModelAttribute("employee") Employee employee, Model model) {
		// save employee to database
		
		service.saveEmployee(employee);
		model.addAttribute(UsedConstants.GET_LIST_EMPLOYEE, service.getAllEmployees());
		return "employee.jsp";
	}

	@GetMapping("/updatedForm")
	public String showFormForUpdate(@RequestParam(value = "id") long id, Model model) {

		ResponseEntity<Employee> rsp = restTemplate.getForEntity("http://localhost:8083/employee/" + id,
				Employee.class);
		if (rsp.getStatusCodeValue() == 200) {
			Employee employee = rsp.getBody();
			// set employee as a model attribute to pre-populate the form
			model.addAttribute(UsedConstants.GET_EMPLOYEE, employee);
			return "updateEmployee.jsp";
		}

		return "updateEmployee.jsp";

	}
	
	@GetMapping("/getEmployee")
	public String getEmployee(Model model) {
		model.addAttribute(UsedConstants.GET_LIST_EMPLOYEE, service.getAllEmployees());
		return "employee.jsp";
	}
	
}
