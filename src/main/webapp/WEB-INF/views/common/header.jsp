<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>Amz</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}css/styles.css>">
</head>
<body>
<header class="header" id="header">
	<div class="container">
		<div class="nav-brand" style="color: #0f172a">
			<div class="logo">A</div>
			<span class="brand-name">AMZ</span>
		</div>
		<nav class="nav-menu" id="nav-menu">
			<a href="${pageContext.request.contextPath}/" class="nav-link">Home</a>
			<a href="${pageContext.request.contextPath}/products" class="nav-link">Products</a>
			<a href="${pageContext.request.contextPath}/cart" class="nav-link">Cart</a>
		</nav>
		<div class="nav-actions">
			<button class="theme-toggle" id="theme-toggle" aria-label="Toggle theme">
				<svg class="sun-icon" width="18" height="18" viewBox="0 0 24 24" style="fill:none" stroke="currentColor"
				     stroke-width="2">
					<circle cx="12" cy="12" r="5"></circle>
					<path
							d="M12 1v2M12 21v2M4.22 4.22l1.42 1.42M18.36 18.36l1.42 1.42M1 12h2M21 12h2M4.22 19.78l1.42-1.42M18.36 5.64l1.42-1.42">
					</path>
				</svg>
				<svg class="moon-icon" width="18" height="18" viewBox="0 0 24 24" style="fill:none"
				     stroke="currentColor"
				     stroke-width="2">
					<path d="M21 12.79A9 9 0 1 1 11.21 3 7 7 0 0 0 21 12.79z"></path>
				</svg>
			</button>

			<button class="btn btn-primary">
				<a href="${pageContext.request.contextPath}/login" style="color: currentColor" class="login-link">
					Log in</a>

				<svg width="16" height="16" viewBox="0 0 24 24" style="fill:none" stroke="currentColor"
				     stroke-width="2">
					<path d="M9 18l6-6-6-6"></path>
				</svg>
			</button>
		</div>

	</div>
</header>
</body>
</html>