<<<<<<< Updated upstream
<%@ page contentType="text/html; ISO-8859-1; charset=UTF-8" pageEncoding="UTF-8" %>

=======
<%@ page contentType="text/html; charset=UTF-8" %>
>>>>>>> Stashed changes
<!DOCTYPE html>
<html>
<head>
<<<<<<< Updated upstream
	<meta charset="UTF-8">
	<title>Title</title>
	<%@ include file="common/header.jsp" %>
=======
	<title>Sign Up - Polo Theme</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="../../resources/css/styles.css"/>
>>>>>>> Stashed changes
</head>
<body class="dark-mode">
<jsp:include page="common/header.jsp"/>

<main>
<<<<<<< Updated upstream
	<h2>Sign Up</h2>
	<form class="form" action="${pageContext.request.contextPath}/register" method="post">
        <span class="input-span">
    <label for="name" class="label">Name</label>
    <input type="text" name="name" id="name"/></span>
		<span class="input-span">
    <label for="email" class="label">Email</label>
    <input type="email" name="email" id="email"/></span>
		<span class="input-span">
    <label for="password" class="label">Password</label>
    <input type="password" name="password" id="password"/></span>
		<span class="span"><a href="#">Forgot password?</a></span>
		<input class="submit" type="submit" value="Sign Up"/>
		<span class="span">Already have an account?<a
				href="${pageContext.request.contextPath}/login">Login</a></span>
	</form>
=======
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
>>>>>>> Stashed changes
</main>

<jsp:include page="common/footer.jsp"/>
<script>
	document.getElementById('theme-toggle').addEventListener('click', function () {
		document.documentElement.classList.toggle('light-mode');
	});
</script>
</body>
</html>
