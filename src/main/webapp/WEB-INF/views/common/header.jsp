<!-- header.jsp -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header class="navbar">
	<div class="navbar-container">
		<a href="${pageContext.request.contextPath}/home" class="logo">AmzApp</a>
		<nav class="nav-menu">
			<a href="${pageContext.request.contextPath}/home">Home</a>
			<a href="${pageContext.request.contextPath}/products">Products</a>
			<a href="${pageContext.request.contextPath}/cart">Cart</a>
			<c:if test="${sessionScope.role == 'ADMIN'}">
				<a href="${pageContext.request.contextPath}/admin/users">Customers</a>
				<a href="${pageContext.request.contextPath}/admin/products">Manage Products</a>
				<a href="${pageContext.request.contextPath}/admin/orders">Orders</a>
			</c:if>
		</nav>
		<div class="auth-button">
			<c:choose>
				<c:when test="${sessionScope.email == null}">
					<button onclick="document.getElementById('auth-modal').style.display='block'">Login / Signup</button>
				</c:when>
				<c:otherwise>
					<span>Hello, ${sessionScope.userName}</span>
					<a href="${pageContext.request.contextPath}/logout">Logout</a>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</header>