<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Details</title>
<style type="text/css">
table {
	border-collapse: collapse;
	border: 1px solid black;
	text-align: left;
	vertical-align: middle;
}

th, td {
	padding: 8px;
}

thead {
	background-color: #333;
	color: white;
}

thead th {
	width: 25%;
}

tbody tr:nth-child(odd) {
	background-color: #fff;
}

tbody tr:nth-child(even) {
	background-color: #eee;
}
</style>
</head>
<body>
	<h1>Customer Relationship Management</h1>
	<p>
		<a href="/Customer/student/register" class="btn">Add Customer</a>
	</p>
	<table>
		<thead>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${registeredStudents}" var="student">
				<tr>
					<td>${student.name}</td>
					<td>${student.department}</td>
					<td>${student.country}</td>
					<td>
							<!-- Add "update" button/link --> 
							<a href="update?id=${student.id}" class="btn btn-info btn-sm"> Update | </a> 
							
							<!-- Add "delete" button/link -->
							<a href="delete?id=${student.id}" class="btn btn-danger btn-sm" onclick="if (!(confirm('Are you sure you want to delete?'))) return false"> Delete </a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<p>
		<a href="./..">Back to Home</a>
	</p>
</body>
</html>