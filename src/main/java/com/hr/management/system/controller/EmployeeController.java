//package com.hr.management.system.controller;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.PostMapping;
//
//import com.hr.management.system.model.Employee;
//import com.hr.management.system.service.EmployeeService;
//
//@Controller
//public class EmployeeController {
//
//	@Autowired
//	private EmployeeService service;
//
//	// display list of employees
//	public String viewAllEmployee(Model model) {
//		model.addAttribute("listEmployee", service.getAllEmployees());
//		return "employee";
//	}
//
//	@GetMapping("/showNewEmployeeForm")
//	public String showNewEmployeeForm(Model model) {
//		// create model attribute to bind form data
//		Employee employee = new Employee();
//		model.addAttribute("employee", employee);
//		return "new_employee";
//	}
//
//	@PostMapping("/saveEmployee")
//	public String saveEmployee(@ModelAttribute("employee") Employee employee) {
//		// save employee to database
//		service.saveEmployee(employee);
//		return "redirect:/";
//	}
//
//	@GetMapping("/showFormForUpdate/{id}")
//	public String showFormForUpdate(@PathVariable(value = "id") long id, Model model) {
//
//		// get employee from the service
//		Employee employee = service.getEmployeeById(id);
//
//		// set employee as a model attribute to pre-populate the form
//		model.addAttribute("employee", employee);
//		return "update_employee";
//	}
//
//}
