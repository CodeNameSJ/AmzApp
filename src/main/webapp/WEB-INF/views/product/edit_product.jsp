<%@ include file="../common/header.jsp" %>
<main class="form-container">
	<h2>Edit Product</h2>
	<form action="${pageContext.request.contextPath}/admin/products/update" method="post">
		<input type="hidden" name="id" value="${product.id}"/>
		<label>Name</label>
		<label>
			<input type="text" name="name" value="${product.name}" required/>
		</label>
		<label>Description</label>
		<label>
			<textarea name="description" required>${product.description}</textarea>
		</label>
		<label>Price</label>
		<label>
			<input type="number" name="price" step="0.01" value="${product.price}" required/>
		</label>
		<label>Quantity</label>
		<label>
			<input type="number" name="quantity" value="${product.quantity}" required/>
		</label>
		<label>Image URL</label>
		<label>
			<input type="text" name="imageUrl" value="${product.imageUrl}"/>
		</label>
		<button type="submit" class="btn btn-primary">Update Product</button>
	</form>
</main>
<%@ include file="../common/footer.jsp" %>