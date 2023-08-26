<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<!-- Style CSS -->
<link rel="stylesheet" href="./resources/css/adminMemberCount.css">

<!-- Google Chart JavaScript -->
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    
<!-- jQuery 라이브러리 로드 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>    


<meta charset="UTF-8">
<title>회원 현황</title>
</head>
<body>

	<div id="adminHeader">
			<jsp:include page="../admin/adminHeader.jsp"/>
	</div>
		
<div class="wrap">
		<h2>회원 현황</h2>

<!-- 총 인원 현황  -->
	<div id="totalmember">
		<h4>총 회원수</h4>
		<h6>현재까지 총 회원의 수는 ${totalmember}명 입니다.</h6>
	</div>	
	
    <!--지점별 회원현황 막대차트-->
  		<div class="chart" id="privcount">
			<div id="columnchart_values" ></div>
			<input type="hidden" id="guromember" name="guromember" value="${guromember}">
			<input type="hidden" id="pangyomember" name="pangyomember" value="${pangyomember}">
			<input type="hidden" id="gangnammember" name="gangnammember" value="${gangnammember}">
		</div>

    <!--지점별 회원현황 막대차트-->
  		<div class="chart">
			<div id="columnchart_values" ></div>
			<input type="hidden" id="basic" name="basic" value="${basic}">
			<input type="hidden" id="standard_monthly" name="standard_monthly" value="${standard_monthly}">
			<input type="hidden" id="standard_annual" name="standard_annual" value="${standard_annual}">
			<input type="hidden" id="premium_monthly" name="premium_monthly" value="${premium_monthly}">
			<input type="hidden" id="premium_annual" name="premium_annual" value="${premium_annual}">
		</div>

	<!-- 서비스 등급현황 도넛차트 -->	
	<div class="chart-area">
  		<div class="chart">
			<div id="donutchart"></div>
		</div>
	</div>

</div>	
	
	
	<div id="adminFooter">
			<jsp:include page="../admin/adminFooter.jsp" />
	</div>
	
<!-- JS -->
<script type="text/javascript" src="./resources/js/adminMainChart.js"></script>
<script type="text/javascript" src="./resources/js/adminMemberCount.js"></script>

</body>
</html>