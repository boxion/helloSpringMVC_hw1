<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="kr.ac.hansung.cse.util.UserUtils" %>

<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Please sign in</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css" rel="stylesheet" crossorigin="anonymous"/>
</head>
<body>
<div class="container">
    <form class="form-signin" method="post" action="<c:url value="/auth" />">
        <h2 class="form-signin-heading">LOGIN</h2>

        <c:if test="${not empty errorMsg}">
            <div style="color: #ff0000;"> <h3> ${errorMsg} </h3></div>
        </c:if>

        <c:if test="${not empty logoutMsg}">
            <div style="color: #0000ff;" > <h3> ${logoutMsg} </h3></div>
        </c:if>

        <p>
            <label for="username" class="sr-only">Username</label>
            <input type="text" id="username" name="username" class="form-control" placeholder="Username" required autofocus>
        </p>
        <p>
            <label for="password" class="sr-only">Password</label>
            <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
        </p>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"  />
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>

        <c:if test="${UserUtils.isAuthenticated()}">
            <script>
                // 로그인이 완료되면 홈페이지로 자동 이동
                window.location.href = '<c:url value="/"/>';
            </script>
            <p>
                <a href="<c:url value='/' />" class="btn btn-lg btn-success btn-block">로그인 완료 & 홈으로 가기</a>
            </p>
        </c:if>


    </form>
</div>
</body>

</html>
