<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head><title>Home</title></head>
<body>

<%
	String email = (String) session.getAttribute("email");
	//noinspection IfStatementWithIdenticalBranches
	if (email != null) {
%>
<h2>Welcome, <%= email %>!</h2>
<a href="${pageContext.request.contextPath}/logout">Logout</a>
<%
} else {
%>
<h2>You are not logged in!</h2>
<a href="${pageContext.request.contextPath}/login">Login</a>
<%
	}
%>

</body>
</html>
