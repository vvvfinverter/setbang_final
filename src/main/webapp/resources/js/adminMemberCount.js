// 지점별 회원수 차트
    google.charts.load("current", {packages:['corechart']});
    google.charts.setOnLoadCallback(drawCharts);
       
    function drawCharts() {
      drawColumnChart();
      drawDonutChart();
    }
    
   function drawColumnChart() {
		var guromember = parseInt($("#guromember").val());
		var pangyomember = parseInt($("#pangyomember").val());
		var gangnammember = parseInt($("#gangnammember").val());
		
      var data = google.visualization.arrayToDataTable([
        ["지점", "회원수", { role: "style" } ],
 	  	["구로점", guromember, "#b87333"],
    	["강남점", gangnammember, "gold"],
   		["판교점", pangyomember, "silver"]
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
        height: 450,
        bar: {groupWidth: "90%"},
        legend: { position: "none" },
      };
      var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
      chart.draw(view, options);
  }

  
  // 서비스 등급현황

      function drawDonutChart() {
      	var basic = parseInt($("#basic").val());
		var standard_monthly = parseInt($("#standard_monthly").val());
		var standard_annual = parseInt($("#standard_annual").val());
		var premium_monthly = parseInt($("#premium_monthly").val());
		var premium_annual = parseInt($("#premium_annual").val());		
			
        var data = google.visualization.arrayToDataTable([
          ['서비스플랜', '회원수'],
          ['Basic',     basic],
          ['Standard_monthly',  standard_monthly],
          ['Standard_annual',  standard_annual],
          ['Premium_monthly',  premium_monthly],
          ['Premium_annual',  premium_annual],
        ]);

        var options = {
          title: '서비스 등급별 현황',
          pieHole: 0.4,
          width: 600,
          height: 450,
        };

        var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
        chart.draw(data, options);
      }