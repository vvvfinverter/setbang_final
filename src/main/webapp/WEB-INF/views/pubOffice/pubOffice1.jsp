<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Style CSS -->
<link rel="stylesheet" href="./resources/css/header.css">

<title>공용 오피스 예약</title>
</head>
<body>

<div class="accordion" id="accordionExample">
  <div class="accordion-item">
    <h2 class="accordion-header">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
        	${public1}
      </button>
    </h2>
    <div id="collapseOne" class="accordion-collapse collapse show" data-bs-parent="#accordionExample">
      <div class="accordion-body">
      	<a href="pubOffice2.do">
			<img src="./resources/image/test.png" width=500px height=500px/>
		</a >
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
        	${public2}
      </button>
    </h2>
    <div id="collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
      <div class="accordion-body">
      	<a href=""> 
			<img src="./resources/image/setbang1.jpg" width=500px height=500px/>
		</a>
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
        	${public3}
      </button>
    </h2>
    <div id="collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
      <div class="accordion-body">
      	<a href="">
			<img src="./resources/image/test.jpg" width=500px height=500px/>
		</a>
      </div>
    </div>
  </div>
</div>

<%-- 
<table border="1" bordercolor="blue" width ="500" height="300" align = "center" >
    <tr bgcolor="blue" align ="center">
	<td colspan = "3" span style="color:white">공용오피스 예약</td>
    </tr>
    <tr align = "center" bgcolor="skybule">
		<td>멀티미디어실</td>
		<td>회의실</td>
		<td>컨퍼런스룸</td>
    </tr>
    <tr>
		<td>
		<a href="pubOffice2.do">
			<img src="./resources/image/test.png" width=500px height=500px/>
			멀티미디어실
		</a>
		</td>
		<td>
		<a href="">
			<img src="./resources/image/setbang1.jpg" width=500px height=500px/>
			회의실
		</a>
		</td>
		<td>
		<a href="">
			<img src="./resources/image/test.jpg" width=500px height=500px/>
			컨퍼런스룸
		</a>
		</td>
    </tr>
</table>
--%>

</body>
</html>