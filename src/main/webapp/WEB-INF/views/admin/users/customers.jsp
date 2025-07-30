<%--
  Created by IntelliJ IDEA.
  User: jamad
  Date: 30-07-2025
  Time: 22:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Title</title>
</head>
<body>

<h2>Registered Customers</h2>

<table border="1" cellpadding="8">
	<tr>
		<th>ID</th>
		<th>Full Name</th>
		<th>Email</th>
		<th>Role</th>
		<th>Action</th>
	</tr>
	<c:forEach var="user" items="${users}">
		<tr>
			<td>${user.id}</td>
			<td>${user.name}</td>
			<td>${user.email}</td>
			<td>${user.role}</td>
			<td>
				<a href="${pageContext.request.contextPath}/admin/users/edit/${user.id}">Edit</a> |
				<a href="${pageContext.request.contextPath}/admin/users/delete/${user.id}"
				   onclick="return confirm('Delete user?')">Delete</a>
			</td>
		</tr>
	</c:forEach>
</table>

</body>
</html>
