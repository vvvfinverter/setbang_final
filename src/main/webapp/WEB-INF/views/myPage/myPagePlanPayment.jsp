<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서비스 플랜 결제 내역</title>

<!-- Style CSS -->
<link rel="stylesheet" href="./resources/css/myPagePlanPayment.css">

<!-- JS / Jquery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- <script type="text/javascript" src="./resources/js/myPagePlanPayment.js"></script>
 -->
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<!-- Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

<script type="text/javascript">
$(document).ready(function () {
	$("#btn-cancel").click(function() {
	    if (confirm("정말로 서비스 플랜 자동결제를 취소하시겠습니까?😢\n더욱 많은 혜택들이 회원님을 기다리고 있어요!\n다양한 서비스를 제공하는 SETbang의 혜택을 놓치지마세요👍")){
	        alert("자동결제가 정상적으로 취소되었습니다.\n다음에 또 이용해주세요!💖");
	        form.submit(); // 폼 제출
	    } else {
	        alert("자동결제를 취소하지 않았습니다.\nSETbang만의 서비스를 더 오래 즐겨주세요!😊");
	    	event.preventDefault(); // 이벤트 전파 막기
	        return;
	    }
	});
});
</script>
</head>
<body>

		<div id="header">
			<jsp:include page="../section/header.jsp" />
		</div>
		
		
		<div class="wrap">

	<h2>서비스 플랜 관리</h2>
	<h6>서비스 플랜 결제 및 결제 내역들을 확인하실 수 있습니다.</h6>
	
	
	
	<!-- 서비스 플랜 결제로 이동 -->
	<div id="planApply">
    <c:choose>
        <c:when test="${sessionMemPlan == 'basic'}">
            <h4>서비스 플랜 결제</h4>
            <div class="buttonGroup">
            <a href="planApply.do"><button type="button" class="goPaymentButton">서비스 플랜 결제 💳</button></a>
            </div>
        </c:when>
        <c:when test="${sessionMemPlan == 'standard_monthly'}">
            <h4>서비스 플랜 업그레이드</h4>
            <div class="buttonGroup">
            <a href="planApply.do"><button type="button" class="goPaymentButton">서비스 플랜 업그레이드 💳</button></a>
            </div>
        </c:when>		
     </c:choose>
	</div>	
		
		
		
	<!-- 서비스 플랜 결제 내역 -->
	<div id="planPaymentList">	
			<h4>서비스 플랜 결제 내역</h4>
		
		<div class="planPaymentTable">	
 <table>
            <thead>
                <tr>
                    <th>NO</th>
                    <th>서비스 플랜명</th>
                    <th>결제일</th>
                    <th>시작일</th>
                    <th>종료일</th>
                    <th>다음 결제일</th>
                    <th>결제금액 (VAT 포함)</th>
                    <th>결제방법</th>
                </tr>
            </thead>
            <c:choose>
        	<c:when test="${not empty planPaymentList}">
            <tbody>
            <c:forEach var="plan" items="${planPaymentList}">
                <tr>
                    <td>${plan.plan_payment_no }</td>
                    <td>${plan.plan_name}</td>
                    <td>${plan.payment_date}</td>
                    <td>${plan.plan_start}</td>
                    <td>${plan.plan_end}</td>
                    <td>${plan.next_plan_start}</td>
                    <td>${plan.plan_price}</td>
                    <td>${plan.card_name} ${plan.card_no }</td>
                </tr>
             </c:forEach>
            </tbody>
            </c:when>
            <c:otherwise>
            <tbody>
                <tr>
                    <td colspan="8"><h6 class="emptyPlanPayment">결제된 서비스 플랜 내역이 없습니다.</h6></td>
                </tr>
            </tbody>
            </c:otherwise>
            </c:choose>
        </table>		
	</div>
		</div>
		
		
	<!-- 자동결제 취소 -->
		<div class="cancelPlanPayment">
	  <form class="form" action="cancelAutoPlanPayment.do" method="post">
		<button type="submit" class="button" id="btn-cancel">자동결제 취소하기</button>
		</form>
		</div>
		
		
		
		
		</div>

		<div id="myPageMenu">
			<jsp:include page="../myPage/myPageMenu.jsp" />
		</div>
		<div id="footer">
			<jsp:include page="../section/footer.jsp" />
		</div>
</body>
</html>