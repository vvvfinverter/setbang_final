<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Style CSS -->
<link rel="stylesheet" href="./resources/css/adminHeader.css">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<!-- Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<title>CO-SPACE</title>
</head>
<body>

<!-- header / navbar -->


<nav class="navbar navbar-expand-lg bg-white">
  <div class="container-fluid">
    <a class="navbar-brand" href="admin.do">
    
    <!-- task - 관리자 세션이 로그인이 되어있지 않으면 href=""로 -->
    
<img src="./resources/image/cospacelogo.png" width=160px height=160px />
</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="adminMemberCount.do">회원 현황</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="adminMemberApproval.do">회원가입 승인</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="adminInqueryCheck.do">입주문의 현황</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            임대차 계약 관련
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="adminConstract.do">임대차 계약서 등록</a></li>
            <li><a class="dropdown-item" href="adminConstractList.do">임대차 계약서 목록</a></li>
          </ul>
        
        <!-- 로그인/로그아웃 -->
        <c:choose>
        <c:when test="${sessionId == null }">
        <li class="nav-item">
          <a class="nav-link" href="#">로그인</a>
        </li>
         </c:when>
          <c:when test="${sessionId != null }">
        <li class="nav-item">
          <a class="nav-link" href="#">로그아웃</a>
        </li>
          </c:when>
        </c:choose> 
<!-- task - 관리자 아이디 세션이 null일때는 헤더 메뉴 숨기기 / 여기까지 숨겨야함-->
        <li class="nav-item">
          <a class="nav-link" href="loginPage.do"><img style="width:30px; height:30px;" src='./resources/image/setbang.png' alt='setbang'/></a>
        </li>
    </ul>
    </div>
  </div>
</nav>


</body>
</html>