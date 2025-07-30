<%--
  Created by IntelliJ IDEA.
  User: jamad
  Date: 30-07-2025
  Time: 22:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Title</title>
</head>
<body>
<h2>Product List</h2>

<a href="${pageContext.request.contextPath}/products/add">Add Product</a>

<table style="border:1px; mso-cellspacing:8px;">
	<tr>
		<th>ID</th>
		<th>Name</th>
		<th>Price</th>
		<th>Actions</th>
	</tr>
	<c:forEach var="product" items="${products}">
		<tr>
			<td>${product.id}</td>
			<td>${product.name}</td>
			<td>${product.price}</td>
			<td>
				<a href="${pageContext.request.contextPath}/products/edit/${product.id}">Edit</a> |
				<a href="${pageContext.request.contextPath}/products/delete/${product.id}">Delete</a>
			</td>
		</tr>
	</c:forEach>
</table>

</body>
</html>
