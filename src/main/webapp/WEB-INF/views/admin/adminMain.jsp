<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<!-- Style CSS -->
<link rel="stylesheet" href="./resources/css/adminMain.css">

<!-- Google Chart JavaScript -->
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    
<!-- jQuery 라이브러리 로드 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>    


<meta charset="UTF-8">
<title>관리자페이지 메인</title>
</head>
<body>

		
<div class="wrap">
		<h2> 회원현황 관리</h2>

<!-- 총 인원 현황  -->

	<div id="totalmember">
		<th> 총 회원수</th>
		<tr>
		<td>${totalmember}</td>
		</tr>
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
	
<!-- JS -->
<script type="text/javascript" src="./resources/js/adminMainChart.js"></script>

</body>
</html>