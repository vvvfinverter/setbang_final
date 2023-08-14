<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공용 오피스 예약</title>
</head>
<body>
	<div id="wrap">
		
		<!-- 기본값으로  화면을 생성함. 추후 어떤 페이지를 메인으로 할지 정하고 변경해도 될듯 -->		
		<div id="contents">
			<jsp:include page="../pubOffice/pubOfficeNavi.jsp" />
		</div>
		<div id="pubOfficeMenu">
			<jsp:include page="../pubOffice/pubOffice1.jsp" />
		</div>
		<div id="footer">
			<jsp:include page="../section/footer.jsp" />
		</div>
	</div>
</body>
</html>
