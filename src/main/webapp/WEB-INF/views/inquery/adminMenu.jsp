<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- Style CSS -->
<link rel="stylesheet" href="./resources/css/adminMenu.css">

<meta charset="UTF-8">
<title>관리자페이지 메뉴</title>
</head>
<body>

<div class = "sidebar-container">
<aside class="side-bar">
  <section class="side-bar__icon-box">
    <section class="side-bar__icon-1">
      <div></div>
      <div></div>
      <div></div>
    </section>
  </section>
  <div class ="myInfo">
    <div class ="profile">
	<a href ="myPagePwCheck.do"><img style="width:100px; height:100px;" src='./resources/image/profile.png' alt='top' /></a>
    </div>
    <div class = "myInfo1"> 
		<label> 관리자님 접속 </label>
    </div>
  <ul>
    <li>
      <a class="no-underline" href="#">회원현황</a>
    </li>
    <li>
      <a class="no-underline" href="#">임대차 계약등록</a>
    </li>
    <li>
      <a class="no-underline" href="#">문의답변</a>
    </li>
  </ul>
  </aside>
  </div>

</body>
</html>