<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
	<title>Login</title>
	<link rel="stylesheet" href="../../resources/css/styles.css"/>
</head>
<body>
<header class="header">
	<div class="logo">My Shop</div>
</header>

<div style="max-width:400px;margin:40px auto;background:#fff;padding:30px;border-radius:12px;box-shadow:0 4px 12px rgba(0,0,0,0.05);">
	<h2>Login</h2>
	<form:form method="POST" modelAttribute="user">
		<label>Email:</label><br/>
		<form:input path="email"/><br/><br/>
		<label>Password:</label><br/>
		<form:password path="password"/><br/><br/>
		<button class="btn-primary" type="submit">Login</button>
	</form:form>
	<c:if test="${not empty message}"><p style="color:red;">${message}</p></c:if>
</div>

<footer class="footer">
	&copy; 2025 My Shop
</footer>
</body>
</html>
