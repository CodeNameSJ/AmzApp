<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ include file="../../common/header.jsp" %>
<main class="admin-section container">
	<h2>Customers</h2>
	<a href="${pageContext.request.contextPath}/admin/users/add" class="btn btn-primary">Add Customer</a>
	<table class="admin-table">
		<thead>
		<tr>
			<th>Name</th>
			<th>Email</th>
			<th>Actions</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="c" items="${customers}">
			<tr>
				<td>${c.name}</td>
				<td>${c.email}</td>
				<td>
					<a href="${pageContext.request.contextPath}/admin/users/edit/${c.id}">Edit</a>
					<a href="${pageContext.request.contextPath}/admin/users/delete/${c.id}"
					   onclick="return confirm('Delete this user?')">Delete</a>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</main>
<%@ include file="../../common/footer.jsp" %>