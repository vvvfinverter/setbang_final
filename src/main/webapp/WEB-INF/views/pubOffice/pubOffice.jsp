<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<%-- <html xmlns:th="http://www.thymeleaf.org"> --%>
<head>
<meta charset="UTF-8">
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<!-- Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script type="text/javascript">

window.onload = function() {
	
	document.querySelector('#btnSubmit').addEventListener('click', function(){
		alert("btnSubmit 들어감");
		//선택한 값
		var bookDate = document.querySelector('#bookDate').value;
		var bookStartInput = document.querySelector('input[name="bookStart"]');
		var bookStartValue = bookStartInput.value;
		console.log("bookStartValue : " + bookStartValue);
		/* var bookStart = document.querySelector('#bookStart').value; */
		//날짜 시간 정보 조합
		var combinedDateTime = bookDate + ' ' + bookStartValue;
		console.log(bookDate);
		console.log(bookStartValue);
		console.log(combinedDateTime);
		
		//컨트롤러로 전송할 데이터 객체 생성
		
		frm.action = 'insertpubOfficeBooking.do';
		frm.method = 'POST';
		frm.submit();

	});
	
	
}


var selectBoxChange = function(){
	 const comboUnitSelect = document.getElementById("comboUnits");
	 const hiddenInput = document.getElementById("selectedValue");
	//let comboUnitSelect = document.getElementById("comboUnits");
	
	//  select element에서 선택된 option의 value가 저장된다.
	let selectValue = comboUnitSelect.options[comboUnitSelect.selectedIndex].value;
	console.log("selectValue : " + selectValue);
	
	// select element에서 선택된 option의 text가 저장된다.
	let selectText = comboUnitSelect.options[comboUnitSelect.selectedIndex].text;
	console.log("selectText : " + selectText);
	
	hiddenInput.value = comboUnitSelect.value;
	console.log("hidden : " + hiddenInput.value);
}


//인원 숫자를 일단 하드코딩으로 설정 했지만 추후 함수로 연결할지 고려중 
var selectBoxNumOfPeople = function(){
	 
}
	


</script>
<title>공용 오피스 예약</title>
</head>
<body>

	<div id="wrap">
<div id="header">
			<jsp:include page="../section/header.jsp" />
		</div>

<form name="frm">
	<img src="./resources/image/test.png" width=500px height=500px/> <br/>
	<label for="bookDate">예약일자: </label>
	<input type="date" id="bookDate" name="bookDate" /> <br/>
	<label for="numOfPer">인원: </label> 
	<select id = "numOfPer" name="numOfPer" required>
		<option value="">인원선택</option>
		<%-- <c:forEach var="a" items=""></c:forEach> --%>
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
		<option value="5">5</option>
		<option value="6">6</option>
		<option value="7">7</option>
		<option value="8">8</option>
	</select> <br/>
	<div class="bookingStart">
	<label for="bookStart">사용시간 : </label><br/>
	<input type="radio" name="bookStart" value="08:00" />08:00<br/>
	<input type="radio" name="bookStart" value="10:00" />10:00<br/>
	<input type="radio" name="bookStart" value="13:00" />13:00<br/>
	<input type="radio" name="bookStart" value="15:00" />15:00<br/>
	<input type="radio" name="bookStart" value="17:00" />17:00<br/>
	<!-- <input type="time" id="bookStart" name="bookStart" /> <br/> -->
	</div>
	임대호실 : <select name="comboUnits" id = "comboUnits" onchange="selectBoxChange()" required="required">
			<%--  <option th:each="i : ${pubUnits}" th:value="${i.pubCode}" th:text="${i.pubUnit}"></option>--%>
 			<option value="" selected="selected">선택</option>
 			<c:forEach var="i" items="${pubUnits}">
				<option value="${i.pubCode}">${i.pubUnit}</option>
			</c:forEach> 
			</select> <br/>
	<input type="hidden" name = "selectedValue" id="selectedValue" /> 
  	<input id ="btnSubmit" type="button" value="예약하기"/> 
</form>

		<div id="footer">
			<jsp:include page="../section/footer.jsp" />
		</div>
		</div>

</body>
</html>