<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Style CSS -->
<link rel="stylesheet" href="./resources/css/adminLogin.css">



<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<!-- Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>


<title>관리자 로그인</title>
</head>
<body>

<div id="wrap">
		<div id="header">
			<jsp:include page="../admin/adminHeader.jsp" />
		</div>

<div class="admin-wrap"	>	
		<!-- 로그인 -->
  <div class="login-admin">
    <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">관리자 로그인</label>
    <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab"></label>
    <div class="login-form">
      <form class="sign-in-htm" name="login" method="post" action="admin.do">
        <div class="group">
          <label for="admin_id" class="label">아이디</label>
          <input id="admin_id" name = "admin_id" type="text" class="input">
        </div>
        <div class="group">
          <label for="admin_pw" class="label">비밀번호</label>
          <input id="admin_pw" name = "admin_pw" type="password" class="input" data-type="password">
        </div>
		<div class="blank"></div>
        <div class="group">
          <input type="submit" class="button" value="로그인">
        </div>
      </form>
      </div>
    </div>      
</div>      
	<div id="adminFooter">
			<jsp:include page="../admin/adminFooter.jsp" />
	</div>
</div>

</body>
</html>