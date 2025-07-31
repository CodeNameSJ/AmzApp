<%@ page contentType="text/html; ISO-8859-1; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>

	<title>Sign Up - Polo Theme</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="../../resources/css/styles.css"/>

</head>
<body class="dark-mode">
<jsp:include page="common/header.jsp"/>

<main>
		<span class="span">Already have an account?<a
				href="${pageContext.request.contextPath}/login">Login</a></span>
	</form>
	<div class="auth-form">
		<h2>Sign Up</h2>
		<form action="/signup" method="post">
			<label for="name">Full Name</label>
			<input type="text" id="name" name="name" required>

			<label for="email">Email Address</label>
			<input type="email" id="email" name="email" required>

			<label for="password">Password</label>
			<input type="password" id="password" name="password" required>

			<button type="submit" class="btn btn-primary">Create Account</button>
		</form>
	</div>

	<c:if test="${not empty message}">
		<p style="color: #58bc82">${message}</p>
	</c:if>
</main>

<jsp:include page="common/footer.jsp"/>
<script>
	document.getElementById('theme-toggle').addEventListener('click', function () {
		document.documentElement.classList.toggle('light-mode');
	});
</script>
</body>
</html>
