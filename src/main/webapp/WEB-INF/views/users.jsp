<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         import="com.amzApp.entity.User"
%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Title</title>
</head>
<body>
<%
	User user = (User) request.getAttribute("user");
	request.setAttribute("user", user);
%>

<form>
	<label for="email">Email:</label>
	<br><input type="text" id="email" name="email" value="${user.email}">

	<br><br>

	<label for="password">Password:</label>
	<br>
	<input type="password" id="password" name="password" value="${user.password}">
</form>
</body>
</html>