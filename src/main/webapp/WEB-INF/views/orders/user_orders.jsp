<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>My Orders</title>
</head>
<body>
<h2>My Orders</h2>

<table border="1">
	<tr>
		<th>Order ID</th>
		<th>Date</th>
		<th>Total Amount (₹)</th>
		<th>Details</th>
	</tr>
	<c:forEach var="order" items="${orders}">
		<tr>
			<td>${order.id}</td>
			<td>${order.orderDate}</td>
			<td>${order.totalAmount}</td>
			<td><a href="${pageContext.request.contextPath}/orders/view/${order.id}">View</a></td>
		</tr>
	</c:forEach>
</table>
</body>
</html>
