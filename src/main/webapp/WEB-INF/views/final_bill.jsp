<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ include file="common/header.jsp" %>
<main class="container">
	<h2>Order Confirmation</h2>
	<ul>
		<c:forEach var="item" items="${checkedOutItems}">
			<li>${item.name} — ₹${item.price}</li>
		</c:forEach>
	</ul>
	<h3>Total: ₹${totalAmount}</h3>
	<p>Thank you for shopping with us! Your order has been placed.</p>
</main>
<%@ include file="common/footer.jsp" %>