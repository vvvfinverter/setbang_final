// 지점별 회원수 차트
    google.charts.load("current", {packages:['corechart']});
    google.charts.setOnLoadCallback(drawCharts);
    
    
    function drawCharts() {
      drawColumnChart();
      drawDonutChart();
    }
    
   
    function drawColumnChart() {
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
        width: 900,
        height: 700,
        bar: {groupWidth: "95%"},
        legend: { position: "none" },
      };
      var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
      chart.draw(view, options);
  }

  
  // 서비스 등급현황

      function drawDonutChart() {
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