<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head><title>Home</title></head>
<body>

<%
	String userEmail = (String) session.getAttribute("userEmail");
	if (userEmail != null) {
%>
<h2>Welcome, <%= userEmail %>!</h2>
<a href="/logout">Logout</a>
<%
} else {
%>
<h2>You are not logged in!</h2>
<a href="/login">Login</a>
<%
	}
%>

</body>
</html>
