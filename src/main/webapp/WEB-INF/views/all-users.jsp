<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" errorPage="error.jsp"
         import="org.practice.entity.User"
         import="java.util.List"
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Title</title>
</head>
<body>
<%
	List<User> users = (List<User>) request.getAttribute("users");
	request.setAttribute("users", users);
%>

<form>
	<table cellpadding="6" cellspacing="3" border="3" bgcolor="aquamarine" bordercolor>
		<tr>
			<th>UserName</th>
			<th>Password</th>
		</tr>
		<c:forEach var="user" items="${users}">
			<tr>
				<td>${user.userName}</td>
				<td>${user.password}</td>
			</tr>
		</c:forEach>
	</table>
</form>
</body>
</html>