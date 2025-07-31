<%@ include file="../../common/header.jsp" %>
<main class="form-container">
	<h2>Edit Customer</h2>
	<form action="${pageContext.request.contextPath}/admin/users/update" method="post">
		<input type="hidden" name="id" value="${user.id}"/>
		<label>Name</label>
		<input type="text" name="name" value="${user.name}" required/>
		<label>Email</label>
		<input type="email" name="email" value="${user.email}" required/>
		<label>Role</label>
		<select name="role">
			<option value="CUSTOMER"${user.role=='CUSTOMER'? ' selected':''}>Customer</option>
			<option value="ADMIN"${user.role=='ADMIN'? ' selected':''}>Admin</option>
		</select>
		<button type="submit" class="btn btn-primary">Update User</button>
	</form>
</main>
<%@ include file="../../common/footer.jsp" %>