<%@ include file="../common/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<main class="admin-section container">
	<h2>Manage Products</h2>
	<a href="${pageContext.request.contextPath}/admin/products/add" class="btn btn-primary">Add Product</a>
	<table class="admin-table">
		<thead>
		<tr>
			<th>Name</th>
			<th>Price</th>
			<th>Actions</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="p" items="${products}">
			<tr>
				<td>${p.name}</td>
				<td>₹${p.price}</td>
				<td>
					<a href="${pageContext.request.contextPath}/admin/products/edit/${p.id}">Edit</a>
					<a href="${pageContext.request.contextPath}/admin/products/delete/${p.id}"
					   onclick="return confirm('Delete this product?')">Delete</a>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</main>
<%@ include file="../common/footer.jsp" %>