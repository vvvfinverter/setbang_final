<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>SETBang</title>
</head>
<body>

	<div id="wrap">
		<div id="header">
			<jsp:include page="./section/header.jsp" />
		</div>
		<div id="contents">
<%-- 			<jsp:include page="./section/main.jsp"/> --%>
			<jsp:include page="./member/login_signup.jsp"/>
		</div>
		<div id="footer">
			<jsp:include page="./section/footer.jsp" />
		</div>
	</div>

</body>
</html>