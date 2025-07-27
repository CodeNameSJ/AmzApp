<%@ page contentType="text/html; ISO-8859-1; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Title</title>
	<%@ include file="common/header.jsp" %>
</head>
<body>

<main>
	<h2 class="form">Login</h2>

	<!-- Merged Form -->
	<form:form method="POST" action="/login" modelAttribute="user" class="form">
		<!-- Email Field -->
		<span class="input-span">
        <label for="email" class="label">Email</label>
        <form:input path="email" id="email"/>
    </span>

		<!-- Password Field -->
		<span class="input-span">
        <label for="password" class="label">Password</label>
        <form:password path="password" id="password"/>
    </span>

		<!-- Forgot Password Link -->
		<span class="span"><a href="#">Forgot password?</a></span>

		<!-- Submit Button -->
		<input class="submit" type="submit" value="Log in"/>

		<!-- Sign-up Link -->
		<span class="span">Don't have an account? <a href="${pageContext.request.contextPath}/signup">Sign up</a></span>
	</form:form>

	<!-- Display message if there is any -->
	<c:if test="${not empty message}">
		<p>${message}</p>
	</c:if>

	<%--	--%>
	<%--	<h2 class="form">Login</h2>--%>
	<%--	<form class="form" action="${pageContext.request.contextPath}/login" method="post">--%>
	<%--    <span class="input-span">--%>
	<%--    <label for="email" class="label">Email</label>--%>
	<%--    <input type="email" name="email" id="email"/></span>--%>
	<%--		<span class="input-span">--%>
	<%--    <label for="password" class="label">Password</label>--%>
	<%--    <input type="password" name="password" id="password"/></span>--%>
	<%--		<span class="span"><a href="#">Forgot password?</a></span>--%>
	<%--		<input class="submit" type="submit" value="Log in"/>--%>
	<%--		<span class="span">Don't have an account? <a--%>
	<%--				href="${pageContext.request.contextPath}/signup">Sign up</a></span>--%>
	<%--	</form>--%>
</main>
<%@ include file="common/footer.jsp" %>
</body>
</html>