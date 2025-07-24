<%@ page contentType="text/html; ISO-8859-1; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
</head>
<body>
<main style="margin:120px;">
    <h2>Sign Up</h2>
    <form action="${pageContext.request.contextPath}/register" method="post">
        <label>Full Name:</label><br>
        <label>
            <input type="text" name="fullName" required/>
        </label><br><br>

        <label>Email:</label><br>
        <label>
            <input type="email" name="email" required/>
        </label><br><br>

        <label>Password:</label><br>
        <label>
            <input type="password" id="password" name="password" required/>
        </label><br><br>

        <%--        <label>Confirm Password:</label><br>--%>
        <%--        <label>--%>
        <%--            <input type="password" id="confirmPassword" name="confirmPassword" required/>--%>
        <%--            <span id="passwordError" class="error"></span>--%>
        <%--        </label><br><br>--%>

        <input type="submit" value="Sign Up"/>
    </form>
    <p>Already have an account? <a href="${pageContext.request.contextPath}/login">Login</a></p>

</main>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>