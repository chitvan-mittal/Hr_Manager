
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page
	import="java.util.List, com.hr.management.system.model.Employee"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">
<title>Employee listings</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
</head>
<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#" th:href="@{/}">Employee
					Management System</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li><a href="/">Logout</a></li>
					<li><a href="/">Welcome , ${user}</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<br>
	<br>

	<div class="container my-2">
		<h3>Employees List</h3>

		<div align="right">
			<a href="showNewEmployeeForm" class="btn btn-primary btn-sm mb-3">
				Add Employee </a>
		</div>
		<br>
		<table
			class="table table-bordered table-striped table-hover table-responsive-md">
			<thead class="thead-dark">
				<tr>
					<th>Employee Code</th>
					<th>Employee Name</th>
					<th>Location</th>
					<th>Email</th>
					<th>Date of Birth</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>

				<c:forEach items="${listEmployee}" var="employee">
					<tr>
						<td><c:out value="${employee.employeeCode}"></c:out></td>
						<td><c:out value="${employee.employeeName}"></c:out></td>
						<td><c:out value="${employee.location}"></c:out></td>
						<td><c:out value="${employee.email }"></c:out></td>
						<td><c:out value="${employee.dob }"></c:out></td>

						<td><a href="updatedForm?id=${employee.employeeCode}"
							class="btn btn-primary">Update</a>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>