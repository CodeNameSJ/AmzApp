<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>AMZ | Sign Up</title>
	<%@ include file="common/header.jsp" %>
	<link rel="stylesheet" href="../../resources/css/styles.css">
</head>
<body>
<main>
	<h2>Sign Up</h2>

	<%--    <label for="name" class="label">Name</label>--%>
	<%--    <input type="text" name="name" id="name"/></span>--%>
	<%--    <label for="email" class="label">Email</label>--%>
	<%--    <input type="email" name="email" id="email"/></span>--%>
	<%--    <label for="password" class="label">Password</label>--%>
	<%--    <input type="password" name="password" id="password"/></span>--%>
	<%--		<span class="span"><a href="#">Forgot password?</a></span>--%>
	<%--		<input class="submit" type="submit" value="Sign Up"/>--%>
	<%--		<span class="span">Already have an account?<a--%>
	<%--				href="${pageContext.request.contextPath}/login">Login</a></span>--%>
	<form:form method="POST" action="/signup" modelAttribute="user">

	<span class="input-span">
			<label for="name" class="label">Name</label>
			<br>
			<form:input path="name" id="name"/>
	</span>
		<br>
		<span class="input-span">
			<label for="email" class="label">Email</label>
			<br>
			<form:input path="email" id="email"/>
	</span>
		<br>
		<span class="input-span">
			<label for="password" class="label">Password</label>
			<br>
			<form:password path="password" id="password" class="password" name="password"/>
		</span>
		<br>
		<span class="span"><a href="#">Forgot password?</a></span>
		<br>
		<input class="submit" type="submit" value="Sign Up"/>
		<br>
		<span class="span">
        Already have an account?
        <a href="${pageContext.request.contextPath}/login">Login</a>
    </span>

	</form:form>

	<c:if test="${not empty message}">
		<p style="color: #58bc82">${message}</p>
	</c:if>
</main>

<%@ include file="common/footer.jsp" %>
</body>
</html>