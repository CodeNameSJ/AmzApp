<%@ page contentType="text/html; ISO-8859-1; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <%@ include file="common/header.jsp" %>
</head>
<body>
<main>
    <h2>Sign Up</h2>
    <form class="form" action="${pageContext.request.contextPath}/register" method="post">
        <span class="input-span">
    <label for="name" class="label">Name</label>
    <input type="text" name="name" id="name"/></span>
        <span class="input-span">
    <label for="email" class="label">Email</label>
    <input type="email" name="email" id="email"/></span>
        <span class="input-span">
    <label for="password" class="label">Password</label>
    <input type="password" name="password" id="password"/></span>
        <span class="span"><a href="#">Forgot password?</a></span>
        <input class="submit" type="submit" value="Sign Up"/>
        <span class="span">Already have an account?<a
                href="${pageContext.request.contextPath}/login">Login</a></span>
    </form>
</main>

<%@ include file="common/footer.jsp" %>
</body>
</html>