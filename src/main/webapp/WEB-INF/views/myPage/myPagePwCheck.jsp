<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Style CSS -->
<link rel="stylesheet" href="./resources/css/myPagePwCheck.css">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<!-- Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

<meta charset="UTF-8">
<title>내 정보 변경</title>

</head>

		<div id="header">
			<jsp:include page="../section/header.jsp" />
		</div>

<body>
	<!-- 회원정보 수정 전 비밀번호 확인 후 접속 가능 -->
	<div class=wrap>
	<h2>내 정보 변경</h2>
	<h6>비밀번호 확인 후 정보 변경이 가능합니다.</h6>
<!-- 비밀번호 확인 -->
  <div class="memberPwCheck">
      <form class="form" name="memberPwCheck" method="post" action="myPageAfterChecking.do">
        <div class="group">
          <label for="pw" class="label">비밀번호</label>
          <input id="pw" name = "pw" type="password" class="input" data-type="password">
        </div>
        <div class="group">
          <input type="submit" class="button" value="확인">
        </div>
      </form>
        </div>
	</div>
	
		<div id="myPageMenu">
			<jsp:include page="../myPage/myPageMenu.jsp" />
		</div>
		<div id="footer">
			<jsp:include page="../section/footer.jsp" />
		</div>
	
	
</body>
</html>