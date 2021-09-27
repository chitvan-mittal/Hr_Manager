<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Login Page</title>
<style>
#container {
	position: fixed;
	top: 50%;
	left: 50%;
	width: 30em;
	height: 18em;
	margin-top: -9em; /*set to a negative number 1/2 of your height*/
	margin-left: -15em;
}

input[type=submit] {
	float: right;
	margin-right: 20px;
	margin-top: 9px;
	font-size: 14px;
	font-weight: bold;
	color: black;
	background-color: WhiteSmoke;
	box-shadow: 0 1px 2px rgba(0, 0, 0, .3), inset 0 1px 0
		rgba(255, 255, 255, .5);
	cursor: pointer;
}

#upper {
	color: navy;
	width: 100%;
	height: 40px;
	background-color: #90C8D2;
	box-shadow: 0 1px 2px rgba(0, 0, 0, .3), inset 0 1px 0
		rgba(255, 255, 255, .5);
}

#logHead {
	text-align: center;
	padding: 5px 0 0 0;
}

#medium {
	padding: 10px 0 0 0;
	background-color: rgba(198, 220, 224, 1);
}

#info {
	padding: 10px 0 0 10px;
}

#mandate1 {
	position: relative;
	left: 35px;
	color: red;
}

#mandate2 {
	position: relative;
	left: 42px;
	color: red;
}

#userInput1 {
	position: relative;
	left: 40px;
}

#userInput2 {
	position: relative;
	left: 47px;
}

#lower {
	background-color: #90C8D2;
	width: 100%;
	height: 40px;
	margin-top: 20px;
}
</style>
</head>

<body>
	<div id="container">
		<div id="upper">
			<h2 id="logHead">Login</h2>
		</div>
		<form id="medium" action="login">
			<div id="info">
				User Name:<label id="mandate1">*</label><input id="userInput1"
					type="text" name="username" required /> <br>
				<br> Password: <label id="mandate2">*</label><input
					id="userInput2" type="password" name="password" required /> <br>
				<br> <span style="color: red; position: relative; left: 47px;">
			</div>
			<div id="lower">
				<input type="submit" value="login >>" />
			</div>
		</form>
	</div>



</body>
</html>
