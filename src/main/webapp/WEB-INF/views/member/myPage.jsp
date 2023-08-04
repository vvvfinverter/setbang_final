<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<body>
	<div id="wrap">
		<div id="header">
			<jsp:include page="../section/header.jsp" />
		</div>
		
		<!-- 기본값으로 myPageMain 화면을 생성함. 추후 어떤 페이지를 메인으로 할지 정하고 변경해도 될듯 -->		
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
