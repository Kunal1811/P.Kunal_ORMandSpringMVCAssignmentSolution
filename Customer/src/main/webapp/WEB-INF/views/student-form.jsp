<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Registration</title>
<style type="text/css">
label {
	display: inline-block;
	width: 80px;
	font-size: 18px;
	margin-right: 20px;
	margin-bottom: 10px;
}
</style>
</head>
<body>
	<h1>Save Customer!</h1>
	<h>Enter the details below.</h2>
	<br>
	<form action="save" method="post">
		<input type="hidden" name="id" value="${student.id}">
		<label for="name">First Name:</label> <input type="text" name="name"
			value="${student.name}"><br> <label for="department">Last Name:</label>
		<input type="text" name="department" value="${student.department}"><br>
		<label for="country">Email:</label> <input type="text"
			name="country" value="${student.country}"><br> <input
			type="submit" value="Submit">
	</form>
	<p>
		<a href="registeredStudents">Back to Customer List</a>
	</p>
</body>
</html>