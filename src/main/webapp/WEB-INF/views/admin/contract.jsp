<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<!-- Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<meta charset="UTF-8">

<!-- jQuery UI -->
<link rel="stylesheet" href="./resources/jquery-ui-1.12.1/jquery-ui.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="./resources/jquery-ui-1.12.1/jquery-ui.min.js"></script>
<script src="./resources/jquery-ui-1.12.1/datepicker-ko.js"></script>


<script type="text/javascript">
//<![CDATA[
$(function(){
	$("#contract_start").datepicker({
		showOn: "button",
        buttonImage: "./resources/image/calendar.png",
	    buttonImageOnly: false,
		buttonText: "Select date"
	});
});
//]]>

</script>
<script type="text/javascript">
//<![CDATA[
$(function(){
	$("#contract_end").datepicker({
		showOn: "button",
        buttonImage: "./resources/image/calendar.png",
	    buttonImageOnly: false,
		buttonText: "Select date"
	});
});
//]]>

</script>

<title>임대차 계약서 등록</title>
</head>
<body>

		<div id="header">
			<jsp:include page="../section/header.jsp" />
		</div>
		
<div class="wrap">
	<h2>임대차 계약서</h2>

	<form>
	<table>	
	<tr>
		<th>임차인(법인명)</th>
		<td colspan='3'><input type="text"></td>
		<td></td>
		<td></td>
	</tr>
	
	<tr>
		<th>임대인(성 명)</th>
		<td colspan='3'><input type="text"></td>
		<td></td>
		<td></td>
	</tr>
	
	<tr>
		<th>계약기간</th>
		<td><input type="text" name="contract_start" id="contract_start" size="12" readonly/>  ~</td>
		<td><input type="text" name="contract_end" id="contract_end" size="12" readonly/></td>
	</tr>
	
	<tr>
		<th>계약일</th>
		<td><input type="text">년</td>
		<td><input type="text">월</td>
		<td><input type="text">일</td>
	</table>

		<button type="submit" class="button" >등록하기</button>	
		
	</form>	
</div>

</body>
</html>