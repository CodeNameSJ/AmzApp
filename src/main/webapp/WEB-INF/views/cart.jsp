<%@ include file="common/header.jsp" %>
<main class="container">
	<h2>Your Cart</h2>
	<form action="${pageContext.request.contextPath}/checkout" method="post">
		<table class="cart-table">
			<thead>
			<tr>
				<th>Select</th>
				<th>Product</th>
				<th>Price</th>
				<th>Remove</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach var="item" items="${cartItems}">
				<tr>
					<td><label>
						<input type="checkbox" name="selectedIds" value="${item.id}"/>
					</label></td>
					<td>${item.name}</td>
					<td>₹${item.price}</td>
					<td><a href="${pageContext.request.contextPath}/removeFromCart?id=${item.id}">Remove</a></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		<button type="submit" class="btn btn-primary">Proceed to Checkout</button>
	</form>
</main>
<%@ include file="common/footer.jsp" %>