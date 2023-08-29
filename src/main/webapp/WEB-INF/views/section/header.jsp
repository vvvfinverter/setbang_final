<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Style CSS -->
<link rel="stylesheet" href="./resources/css/header.css">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<!-- Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<title>SETbang</title>
</head>
<body>

<!-- header / navbar -->

<nav class="navbar navbar-expand-lg bg-white">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp">
<img src="./resources/image/setbanglogofinal.png" width=360px height=130px />
</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
      <ul class="navbar-nav">
       <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            SETbang
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="index.jsp#intro1">SETbang 소개</a></li>
            <li><a class="dropdown-item" href="index.jsp#intro2">서비스 플랜</a></li>
            <li><a class="dropdown-item" href="index.jsp#intro3">지점 소개</a></li>
            <li><a class="dropdown-item" href="index.jsp#intro4">제휴업체 소개</a></li>
            <li><a class="dropdown-item" href="index.jsp#intro5">ABOUT US</a></li>
          </ul>
        </li>
         <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            	지점 안내
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="branchGuro.do">구로점</a></li>
            <li><a class="dropdown-item" href="branchGangnam.do">강남점</a></li>
            <li><a class="dropdown-item" href="branchPangyo.do">판교점</a></li>
          </ul>
        </li>
        
        <!-- task - 로그인 성공 시 예약·서비스 페이지에 메뉴가 보여짐. 로그인을 하지 않은 상태일 경우 누를때 알림창으로 로그인 후 이용가능 합니다.를 띄워야함 -->
      <c:choose>
        <c:when test="${sessionId == null }">
        <li class="nav-item">
          <a class="nav-link" href="loginPage.do">예약·서비스</a>
        </li>
          </c:when>
          <c:when test="${sessionId != null }">
       <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            예약·서비스
          </a>
              <c:choose>
        <c:when test="${sessionMemPlan == 'basic'}">
            <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="planApply.do">서비스 플랜 결제</a></li>
            <li><a class="dropdown-item" href="pubOfficeBooking.do">공용 오피스 예약</a></li>
            <li><a class="dropdown-item" href="itemApply.do">물품 신청</a></li>
            </ul>
        </c:when>
        <c:when test="${sessionMemPlan == 'standard_monthly'}">
                  <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="planApply.do">서비스 플랜 업그레이드</a></li>
            <li><a class="dropdown-item" href="pubOfficeBooking.do">공용 오피스 예약</a></li>
            <li><a class="dropdown-item" href="itemApply.do">물품 신청</a></li>
            <li><a class="dropdown-item" href="supportApply.do">업무지원 신청</a></li>
          </ul>
        </c:when>
        <c:when test="${sessionMemPlan == 'standard_annual'}">
                  <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="pubOfficeBooking.do">공용 오피스 예약</a></li>
            <li><a class="dropdown-item" href="itemApply.do">물품 신청</a></li>
            <li><a class="dropdown-item" href="supportApply.do">업무지원 신청</a></li>
          </ul>
        </c:when>
       <c:when test="${sessionMemPlan == 'premium_monthly' || sessionMemPlan == 'premium_annual'}">
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="pubOfficeBooking.do">공용 오피스 예약</a></li>
            <li><a class="dropdown-item" href="itemApply.do">물품 신청</a></li>
            <li><a class="dropdown-item" href="supportApply.do">업무지원 신청</a></li>
            <li><a class="dropdown-item" href="partnerBooking.do">협력업체 예약</a></li>
          </ul>
        </c:when>
    </c:choose>    
          </c:when>
        </c:choose>
        
      <c:choose>
        <c:when test="${sessionId == null }">
        <li class="nav-item">
          <a class="nav-link" href="inquery.do">입주 문의</a>
        </li>
          </c:when>
          <c:when test="${sessionId != null }">
        <li class="nav-item">
          <a class="nav-link" href="myPage.do">마이페이지</a>
        </li>
          </c:when>
        </c:choose>
        
        
        <!-- 로그인/로그아웃 -->
        <c:choose>
        <c:when test="${sessionId == null }">
        <li class="nav-item">
          <a class="nav-link" href="loginPage.do">로그인</a>
        </li>
         </c:when>
          <c:when test="${sessionId != null }">
        <li class="nav-item">
          <a class="nav-link" href="logout.do">로그아웃</a>
        </li>
          </c:when>
        </c:choose>      
        <li class="nav-item">
          <a class="nav-link" href="memberLogout.do"><img style="width:30px; height:30px;" src='./resources/image/cospacelogo.png' alt='co-space'/></a>
        </li>
    </ul>
    </div>
  </div>
</nav>


</body>
</html>