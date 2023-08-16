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
		var bookStart = document.querySelector('#bookStart').value;
		var bookEnd = document.querySelector('#bookEnd').value;
		//날짜 시간 정보 조합
		var combinedDateTime = bookDate + ' ' + bookStart + '-' + bookEnd;
		console.log(bookDate);
		console.log(bookStart);
		console.log(bookEnd);
		console.log(combinedDateTime);
		
		//컨트롤러로 전송할 데이터 객체 생성
		
		frm.action = 'insertpubOfficeBooking.do';
		frm.method = 'POST';
		frm.submit();

	});
	
	
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
	<input type="text" name="numOfPer"> <br />
	사용시간 : <input type="time" id="bookStart" name="bookStart" /> ~ <input type="time" id="bookEnd" name="bookEnd"/> <br/>
	임대호실 : <select>
			<%--  <option th:each="i : ${pubUnits}" th:value="${i.pubCode}" th:text="${i.pubUnit}"></option>--%>
 			<option value="">선택</option>
 			<c:forEach var="i" items="${pubUnits}">
				<option value="${i.pubCode}">${i.pubUnit}</option>
			</c:forEach> 
			</select> <br/> 
  	<input id ="btnSubmit" type="button" value="예약하기"/> 
</form>

		<div id="footer">
			<jsp:include page="../section/footer.jsp" />
		</div>
		</div>

</body>
</html>