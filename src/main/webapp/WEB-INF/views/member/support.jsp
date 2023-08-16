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
	
<!-- Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

<!-- jQuery UI -->
<link rel="stylesheet" href="./resources/jquery-ui-1.12.1/jquery-ui.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="./resources/jquery-ui-1.12.1/jquery-ui.min.js"></script>
<script src="./resources/jquery-ui-1.12.1/datepicker-ko.js"></script>
<script type="text/javascript">
//<![CDATA[
$(function(){
	$("#sup_counseling_date").datepicker({
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
			<input id="sup_code" type="radio" name="sup_code" class="tax" value="10">
				<label for="counse-1" class="tab1">세무기장</label> 
			<input id="sup_code" type="radio" name="sup_code" class="corporate" value="20">
				<label for="counse-2" class="tab2">법인신청</label>
			<input id="sup_code" type="radio" name="sup_code" class="patent" value="30">
				<label for="counse-3" class="tab3">특허신청</label>
			</div>
			
			<div class="form-group2">
				<label for="tel" class="label">연락처</label> 
				<input type="tel" class="form-control" id="tel" value="${supportVO.tel}" name="tel"/>
			</div>
			
			<div class="form-group3">
				<label for="Email" class="label">Email</label> 
				<input type="email" class="form-control" id="email" value="${supportVO.email}" name="email"/>
			</div>
			
			<div class="form-group4">
				<label for="date" class="label">상담희망일자</label>
					<input type="text" name="sup_counseling_date" id="sup_counseling_date" size="12" readonly/>
			</div>
						
			<div class="form-group5">
				<label for="context" class="label">신청내용</label> 
				<input type="text" class="form-control" id="context" name = "sup_content">	
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