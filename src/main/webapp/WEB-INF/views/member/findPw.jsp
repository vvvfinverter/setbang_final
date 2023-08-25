<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<!-- Style CSS -->
<link rel="stylesheet" href="./resources/css/findPw.css">

<!-- JS / Jquery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<!-- Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

</head>
<body>

<div id="header">
    <jsp:include page="../section/header.jsp" />
</div>

<div class="wrap">
    <h2>비밀번호 찾기</h2>

	<form method="post" class="form-signin" action="findPwAction.do" name="findform">
	<div class="findPw">
			<div class="group">
	        <div class="left">
			<label for="id">ID</label>
			</div>
			<input type="text" id="id" name="id" class="input" required/>
		</div>
		
		<div class="group">
	        <div class="left">
			<label for="name">성함</label>
			</div>
			<input type="text" id="name" name="name" class="input" placeholder="ex) 홍길동" required/>
		</div>
		
		<div class="group">
		<div class="left">
			<label for="tel">이메일 주소</label>
		</div>
			<input type="text" id="email" name="email" class="input" placeholder="ex) setbang@setbang.com" required/>
		</div>
	</div>
		<div class="group">
			<input class="btn btn-lg btn-secondary btn-block text-uppercase"
				type="submit" value="확인">
		</div>

		<!-- ID, 이름, 이메일이 일치하지 않을 때 -->
		<c:if test="${check == 1}">
			<script>
				opener.document.findform.id.value = "";
				opener.document.findform.name.value = "";
				opener.document.findform.email.value = "";
			</script>
			<p>일치하는 정보가 존재하지 않습니다.</p>
		</c:if>

		<!-- ID, 이름, 이메일이 일치하지 일치할 때 -->
		<c:if test="${check == 0 }">
		<p>임시 비밀번호를 메일로 발송하였습니다.<br/>
			확인 부탁드립니다.</p>
		</c:if>

	</form>
	
	
	</div>

<div id="footer">
    <jsp:include page="../section/footer.jsp" />
</div>
	
</body>
</html>