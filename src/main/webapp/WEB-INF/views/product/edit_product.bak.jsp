<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<title>Title</title>
</head>
<body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<h2>Edit Product</h2>

<form action="${pageContext.request.contextPath}/products/update" method="post">
	<input type="hidden" name="id" value="${product.id}"/>

	<label>Name:</label><br/>
	<label>
		<input type="text" name="name" value="${product.name}"/>
	</label><br/><br/>

	<label>Description:</label><br/>
	<label>
		<textarea name="description">${product.description}</textarea>
	</label><br/><br/>

	<label>Price:</label><br/>
	<label>
		<input type="number" step="0.01" name="price" value="${product.price}"/>
	</label><br/><br/>

	<input type="submit" value="Update"/>
</form>

</body>
</html>
