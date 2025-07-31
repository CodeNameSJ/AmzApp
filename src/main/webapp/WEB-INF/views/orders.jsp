<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ include file="common/header.jsp" %>
<main class="admin-section container">
	<h2>Orders</h2>
	<table class="admin-table">
		<thead>
		<tr>
			<th>Order ID</th>
			<th>Customer</th>
			<th>Total</th>
			<th>Status</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="order" items="${orders}">
			<tr>
				<td>${order.id}</td>
				<td>${order.userName}</td>
				<td>₹${order.total}</td>
				<td>${order.status}</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</main>
<%@ include file="common/footer.jsp" %>