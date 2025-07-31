<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>Products - Polo Theme</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="../../resources/css/styles.css"/>
</head>
<body class="dark-mode">
<jsp:include page="../common/header.jsp"/>

<main class="container">
	<h2>Products</h2>
	<div class="grid">
		<!-- Example product cards -->
		<div class="card">
			<img src="https://via.placeholder.com/300x200" alt="Product A">
			<h3>Product A</h3>
			<p>$29.99</p>
			<button class="btn btn-primary">Add to Cart</button>
		</div>
		<div class="card">
			<img src="https://via.placeholder.com/300x200" alt="Product B">
			<h3>Product B</h3>
			<p>$39.99</p>
			<button class="btn btn-primary">Add to Cart</button>
		</div>
		<div class="card">
			<img src="https://via.placeholder.com/300x200" alt="Product C">
			<h3>Product C</h3>
			<p>$49.99</p>
			<button class="btn btn-primary">Add to Cart</button>
		</div>
		<!-- Add more products as needed -->
	</div>
</main>

<jsp:include page="../common/footer.jsp"/>
<script>
	document.getElementById('theme-toggle').addEventListener('click', function () {
		document.documentElement.classList.toggle('light-mode');
	});
</script>
</body>
</html>
