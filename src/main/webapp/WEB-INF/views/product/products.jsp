<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<section class="product-grid">
	<c:forEach var="product" items="${products}">
		<div class="product-card">
			<img src="${product.imageUrl}" alt="${product.name}"/>
			<div class="info">
				<h3>${product.name}</h3>
				<p>${product.description}</p>
				<p>₹${product.price}</p>
				<div class="card-buttons">
					<form action="${pageContext.request.contextPath}/addToCart" method="post">
						<input type="hidden" name="productId" value="${product.id}"/>
						<button type="submit" class="add-cart">Add to Cart</button>
					</form>
					<form action="${pageContext.request.contextPath}/buyNow" method="post">
						<input type="hidden" name="productId" value="${product.id}"/>
						<button type="submit" class="buy-now">Buy Now</button>
					</form>
				</div>
			</div>
		</div>
	</c:forEach>
</section>