<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
	<title>Title</title>
</head>
<body>

<h2>Edit User</h2>

<form:form modelAttribute="user" method="post" action="${pageContext.request.contextPath}/admin/users/update">
	<form:hidden path="id"/>

	<label>Name:</label>
	<form:input path="name"/><br/><br/>

	<label>Email:</label>
	<form:input path="email"/><br/><br/>

	<label>Role:</label>
	<form:select path="role">
		<form:option value="CUSTOMER" label="Customer"/>
		<form:option value="ADMIN" label="Admin"/>
	</form:select><br/><br/>

	<input type="submit" value="Update User"/>
</form:form>
</body>
</html>
