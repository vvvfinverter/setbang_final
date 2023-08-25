<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Style CSS -->
<link rel="stylesheet" href="./resources/css/supportApply.css">

<!-- JS / Jquery -->
<script type="text/javascript" src="./resources/js/supportApply.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

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
				<h6>제휴 업체를 통해 업무 시 필요한 서류 작성을 도와드립니다.<br/>
					상담 예약 후 업무지원 서비스를 받아보세요.</h6>
		
	<div class="supportBooking">
		<form class="support" name="support" method="post" action="support1.do">
			
			<div class="group">
			<div class="left">
				<label for="name" class="label">신청인</label>
			</div>
				<input type="text" class="input" id="name" value="${supportVO.name}" name="name" required/>
			</div>
			
			
		<div class="group">
			<div class="left">
        <label for="support-name" class="support-name">상담분야</label>
    </div>
</div>
<div class="sup_code">
    <div class="support-panel-offers">
        <div>
            <input class="radio-input tax-radio" id="tax" name="sup_code" type="radio" value="10" required/>
            <label for="tax" class="tax support-panel-offer">
                <strong>세무기장 서비스</strong>
                <img src='./resources/image/tax.png'/>
                법인세 기장 / 세무진단 / 세무감사 대비 / 투자 및 인수 등
            </label>
        </div>
        <div>
            <input class="radio-input corporate-radio" id="corporate" name="sup_code" type="radio" value="20" required/>
            <label for="corporate" class="corporate support-panel-offer">
                <strong>법인신청 서비스</strong>
                <img src='./resources/image/corporate.png'/>
                법인설립,청산,해산 / 유,무상증자 / 회사계속등기 등
            </label>
        </div>
        <div>
            <input class="radio-input patent-radio" id="patent" name="sup_code" type="radio" value="30" required/>
            <label for="patent" class="patent support-panel-offer">
                <strong>특허신청 서비스</strong>
                <img src='./resources/image/patent.png'/>
                특허등록, 상표등록, 디자인등록, 저작권등록
            </label>
        </div>
    </div>
</div>



			
			<div class="group">
			<div class="left">
				<label for="tel" class="label">휴대폰 번호</label>
			</div>	
				<input type="tel" class="input" id="tel" value="${supportVO.tel}" name="tel" required/>
			</div>
			
			<div class="group">
			<div class="left">
				<label for="Email" class="label">이메일 주소</label>
			</div>	
				<input type="email" class="input" id="email" value="${supportVO.email}" name="email" required/>
			</div>
			
			<div class="group">
			<div class="left">
				<label for="date" class="label">상담 희망일자</label>
			</div>
					<input type="text" class="datePicker" name="sup_counseling_date" id="sup_counseling_date" size="12" readonly/>
			</div>
						
			<div class="group">
			<div class="left">
				<label for="context" class="label">신청내용</label>
			</div>
				<!-- <input type="text" class="input" id="context" name = "sup_content" required/>	 -->
				<textarea class="input" id="context" name="sup_content" required></textarea>
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