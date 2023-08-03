<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>SETBang</title>
</head>
<body>

<!-- header / navbar -->

<nav class="navbar navbar-expand-lg bg-white">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">
<img src="./resources/image/setbang.png" width=300px height=160px />
</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
      <ul class="navbar-nav">
       <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            브랜드 소개
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#intro1">기업 소개</a></li>
            <li><a class="dropdown-item" href="#intro2">서비스 소개</a></li>
            <li><a class="dropdown-item" href="#intro3">협력업체 소개</a></li>
            <li><a class="dropdown-item" href="#intro4">서비스 플랜</a></li>
          </ul>
        </li>
         <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            오피스 소개
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">개인 오피스</a></li>
            <li><a class="dropdown-item" href="#">공용 오피스</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">예약·서비스</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">문의하기</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="../member/login_signup.jsp">로그인</a>
        </li>
	 </ul>
    </div>
  </div>
</nav>


</body>
</html>