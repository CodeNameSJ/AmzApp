<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>Cart - Polo Theme</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="../../resources/css/styles.css"/>
</head>
<body class="dark-mode">
<jsp:include page="common/header.jsp"/>

<main class="container">
	<h2>Your Cart</h2>
	<table class="cart-table">
		<thead>
		<tr>
			<th>Item</th>
			<th>Quantity</th>
			<th>Price</th>
			<th>Total</th>
		</tr>
		</thead>
		<tbody>
		<tr>
			<td>Product A</td>
			<td>2</td>
			<td>$29.99</td>
			<td>$59.98</td>
		</tr>
		<tr>
			<td>Product B</td>
			<td>1</td>
			<td>$39.99</td>
			<td>$39.99</td>
		</tr>
		<!-- More items as needed -->
		<tr>
			<td colspan="3" style="text-align:right; font-weight:bold;">Grand Total:</td>
			<td>$99.97</td>
		</tr>
		</tbody>
	</table>
	<button class="btn btn-primary" style="margin-top: 1rem;">Checkout</button>
</main>

<jsp:include page="common/footer.jsp"/>
<script>
	document.getElementById('theme-toggle').addEventListener('click', function () {
		document.documentElement.classList.toggle('light-mode');
	});
</script>
</body>
</html>
