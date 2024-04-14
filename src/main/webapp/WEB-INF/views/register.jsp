<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%  request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>수강신청 홈페이지</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Noto Sans KR', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0,0,0,0.1);
            max-width: 800px;
            margin: 50px auto;
        }

        h3 {
            color: #333;
            text-align: center;
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 25px;
        }

        label {
            font-weight: bold;
            color: #555;
        }

        .form-control {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-top: 6px;
            font-size: 16px;
        }

        .error {
            color: red;
            font-size: 0.85rem;
        }

        button {
            background-color: #007bff;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            font-size: 16px;
        }

        button:hover {
            background-color: #0056b3;
        }

        .btn-link {
            color: #007bff;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .btn-link:hover {
            text-decoration: underline;
            color: #0056b3;
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <h3 class="mb-4">2024학년도 2학기 수강신청</h3>
    <sf:form method="post" action="${pageContext.request.contextPath}/register-submit" modelAttribute="course" class="needs-validation">
        <div class="form-group">
            <label for="courseTitle">과목명:</label>
            <sf:input type="text" path="courseTitle" class="form-control" id="courseTitle"/>
            <sf:errors path="courseTitle" class="form-text text-muted error"/>
        </div>
        <div class="form-group">
            <label for="courseType">과목구분:</label>
            <sf:input type="text" path="courseType" class="form-control" id="courseType" />
            <sf:errors path="courseType" class="form-text text-muted error"/>
        </div>
        <div class="form-group">
            <label for="courseCode">교과코드:</label>
            <sf:input type="text" path="courseCode" class="form-control" id="courseCode" />
            <sf:errors path="courseCode" class="form-text text-muted error"/>
        </div>
        <div class="form-group">
            <label for="professor">교수명:</label>
            <sf:input type="text" path="professor" class="form-control" id="professor" />
            <sf:errors path="professor" class="form-text text-muted error"/>
        </div>
        <div class="form-group">
            <label for="credits">학점:</label>
            <sf:input type="text" path="credits" class="form-control" id="credits" />
            <sf:errors path="credits" class="form-text text-muted error"/>
        </div>
        <div class="form-group text-center">
            <button type="submit" class="btn btn-primary">수강신청</button>
        </div>
    </sf:form>
    <div class="text-center mt-4">
        <a href="${pageContext.request.contextPath}/" class="btn btn-link">홈으로 이동</a>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
