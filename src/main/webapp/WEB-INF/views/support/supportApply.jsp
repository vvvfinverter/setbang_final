<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Style CSS -->
<link rel="stylesheet" href="./resources/css/supportApply.css">

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


<title>업무지원 신청</title>
</head>
<body>

		
		
		<div id="header">
			<jsp:include page="../section/header.jsp" />
		</div>

<div id="wrap">
				<h2>업무지원 신청</h2>
		<h6>업무에 필요한 서류 작성을 도와드립니다.<br/>
			상담 예약 후 필요한 업무지원 서비스를 받아보세요.</h6>
		
	<div class="supportBooking">
		<form class="support" name="support" method="post" action="support1.do">
			
			<div class="group">
				<label for="name" class="label">신청인</label><br/> 
				<input type="text" class="input" id="name" value="${supportVO.name}" name="name" required/>
			</div>
			
			<div class="group">
			<div class="select-support">
			<label for="support-name" class="support-name">상담분야</label> <br/>
			<input id="sup_code" type="radio" name="sup_code" class="tax" value="10" required/>
				<label for="counse-1" class="tab1">세무기장</label> 
			<input id="sup_code" type="radio" name="sup_code" class="corporate" value="20" required/>
				<label for="counse-2" class="tab2">법인신청</label>
			<input id="sup_code" type="radio" name="sup_code" class="patent" value="30" required/>
				<label for="counse-3" class="tab3">특허신청</label>
			</div>
			</div>
			
			<div class="group">
				<label for="tel" class="label">휴대폰 번호</label><br/> 
				<input type="tel" class="input" id="tel" value="${supportVO.tel}" name="tel" required/>
			</div>
			
			<div class="group">
				<label for="Email" class="label">이메일 주소</label><br/> 
				<input type="email" class="input" id="email" value="${supportVO.email}" name="email" required/>
			</div>
			
			<div class="group">
				<label for="date" class="label">상담 희망일자</label><br/>
					<input type="text" class="datePicker" name="sup_counseling_date" id="sup_counseling_date" size="12" readonly/>
			</div>
						
			<div class="group">
				<label for="context" class="label">신청내용</label><br/> 
				<input type="text" class="input" id="context" name = "sup_content" required/>	
			</div>

			<button type="submit" class="button">신청하기</button>
		</form>
		</div>
	</div>	




		<div id="footer">
			<jsp:include page="../section/footer.jsp" />
		</div>
		
<script type="text/javascript">
//<![CDATA[
$(function(){
	$("#sup_counseling_date").datepicker({
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