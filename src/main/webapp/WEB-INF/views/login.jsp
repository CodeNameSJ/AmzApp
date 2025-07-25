<%@ page contentType="text/html; ISO-8859-1; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <%@ include file="common/header.jsp" %>

    <style>.form {
        --bg-light: #efefef;
        --bg-dark: #707070;
        --clr: #58bc82;
        --clr-alpha: #9c9c9c60;
        display: flex;
        flex-direction: column;
        align-items: center;
        gap: 1rem;
        width: 100%;
        max-width: 300px;
    }

    .form .input-span {
        width: 100%;
        display: flex;
        flex-direction: column;
        gap: 0.5rem;
    }

    .form input[type="email"],
    .form input[type="password"] {
        border-radius: 0.5rem;
        padding: 1rem 0.75rem;
        width: 100%;
        border: none;
        display: flex;
        align-items: center;
        gap: 0.5rem;
        background-color: var(--clr-alpha);
        outline: 2px solid var(--bg-dark);
    }

    .form input[type="email"]:focus,
    .form input[type="password"]:focus {
        outline: 2px solid var(--clr);
    }

    .label {
        align-self: flex-start;
        color: var(--clr);
        font-weight: 600;
    }

    .form .submit {
        padding: 1rem 0.75rem;
        width: 100%;
        display: flex;
        align-items: center;
        gap: 0.5rem;
        border-radius: 3rem;
        background-color: var(--bg-dark);
        color: var(--bg-light);
        border: none;
        cursor: pointer;
        transition: all 300ms;
        font-weight: 600;
        font-size: 0.9rem;
    }

    .form .submit:hover {
        background-color: var(--clr);
        color: var(--bg-dark);
    }

    .span {
        text-decoration: none;
        color: var(--bg-dark);
    }

    .span a {
        color: var(--clr);
    }
    </style>
</head>
<body>

<main style="width: 100vw; height: 100vh">
    <h2 class="form">Login</h2>
    <form class="form" action="${pageContext.request.contextPath}/sign-in" method="post" data-theme="dark">
    <span class="input-span">
    <label for="email" class="label">Email</label>
    <input type="email" name="email" id="email"/></span>
        <span class="input-span">
    <label for="password" class="label">Password</label>
    <input type="password" name="password" id="password"/></span>
        <span class="span"><a href="#">Forgot password?</a></span>
        <input class="submit" type="submit" value="Log in" style="justify-content: center"/>
        <span class="span">Don't have an account? <a
                href="${pageContext.request.contextPath}/signup">Sign up</a></span>
    </form>
</main>
<%@ include file="common/footer.jsp" %>
</body>
</html>