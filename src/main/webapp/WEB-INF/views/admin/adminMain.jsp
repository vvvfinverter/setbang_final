<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Style CSS -->
<link rel="stylesheet" href="./resources/css/adminMain.css">

<!-- JS -->
<script type="text/javascript" src="./resources/js/adminMainChart.js"></script>


<!-- Google Chart JavaScript -->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<!-- 지점별 회원현황 -->
	<script type="text/javascript">
    google.charts.load("current", {packages:['corechart']});
    google.charts.setOnLoadCallback(drawChart);
    function drawChart() {
      var data = google.visualization.arrayToDataTable([
        ["지점", "회원수", { role: "style" } ],
        ["강남점", 8, "#b87333"],
        ["구로점", 10, "silver"],
        ["종로점", 15, "gold"],
      ]);

      var view = new google.visualization.DataView(data);
      view.setColumns([0, 1,
                       { calc: "stringify",
                         sourceColumn: 1,
                         type: "string",
                         role: "annotation" },
                       2]);

      var options = {
        title: "지점별 회원현황",
        width: 600,
        height: 400,
        bar: {groupWidth: "95%"},
        legend: { position: "none" },
      };
      var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
      chart.draw(view, options);
  }
	</script>

<!-- 서비스 등급현황 -->	
	<script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['서비스등급', '회원수'],
          ['Basic',     11],
          ['Standard',  9],
          ['Primium',  2],
        ]);

        var options = {
          title: '서비스 등급별 현황',
          pieHole: 0.4,
        };

        var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
        chart.draw(data, options);
      }
    </script>
<meta charset="UTF-8">
<title>관리자페이지 메인</title>
</head>
<body>

		
<div class="wrap">
		<h2> 회원현황 관리</h2>

<!-- 총 인원 현황  -->

	<div id="totalmember">
		<th> 총 회원수</th>
		<tr><!--  ${AdminVO.totalmember}--> 456</tr>
	</div>	
	
    <!--지점별 회원현황 막대차트-->
    <div class="chart-area">
  		<div class="chart">
			 <div id="columnchart_values" style="width: 900px; height: 500px;"></div>
		</div>
	</div>

	<!-- 서비스 등급현황 도넛차트 -->	
	<div class="chart-area">
  		<div class="chart">
			<div id="donutchart" style="width: 900px; height: 500px;"></div>
		</div>
	</div>


</div>	
	

</body>
</html>