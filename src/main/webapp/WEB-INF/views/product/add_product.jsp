<%@ include file="../common/header.jsp" %>
<main class="form-container">
	<h2>Add Product</h2>
	<form action="${pageContext.request.contextPath}/admin/products/add" method="post">
		<label>Name</label>
		<input type="text" name="name" required/>
		<label>Description</label>
		<textarea name="description" required></textarea>
		<label>Price</label>
		<input type="number" name="price" step="0.01" required/>
		<label>Quantity</label>
		<input type="number" name="quantity" required/>
		<label>Image URL</label>
		<input type="text" name="imageUrl"/>
		<button type="submit" class="btn btn-primary">Save Product</button>
	</form>
</main>
<%@ include file="../common/footer.jsp" %>