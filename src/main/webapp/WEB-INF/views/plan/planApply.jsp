<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Style CSS -->
<link rel="stylesheet" href="./resources/css/planApply.css">

<!-- JS / Jquery -->
<script type="text/javascript" src="./resources/js/planApply.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<!-- Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
 
<script type="text/javascript">
/* 모달 - 서비스 플랜 결제 버튼 */
document.addEventListener('DOMContentLoaded', function() {
    const radioInputs = document.querySelectorAll('.radio-input');
    const modalButton = document.getElementById('button');

    radioInputs.forEach(input => {
        input.addEventListener('change', () => {
            if (input.checked) {
                modalButton.disabled = false; // 라디오 버튼 선택 시 버튼 활성화
            }
        });
    });
    // 페이지 로딩 시에는 버튼 비활성화 상태로 시작
    modalButton.disabled = true;
});

/* 모달 - 서비스 플랜 코드/플랜명(디테일) 가져오기 */
$(function() {
    $('input.radio-input').change(function() {
        if ($(this).is(':checked')) {
            var planCode = $(this).val();
            var planName = $(this).data('plan-name');
            $('#plan_code').val(planCode);
            $('#plan_name').val(planName);
        }
    });
});

/* 모달 - selectBox */
var selectedBoxChange = function() {
	  const cardCodeSelect = document.getElementById("card_code");
	  let selectedValue = cardCodeSelect.value;
	  let selectedText = cardCodeSelect.options[cardCodeSelect.selectedIndex].text;
	}
	
/* 모달 - 결제 완료 or 결제 실패 alert */
var message = "<%= request.getParameter("message") %>";
if (message === "success") {
	alert("결제가 완료되었습니다.");
} else if (message === "failed") {
	alert("결제가 실패하였습니다.");
}

</script>
 
    <c:choose>
        <c:when test="${sessionMemPlan == 'basic'}">
            <title>서비스 플랜 결제</title>
        </c:when>
        <c:when test="${sessionMemPlan == 'standard_monthly'}">
            <title>서비스 플랜 업그레이드</title>
        </c:when>
    </c:choose>  
</head>
<body>

		<div id="header">
			<jsp:include page="../section/header.jsp" />
		</div>


<div class="wrap">

    <c:choose>
        <c:when test="${sessionMemPlan == 'basic'}">
            <h2>서비스 플랜 결제</h2>
            <h6>서비스 플랜 결제 후 다양한 서비스를 이용해보세요.</h6>
        </c:when>
        <c:when test="${sessionMemPlan == 'standard_monthly'}">
            <h2>서비스 플랜 업그레이드</h2>
            <h6>서비스 플랜 업그레이드 후 한층 더 다양한 서비스를 이용해보세요. </h6>
        </c:when>
    </c:choose>  

<!-- 서비스 플랜 선택 -->
	<h4>서비스 플랜 선택 </h4>
	
<c:choose>

<c:when test="${sessionMemPlan == 'basic'}">
<form class = "planPaymentForm" action="getPlanName.do" method="post">
<div class = "planPayment" id="planPayment">
	<div class="planwrap">
    <div class="image" ><img style="width:500px; height:750px;" src='./resources/image/test.jpg' alt='test' /></div>

	<div class="plans">
    <div class="subscription-panel-offers">
      <div>
        <input class="radio-input" id="standardMonthly" name="plan_code" type="radio" value="1" data-plan-name="standard_monthly"/>
        <label class="subscription-panel-offer" for="standardMonthly" >
          	월간, 매월 지불
          <strong>Standard</strong>
          <p>₩  150,000 / 월 (30일, VAT 포함)</p>
          	※ 해당 서비스 플랜은 결제 후 익월부터 취소가 가능합니다. <br/>
        </label>
      </div>
      
      <div>
        <input class="radio-input" id="standardAnnual" name="plan_code" type="radio" value="2" data-plan-name="standard_annual"/>
        <label class="subscription-panel-offer" for="standardAnnual" >
         	 연간, 선지불
          <strong>Standard</strong>
          <p>₩  1,500,000 / 년 (365일, VAT 포함)</p>
          	※ 해당 서비스  플랜은 결제 후 취소가 불가합니다.
        </label>
      </div>
      
      <div>
        <input class="radio-input" id="premiumMonthly" name="plan_code" type="radio" value="3" data-plan-name="premium_monthly"/>
        <label class="subscription-panel-offer" for="premiumMonthly" >
          	월간, 매월 지불
          <strong>Premium</strong>
          <p>₩  300,000 / 월 (30일, VAT 포함)</p>
          	※ 해당 서비스 플랜은 결제 후 익월부터 취소가 가능합니다.
        </label>
      </div>
      
      <div>
        <input class="radio-input" id="premiumAnnual" name="plan_code" type="radio" value="4" data-plan-name="premium_annual"/>
        <label class="subscription-panel-offer" for="premiumAnnual" >
         	 연간, 선지불
          <strong>Premium</strong>
          <p>₩  3,000,000 / 년 (365일, VAT 포함)</p>
         	 ※ 해당 서비스 플랜은 결제 후 취소가 불가합니다.
        </label>
      </div>
  <!-- 결제하기 모달 버튼-->
	<button type="submit" id="button" class="btn btn-primary"
	data-bs-toggle="modal" data-bs-target="#exampleModal">
	결제하기 </button>
    </div>
    </div>
    </div>
  </div>
  </form>
  
      <!-- task - 모달창 끄면 리셋시키기, ajax로 비밀번호 확인 -->
    <!-- 서비스 플랜 결제하기 모달 -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">서비스 플랜 결제</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
        <form class = "planPaymentForm" action="planPayment.do" method="post">
      <div class="modal-body">
            <input type="hidden" name="plan_code" id="plan_code" value=""/>
            <label for="">서비스 플랜</label> &nbsp;&nbsp;&nbsp;&nbsp;
            <input type ="text" name="plan_name" id="plan_name" value="" disabled/><br/><br/>
            <label for="savedCard">결제 카드 선택</label> &nbsp;
			<select name="card_code" id = "card_code" onchange="selectedBoxChange()" required="required">
 			<option value="" selected="selected">선택</option>
 			<!-- task - 카드가 없을때 카드 등록 후 이용해주세요. 띄우기 -->
 			<c:forEach var="card" items="${cardList}">
	                <option value="${card.card_code}">${card.card_name} ${card.card_no}</option>
			</c:forEach> 
			</select><br/><br/>
		    <label for="cardEasypw">간편 비밀번호</label>&nbsp; &nbsp;
		    <input type="password" id="card_easypw" name="card_easypw" maxlength="6" pattern="[0-9]*" required/>
		    <span id="cardEasypwMessage"></span>
      </div>
      <div class="modal-footer">
        <button id="btn-payment" type="submit" class="btn btn-primary">결제하기</button>
        <button id="btn-cancle" type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
      </div>
      </form>
    </div>
  </div>
