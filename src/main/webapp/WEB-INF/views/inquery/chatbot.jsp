<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="en">
   <head>
        <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>Chatbot</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- site icon -->
      <link rel="icon" href="resources/images/fevicon.png" type="image/png" />
      <!-- bootstrap css -->
      <link rel="stylesheet" href="resources/css/bootstrap.min.css" />
      <!-- site css -->
      <link rel="stylesheet" href="resources/css/style.css" />
      <!-- responsive css -->
      <link rel="stylesheet" href="resources/css/responsive.css" />
      <!-- color css -->
      <link rel="stylesheet" href="resources/css/colors.css" />
      <!-- select bootstrap -->
      <link rel="stylesheet" href="resources/css/bootstrap-select.css" />
      <!-- scrollbar css -->
      <link rel="stylesheet" href="resources/css/perfect-scrollbar.css" />
      <!-- custom css -->
      <link rel="stylesheet" href="resources/css/custom.css" />
      
      <link rel="stylesheet" href="resources/css/chatbot.css" />
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
<!-- JS / Jquery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="./resources/js/myPageCard.js"></script>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<!-- Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

   </head>
   <body class="dashboard dashboard_1">
   
   		<div id="header">
			<jsp:include page="../section/header.jsp" />
		</div>
   
   
      <div class="full_container">					            
		<div class="chat-container">
		   <div class="chat-header">
			  <h1>SETbang</h1>
				<div class="chat-intro">
	           <!--  	<p>업무 대화나 일상 대화 문제를 풀어보고 싶다면<br/> '<strong>업무대화 문제풀고싶어</strong>' 또는 '<strong>일상대화 문제풀고싶어</strong>'라고 입력해보세요.</p>  -->
				</div>
			</div>
		<div class="chat-body" id="chatArea">
		</div>
		<div class="chat-input">
			<input type="text" id="userInput" placeholder="채팅을 입력하세요." onkeydown="handleKeyPress(event)">
		</div>
		</div>

		</div>
		
		<div id="footer">
			<jsp:include page="../section/footer.jsp" />
		</div>
		
	<!-- jQuery -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="resources/js/jquery-3.3.1.min.js"></script>
	<!-- <script src="resources/js/jquery.min.js"></script> -->
	<script src="resources/js/popper.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<!-- wow animation -->
	<script src="resources/js/animate.js"></script>
	<!-- select country -->
	<script src="resources/js/bootstrap-select.js"></script>
	<!-- owl carousel -->
	<script src="resources/js/owl.carousel.js"></script>
	<!-- custom js -->
	<script src="resources/js/custom.js"></script>
	<script src="resources/js/chart_custom_style1.js"></script>
	<script src="resources/js/chatbot.js"></script>
	 
</body>
</html>