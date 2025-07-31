<%--
  Created by IntelliJ IDEA.
  User: jamad
  Date: 30-07-2025
  Time: 23:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Title</title>
</head>
<body>
<h2>Add Product</h2>

<form action="${pageContext.request.contextPath}/products/save" method="post">
	<label>Name:</label><br/>
	<label>
		<input type="text" name="name"/>
	</label><br/><br/>

	<label>Description:</label><br/>
	<label>
		<textarea name="description"></textarea>
	</label><br/><br/>

	<label>Price:</label><br/>
	<label>
		<input type="number" step="0.01" name="price"/>
	</label><br/><br/>

	<input type="submit" value="Save"/>
</form>

</body>
</html>
