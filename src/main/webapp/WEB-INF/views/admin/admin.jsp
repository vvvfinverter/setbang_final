<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SETBang</title>

<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Style CSS -->
<link rel="stylesheet" href="css/admin.css">

<!-- jQuery 라이브러리 로드 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>   

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<!-- Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

<!-- Google Chart JavaScript -->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    
</head>

<body>

<div id="wrap">
<!-- header  -->


<!-- admin -->	
	<div id="main">
			<jsp:include page="../admin/adminMain.jsp"/>
	</div>

	<div id="adminMenu"> 
			<jsp:include page="../admin/adminMenu.jsp"/>	
	</div>

<!-- footer -->
	</div>	
		<div id="footer">
			<jsp:include page="../section/footer.jsp" />
	</div>
 </div>
 
 <!-- JS -->
<script type="text/javascript" src="./resources/js/adminMainChart.js"></script>

</body>
</html>