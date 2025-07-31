<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>Order Summary</title>
</head>
<body>
<h2>Order Summary</h2>

<table style="border:1px">
	<tr>
		<th>Product</th>
		<th>Quantity</th>
		<th>Price (₹)</th>
		<th>Subtotal (₹)</th>
	</tr>
	<c:forEach var="item" items="${orderItems}">
		<tr>
			<td>${item.product.name}</td>
			<td>${item.quantity}</td>
			<td>${item.product.price}</td>
			<td>${item.quantity * item.product.price}</td>
		</tr>
	</c:forEach>
</table>

<h3>Total Amount: ₹${total}</h3>

<a href="${pageContext.request.contextPath}/orders/confirm">Place Order</a>
</body>
</html>
