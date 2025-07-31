<%@ include file="../../common/header.jsp" %>
<main class="form-container">
	<h2>Add Customer</h2>
	<form action="${pageContext.request.contextPath}/admin/users/add" method="post">
		<label>Name</label>
		<input type="text" name="name" required/>
		<label>Email</label>
		<input type="email" name="email" required/>
		<label>Role</label>
		<select name="role">
			<option value="CUSTOMER">Customer</option>
			<option value="ADMIN">Admin</option>
		</select>
		<button type="submit" class="btn btn-primary">Create User</button>
	</form>
</main>
<%@ include file="../../common/footer.jsp" %>
