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
</body>
</html>
