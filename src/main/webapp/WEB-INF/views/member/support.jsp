<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Style CSS -->
<link rel="stylesheet" href="./resources/css/support.css">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">

<!-- jQuery UI -->
<link rel="stylesheet" href="./resources/jquery-ui-1.12.1/jquery-ui.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="./resources/jquery-ui-1.12.1/jquery-ui.min.js"></script>
<script src="./resources/jquery-ui-1.12.1/datepicker-ko.js"></script>
<script type="text/javascript">
//<![CDATA[
$(function(){
	$("#date3").datepicker({
		showOn: "button",
        buttonImage: "./resources/image/calendar.png",
	    buttonImageOnly: false,
		buttonText: "Select date"
	});
});
//]]>

</script>


<title>업무지원 서비스</title>
</head>
<body>

<div id="wrap">
		<div id="header">
			<jsp:include page="../section/header.jsp" />
		</div>
		
	<div class="support-request">
	
		<div class="request">
		<form class="support" name="support" method="post" action="support1.do">
			<div class="form-group1">
				<label for="name" class="label">신청인</label> 
				<input type="text" class="form-control" id="name" value="${supportVO.name}" name="name"/>
			</div>
			
			<div class="select-support">
			<label for="support-name" class="support-name">상담분야</label> 
			<input id="counse-1" type="radio" name="tab" class="tax">
				<label for="counse-1" class="tab1">세무기장</label> 
			<input id="counse-2" type="radio" name="tab" class="corporate">
				<label for="counse-2" class="tab2">법인신청</label>
			<input id="counse-3" type="radio" name="tab" class="patent">
				<label for="counse-3" class="tab3">특허신청</label>
			</div>
			
			<div class="form-group2">
				<label for="tel" class="label">연락처</label> 
				<input type="tel" class="form-control" id="tel" value="${supportVO.tel}" name="tel"/>
			</div>
			
			<div class="form-group3">
				<label for="Email" class="label">Email</label> 
				<input type="email" class="form-control" id="Email" value="${supportVO.email}" name="Email"/>
			</div>
			
			<div class="form-group4">
				<label for="date" class="label">상담희망일자</label>
					<input type="text" name="date" id="date3" size="12" readonly/>
			</div>
						
			<div class="form-group5">
				<label for="context" class="label">신청내용</label> 
				<input type="text" class="form-control" id="context">
			</div>
			
			<div class="form-group form-check">
				<input type="checkbox" class="form-check-input" id="exampleCheck1">
				<label class="label" for="exampleCheck1">Check me
					out</label>
			</div>
			<button type="submit" class="button" >신청하기</button>
		</form>
		</div>
	</div>	
		<div id="footer">
			<jsp:include page="../section/footer.jsp" />
		</div>
</div>
		
</body>
</html>