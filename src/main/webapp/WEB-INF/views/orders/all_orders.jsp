<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>All Orders</title>
</head>
<body>
<h2>All Orders</h2>

<table border="1">
	<tr>
		<th>Order ID</th>
		<th>Customer</th>
		<th>Date</th>
		<th>Total Amount (₹)</th>
	</tr>
	<c:forEach var="order" items="${orders}">
		<tr>
			<td>${order.id}</td>
			<td>${order.user.name}</td>
			<td>${order.orderDate}</td>
			<td>${order.totalAmount}</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>
