<<<<<<< Updated upstream
<h1>Welcome to Our SaaS Platform</h1>
<p>Home Page Content</p>
=======
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>Home - Polo Theme</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Link Google Fonts for Montserrat and Playfair Display -->
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600;700&family=Playfair+Display:wght@700&display=swap"
	      rel="stylesheet">
	<link rel="stylesheet" href="../../resources/css/styles.css"/>
</head>
<body class="dark-mode">
<jsp:include page="common/header.jsp"/>

<main>
	<!-- Hero Section -->
	<section class="hero">
		<div class="container">
			<h1>UI/UX &amp; Graphic Designer</h1>
			<h2>Johan Beker</h2>
			<p>I’m a versatile designer specializing in graphic, web, and product design. Let’s build something great!</p>
			<a href="products" class="btn btn-secondary">See All Products</a>
			<a href="contact" class="btn btn-primary">Contact Now</a>
		</div>
	</section>

	<!-- Featured Products / Projects Grid -->
	<section class="container" style="padding-top: 2rem;">
		<h2>Recent Projects</h2>
		<div class="grid">
			<!-- Placeholder cards -->
			<div class="card">
				<img src="https://via.placeholder.com/300x200" alt="Project 1">
				<h3>Project One</h3>
			</div>
			<div class="card">
				<img src="https://via.placeholder.com/300x200" alt="Project 2">
				<h3>Project Two</h3>
			</div>
			<div class="card">
				<img src="https://via.placeholder.com/300x200" alt="Project 3">
				<h3>Project Three</h3>
			</div>
		</div>
	</section>
</main>

<jsp:include page="common/footer.jsp"/>

<!-- Theme Toggle Script -->
<script>
	document.getElementById('theme-toggle').addEventListener('click', function () {
		document.documentElement.classList.toggle('light-mode');
	});
</script>
</body>
</html>

>>>>>>> Stashed changes
