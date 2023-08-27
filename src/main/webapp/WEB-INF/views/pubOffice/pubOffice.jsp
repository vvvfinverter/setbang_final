<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<%-- <html xmlns:th="http://www.thymeleaf.org"> --%>
<head>
<meta charset="UTF-8">

<!-- Style CSS   -->

<!-- JS / Jquery -->
<script type="text/javascript" src="./resources/js/pubOffice.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<!-- Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

<!-- jQuery UI -->
<link rel="stylesheet" href="./resources/jquery-ui-1.12.1/jquery-ui.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="./resources/jquery-ui-1.12.1/jquery-ui.min.js"></script>
<script src="./resources/jquery-ui-1.12.1/datepicker-ko.js"></script>

<title>공용 오피스 예약</title>
</head>
<body>

<div id="wrap">
<div id="header">
	<jsp:include page="../section/header.jsp" />
</div>

<form name="frm">
	<!-- 아래의 이미지는 그냥 테스트 용으로 올림 이 부분은 나중에 제거 해야 할 것 같음 -->
	<img src="./resources/image/test.png" width=500px height=500px/> <br/>
	
	<label for="bookDate">예약일자: </label>
	<input type="text" class="datePicker" name="bookDate" id="bookDate" size="12" readonly/><br/>
	<!-- <input type="date" id="bookDate" name="bookDate" /> <br/> -->
	<label for="numOfPer">인원: </label> 
	<select id = "numOfPer" name="numOfPer" required>
		<option value="">인원선택</option>
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
		<option value="5">5</option>
		<option value="6">6</option>
		<option value="7">7</option>
		<option value="8">8</option>
	</select> <br/>
		<label>임대호실 : </label> 
		<select name="comboUnits" id = "comboUnits" onchange="selectBoxChange()" required="required">
			<%--  <option th:each="i : ${pubUnits}" th:value="${i.pubCode}" th:text="${i.pubUnit}"></option>--%>
 			<option value="" selected="selected">선택</option>
 			<c:forEach var="i" items="${pubUnits}">
				<option value="${i.pubCode}">${i.pubUnit}</option>
			</c:forEach> 
			</select> <br/>
	<input type="hidden" name = "selectedValue" id="selectedValue" /> 
	
	<div class="bookingStart">
		<label for="bookStart">사용시간 : </label><br/>
		<input type="radio" name="bookStart" value="08:00" />08:00<br/>
		<input type="radio" name="bookStart" value="10:00" />10:00<br/>
		<input type="radio" name="bookStart" value="13:00" />13:00<br/>
		<input type="radio" name="bookStart" value="15:00" />15:00<br/>
		<input type="radio" name="bookStart" value="17:00" />17:00<br/>
		<%--  아래와 같이 구현하려고 했을 때 방법이 너무 복잡해서 잘 안됐음  --%>
		<%-- <input type="time" id="bookStart" name="bookStart" /> <br/> --%>
	</div>

  	<input id ="btnSubmit" type="button" value="예약하기"/> 
</form>

<div id="footer">
	<jsp:include page="../section/footer.jsp" />
</div>
</div>

<script type="text/javascript">
//<![CDATA[
$(function(){
	$("#bookDate").datepicker({
		showOn: "button",
        buttonImage: "./resources/image/calendar.png",
	    buttonImageOnly: false,
		buttonText: "Select date",
		minDate: +1
	});
});
//]]>

</script>
</body>
</html>