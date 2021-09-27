package com.hr.management.system.model;



public class Employee {

	public long employeeCode;
	public String employeeName;
	public String location;
	public String email;
	public String dob;
	

	public long getEmployeeCode() {
		return employeeCode;
	}
	public void setEmployeeCode(long employeeCode) {
		this.employeeCode = employeeCode;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public String getName() {
		return employeeName;
	}
	public void setName(String name) {
		this.employeeName = name;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	
	
	
}
