<<<<<<< Updated upstream
<%@ page contentType="text/html; ISO-8859-1; charset=UTF-8" pageEncoding="UTF-8" %>

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
	<form class="form" action="${pageContext.request.contextPath}/sign-in" method="post">
    <span class="input-span">
    <label for="email" class="label">Email</label>
    <input type="email" name="email" id="email"/></span>
		<span class="input-span">
    <label for="password" class="label">Password</label>
    <input type="password" name="password" id="password"/></span>
		<span class="span"><a href="#">Forgot password?</a></span>
		<input class="submit" type="submit" value="Log in"/>
		<span class="span">Don't have an account? <a
				href="${pageContext.request.contextPath}/signup">Sign up</a></span>
	</form>
</main>
<%@ include file="common/footer.jsp" %>
=======
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>Login - Polo Theme</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="../../resources/css/styles.css"/>
</head>
<body class="dark-mode">
<jsp:include page="common/header.jsp"/>

<main>
	<div class="auth-form">
		<h2>Login</h2>
		<form action="${pageContext.request.contextPath}/login" method="post">
			<label for="email">Email Address</label>
			<input type="email" id="email" name="email" required>

			<label for="password">Password</label>
			<input type="password" id="password" name="password" required>

			<button type="submit" class="btn btn-primary">Log In</button>
		</form>
	</div>
</main>

<jsp:include page="common/footer.jsp"/>
<script>
	document.getElementById('theme-toggle').addEventListener('click', function () {
		document.documentElement.classList.toggle('light-mode');
	});
</script>
>>>>>>> Stashed changes
</body>
</html>