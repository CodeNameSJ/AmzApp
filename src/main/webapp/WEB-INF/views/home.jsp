<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<title>Home</title>
	<link rel="stylesheet" href="../../resources/css/styles.css"/>
</head>
<body>

<header class="header">
	<div class="logo">My Shop</div>
	<nav>
		<c:choose>
			<c:when test="${not empty sessionScope.userName}">
				<span>Welcome, ${sessionScope.userName}</span>
				<a href="${pageContext.request.contextPath}/logout/>">Logout</a>
			</c:when>
			<c:otherwise>
				<a href="${pageContext.request.contextPath}/login/>">Login</a>
				<a href="${pageContext.request.contextPath}/signup/>">Sign Up</a>
			</c:otherwise>
		</c:choose>
	</nav>
</header>

<section class="hero">
	<h1>Manage your store effortlessly</h1>
	<p>Powerful backend with clean UI to run your ecommerce platform</p>
	<a class="btn-primary" href="<c:url value='/products'/>">View Products</a>
</section>

<section class="features">
	<div class="feature-card">
		<h3>🎯 Add & Edit Products</h3>
		<p>Fully manage product catalog from dashboard.</p>
	</div>
	<div class="feature-card">
		<h3>👥 Manage Users</h3>
		<p>Admin can create, edit & delete users.</p>
	</div>
	<div class="feature-card">
		<h3>🛒 Cart & Orders</h3>
		<p>Customers can add to cart and place orders.</p>
	</div>
</section>

<footer class="footer">
	&copy; 2025 My Shop. All rights reserved.
</footer>

</body>
</html>