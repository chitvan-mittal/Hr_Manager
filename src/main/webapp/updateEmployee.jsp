<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.util.List, com.hr.management.system.model.Employee"%>
	<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en" >
<head>
<meta charset="ISO-8859-1">
<title>Add new Employee</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
</head>
<body>


	<div class="container my-2">
		<h1>Employee Management System</h1>
		<hr>
		<h2>Save Employee</h2>
		<br>
			<form 
		 action="saveEmployee"
			method="POST">
			 <input type="text"
				value="${employee.employeeCode}"  placeholder="Employee Code" readonly name="employeeCode"
				class="form-control mb-4 col-4" required> <label>
				Employee Name :-</label> <input type="text" name="employeeName" value="${employee.employeeName}" 
				placeholder="Employee Name" class="form-control mb-4 col-4" required>
			<label> Location :-</label> <input type="text" name="location" value="${employee.location}" 
				placeholder="Location" class="form-control mb-4 col-4" required>
			<label> Email :-</label> <input type="email" name="email" value="${employee.email}" 
				placeholder="Employee Email" class="form-control mb-4 col-4"
				required> <label> Date of Birth :-</label> <input
				type="text" name="dob" placeholder="Employee Date of Birth" value="${employee.dob}" 
				class="form-control mb-4 col-4" required>
			<button type="submit" class="btn btn-info col-2">Save
				Employee</button>
			&nbsp;&nbsp;
			<button type="reset" class="btn btn-info col-2">Cancel</button>
		</form>


		<hr>
		<a href="getEmployee"> Back to Employee List</a> <br> <br> <br>
		<br>
	</div>

</body>
</html>



