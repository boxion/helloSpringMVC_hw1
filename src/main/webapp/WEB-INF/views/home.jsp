<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="kr.ac.hansung.cse.util.UserUtils" %>

<html>
<head>
  <title>학사 정보 시스템</title>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <style>
    .icon {
      width: 100%;
      height: 120px;
      margin-bottom: 20px;
    }
    .icon i {
      font-size: 6em;
      color: #007bff;
    }
    .navigation-bar {
      display: flex;
      justify-content: space-between;
      padding: 15px 20px;
      background: #007bff;
      align-items: center;
      color: white;
    }
    .navigation-title {
      flex-grow: 1;
      text-align: center;
      font-size: 24px;
    }
    .login-button {
      padding: 8px 20px;
      background: #ffffff;
      border: none;
      border-radius: 5px;
      color: black;
      cursor: pointer;
      transition: background 0.3s ease;
    }
    .login-button:hover {
      background: #ffa0a0;
    }
    .content {
      display: flex;
      flex-direction: row;
      align-items: center;
      padding: 20px;
    }
    .cards-container {
      display: flex;
      justify-content: space-between;
      width: 100%;
      margin-top: 20px;
    }
    .card {
      flex-basis: calc(33.333% - 20px);
      text-align: center;
      padding: 20px;
      box-shadow: 0 4px 12px 0 rgba(0,0,0,0.1);
      border-radius: 10px;
      transition: box-shadow 0.3s ease;
    }
    .card:hover {
      box-shadow: 0 6px 15px 0 rgba(0,0,0,0.2);
    }
    .card h2 {
      font-size: 20px;
      margin-bottom: 15px;
    }
    .card p {
      font-size: 14px;
      color: #555;
    }
    .submit-button {
      padding: 10px 25px;
      background: #007bff;
      color: white;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      transition: background 0.3s ease;
    }
    .submit-button:hover {
      background: #0056b3;
    }
  </style>
</head>
<body>
<header class="navigation-bar">
  <div></div>
  <div class="navigation-title">학사 정보 시스템</div>
  <c:if test="${!UserUtils.isAuthenticated()}">
    <button class="login-button" onclick="loginRedirect()">Login</button>
  </c:if>
  <c:if test="${UserUtils.isAuthenticated()}">
    <button class="login-button" onclick="logoutRedirect()">Logout</button>
  </c:if>
</header>

<script>
  function loginRedirect() {
    window.location.href = '/login';
  }
  function logoutRedirect() {
    window.location.href = '/logout';
  }
  function getGradeCredit() {
    window.location.href = '/grade-credit';
  }
  function getRegisterCourse() {
    window.location.href = '/register-course';
  }
  function getCourseList() {
    window.location.href = '/course-list';
  }
  function getPresentRegistration() {
    window.location.href = '/grade-credit/detail/2024/2';
  }
</script>

<main class="content">
  <!-- 섹션 1 -->
  <section class="card">
    <div class="icon"><i class="fas fa-graduation-cap"></i></div>
    <h2>학년별 이수 학점 조회</h2>
    <p>학기별 이수 총 학점과 총계를 보여줍니다.</p>
    <button class="submit-button" onclick="getGradeCredit()">조회하기</button>
  </section>

  <!-- 섹션 2 -->
  <section class="card">
    <div class="icon"><i class="fas fa-book"></i></div>
    <h2>수강 신청하기</h2>
    <p>2024년 2학기 신청할 교과목을 웹 폼으로 입력합니다.</p>
    <button class="submit-button" onclick="getRegisterCourse()">신청하기</button>
  </section>

  <!-- 섹션 3 -->
  <section class="card">
    <div class="icon"><i class="fas fa-user"></i></div>
    <h2>수강 신청 조회</h2>
    <p>2024년 2학기 수강 신청 내역을 조회합니다.</p>
    <button class="submit-button" onclick="getPresentRegistration()">조회하기</button>
  </section>
</main>

</body>
</html>
