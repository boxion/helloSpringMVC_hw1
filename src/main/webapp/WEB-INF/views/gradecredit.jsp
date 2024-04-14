<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <style>
        body {
            font-family: 'Noto Sans KR', sans-serif;
            background-color: #f4f4f4;
            color: #333;
        }
        .container {
            width: 80%;
            margin: 20px auto;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .formtable {
            width: 100%;
            border-collapse: collapse;
        }
        .formtable th, .formtable td {
            border: 1px solid #e0e0e0;
            padding: 12px 16px;
            text-align: left;
            font-size: 16px;
        }
        .formtable th {
            background-color: #007bff;
            color: #fff;
            font-weight: bold;
        }
        .formtable tr:hover {
            background-color: #e8f4ff;
        }
        .total-credits {
            text-align: right;
            padding: 16px;
            font-size: 18px;
            font-weight: bold;
        }
        .back-home {
            text-align: right;
            padding: 16px;
            font-size: 16px;
        }
        .back-home a {
            color: #007bff;
            text-decoration: none;
        }
    </style>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/resources/css/main.css">
    <title>상세 과목 조회</title>
</head>
<body>
<div class="container">
    <table class="formtable">
        <tr>
            <th>수강년도</th>
            <th>수강학기</th>
            <th>학점</th>
            <th>자세히보기</th>
        </tr>
        <c:set var="totalCredits" value="0" />
        <c:forEach var="course" items="${courses}">
            <tr>
                <td>${course.getYear()}</td>
                <td>${course.getSemester()}</td>
                <td>${course.getCredits()}</td>
                <td>
                    <a href="http://localhost:8080/grade-credit/detail/${course.getYear()}/${course.getSemester()}">자세히보기</a>
                </td>
                <c:set var="totalCredits" value="${totalCredits + course.getCredits()}" />
            </tr>
        </c:forEach>
    </table>
    <div class="total-credits">총 학점: ${totalCredits}</div>
    <div class="back-home"><a href="${pageContext.request.contextPath}/">홈으로</a></div>
</div>
</body>
</html>
