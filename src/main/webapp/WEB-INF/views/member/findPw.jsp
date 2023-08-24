<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/modern-business.css" rel="stylesheet">

<!-- Bootstrap core JavaScript -->
<script src="jquery/jquery.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
</head>
<body>
<form method="post" class="form-signin" action="findPwAction.do" name="findform">
<div class="form-label-group">
			<label for="id">ID</label><br/>
			<input type="text" id="id" name="id" class="form-control"/>
		</div>
		
		<div class="form-label-group">
			<label for="name">name</label><br/>
			<input type="text" id="name" name="name" class="form-control"/>
		</div>
		
		<div class="form-label-group">
			<label for="tel">email</label><br/>
			<input type="text" id="email" name="email" class="form-control"/>
		</div>

		<div class="form-label-group">
			<input class="btn btn-lg btn-secondary btn-block text-uppercase"
				type="submit" value="check">
		</div>

		<!-- 정보가 일치하지 않을 때-->
		<c:if test="${check == 1}">
			<script>
				opener.document.findform.id.value = "";
				opener.document.findform.name.value = "";
				opener.document.findform.email.value = "";
			</script>
			<label>일치하는 정보가 존재하지 않습니다.</label>
		</c:if>

		<!-- 이름과 비밀번호가 일치할 때 -->
		<c:if test="${check == 0 }">
		<label>비밀번호를 메일로 발송해드렸습니다</label>
		</c:if>

	</form>
	
</body>
</html>