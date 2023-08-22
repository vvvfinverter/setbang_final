<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<!-- Style CSS -->
<link rel="stylesheet" href="./resources/css/adminMain.css">

<!-- Google Chart JavaScript -->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>


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
		</div>

	<!-- 서비스 등급현황 도넛차트 -->	
	<div class="chart-area">
  		<div class="chart">
			<div id="donutchart" style="width: 900px; height: 500px;"></div>
		</div>
	</div>


</div>	
	
<!-- JS -->
<script type="text/javascript" src="./resources/js/adminMainChart.js"></script>

</body>
</html>