</div>
</c:when>  
  
  
<c:when test="${sessionMemPlan == 'standard_monthly'}">
<form class = "planPaymentForm" action="getPlanName.do" method="post">
<div class = "planPayment" id="planPayment">
	<div class="planwrap">
    <div class="image" ><img style="width:500px; height:750px;" src='./resources/image/test.jpg' alt='test' /></div>

	<div class="plans">
    <div class="subscription-panel-offers">
      <div>
        <input class="radio-input" id="standardMonthly" name="plan_code" type="radio" value="1" data-plan-name="standard_monthly" disabled/>
        <label class="subscription-panel-offer" for="standardMonthly" >
          	월간, 매월 지불
          <strong>Standard</strong>
          <p>₩  150,000 / 월 (30일, VAT 포함)</p>
          	<b>※ 이미 사용중인 서비스 플랜 입니다.</b>
        </label>
      </div>
      
      <div>
        <input class="radio-input" id="standardAnnual" name="plan_code" type="radio" value="2" data-plan-name="standard_annual" disabled/>
        <label class="subscription-panel-offer" for="standardAnnual" >
         	 연간, 선지불
          <strong>Standard</strong>
          <p>₩  1,500,000 / 년 (365일, VAT 포함)</p>
          	<b>※ 업그레이드가 불가한 서비스 플랜입니다.</b>
        </label>
      </div>
      
      <div>
        <input class="radio-input" id="premiumMonthly" name="plan_code" type="radio" value="3" data-plan-name="premium_monthly"/>
        <label class="subscription-panel-offer" for="premiumMonthly" >
          	월간, 매월 지불
          <strong>Premium</strong>
          <p>₩  300,000 / 월 (30일, VAT 포함)</p>
          	※ 해당 서비스 플랜은 결제 후 익월부터 취소가 가능합니다.
        </label>
      </div>
      
      <div>
        <input class="radio-input" id="premiumAnnual" name="plan_code" type="radio" value="4" data-plan-name="premium_annual" disabled/>
        <label class="subscription-panel-offer" for="premiumAnnual" >
         	 연간, 선지불
          <strong>Premium</strong>
          <p>₩  3,000,000 / 년 (365일, VAT 포함)</p>
         	<b>※ 업그레이드가 불가한 서비스 플랜입니다.</b>
        </label>
      </div>
  <!-- 결제하기 모달 버튼-->
	<button type="button" id="button" class="btn btn-primary"
	data-bs-toggle="modal" data-bs-target="#exampleModal" data-plancode="">
	결제하기 </button>
    </div>
    </div>
    </div>
  </div>
  </form>
  
    <!-- task - 모달창 끄면 리셋시키기, ajax로 비밀번호 확인 -->
    <!-- 서비스 플랜 결제하기 모달 -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">서비스 플랜 결제</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
        <form class = "planPaymentForm" action="planUpgrade.do" method="post">
      <div class="modal-body">
            <input type="hidden" name="plan_code" id="plan_code" value=""/>
            <label for="">서비스 플랜</label> &nbsp;&nbsp;&nbsp;&nbsp;
            <input type ="text" name="plan_name" id="plan_name" value="" disabled/><br/><br/>
            <label for="savedCard">결제 카드 선택</label> &nbsp;
			<select name="card_code" id = "card_code" onchange="selectedBoxChange()" required="required">
 			<option value="" selected="selected">선택</option>
 			<!-- task - 카드가 없을때 카드 등록 후 이용해주세요. 띄우기 -->
 			<c:forEach var="card" items="${cardList}">
	                <option value="${card.card_code}">${card.card_name} ${card.card_no}</option>
			</c:forEach> 
			</select><br/><br/>
		    <label for="cardEasypw">간편 비밀번호</label>&nbsp; &nbsp;
		    <input type="password" id="card_easypw" name="card_easypw" maxlength="6" pattern="[0-9]*" required/>
		    <span id="cardEasypwMessage"></span>
      </div>
      <div class="modal-footer">
        <button id="btn-payment" type="submit" class="btn btn-primary">결제하기</button>
        <button id="btn-cancle" type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
      </div>
      </form>
    </div>
  </div>
</div>


        </c:when>
    </c:choose>    
    
    
    
  </div>

		<div id="footer">
			<jsp:include page="../section/footer.jsp" />
		</div>


</body>
</html>