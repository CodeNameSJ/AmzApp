<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>AMZ | Sign Up</title>
	<%@ include file="common/header.jsp" %>
</head>
<body>
<main>
	<h2>Sign Up</h2>
	<form:form class="form" action="${pageContext.request.contextPath}/signup" method="post">
		Name: <form:input path="name"/><br/>
		Email: <form:input path="email"/><br/>
		Password: <form:password path="password"/><br/>
		<input type="submit" value="Register"/>


		<%--		<span class="input-span">--%>
		<%--    <label for="name" class="label">Name</label>--%>
		<%--    <input type="text" name="name" id="name"/></span>--%>
		<%--		<span class="input-span">--%>
		<%--    <label for="email" class="label">Email</label>--%>
		<%--    <input type="email" name="email" id="email"/></span>--%>
		<%--		<span class="input-span">--%>
		<%--    <label for="password" class="label">Password</label>--%>
		<%--    <input type="password" name="password" id="password"/></span>--%>
		<%--		<span class="span"><a href="#">Forgot password?</a></span>--%>
		<%--		<input class="submit" type="submit" value="Sign Up"/>--%>
		<%--		<span class="span">Already have an account?<a--%>
		<%--				href="${pageContext.request.contextPath}/login">Login</a></span>--%>
	</form:form>
	<c:if test="${not empty message}">
		<p>${message}</p>
	</c:if>
</main>

<%@ include file="common/footer.jsp" %>
</body>
</html>