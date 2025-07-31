<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<title>Home</title>
	<link rel="stylesheet" href="../../resources/css/styles.css"/>
</head>
<body>
<%@ include file="common/header.jsp" %>
<%@ include file="login_signup.jsp" %>
<main>
	<section class="hero">
		<h1>Welcome to AmzApp</h1>
		<p>Your favorite place to shop!</p>
		<a href="${pageContext.request.contextPath}/products" class="btn btn-secondary">Browse Products</a>
	</section>
	<section class="product-preview container">
		<h2>Featured Products</h2>
		<jsp:include page="product/products.jsp"/>
	</section>
</main>

</body>
</html>