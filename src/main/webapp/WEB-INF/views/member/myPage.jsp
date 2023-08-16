<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<!-- Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

</head>
<body>
	<div id="wrap">
		<div id="header">
			<jsp:include page="../section/header.jsp" />
		</div>
		
		<!-- 기본값으로 myPageMain 페이지 -->		
		<div id="contents">
			<jsp:include page="../member/myPageMain.jsp" />
		</div>
		<div id="myPageMenu">
			<jsp:include page="../member/myPageMenu.jsp" />
		</div>
		<div id="footer">
			<jsp:include page="../section/footer.jsp" />
		</div>
	</div>
</body>
</html>
