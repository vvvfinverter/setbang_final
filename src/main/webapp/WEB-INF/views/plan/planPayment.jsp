<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Style CSS -->
<link rel="stylesheet" href="./resources/css/planPayment.css">

<!-- JS / Jquery -->
<script type="text/javascript" src="./resources/js/planPayment.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<!-- Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
 
<script type="text/javascript">
/* 서비스 플랜 결제 버튼 */
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
</script>
 
    <c:choose>
        <c:when test="${sessionMemPlan == 'basic'}">
            <title>서비스 플랜 결제</title>
        </c:when>
        <c:when test="${sessionMemPlan == 'standard'}">
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
        <c:when test="${sessionMemPlan == 'standard'}">
            <h2>서비스 플랜 업그레이드</h2>
            <h6>서비스 플랜 업그레이드 후 한층 더 다양한 서비스를 이용해보세요. </h6>
        </c:when>
    </c:choose>  

<!-- 서비스 플랜  선택 -->
	<h4>서비스 플랜 선택 </h4>
<c:choose>
        <c:when test="${sessionMemPlan == 'basic'}">

<form class = "planPaymentForm" action ="post">
<div class = "planPayment" id="planPayment">
	<div class="planwrap">
    <div class="image" ><img style="width:500px; height:750px;" src='./resources/image/test.jpg' alt='test' /></div>

	<div class="plans">
    <div class="subscription-panel-offers">
      <div>
        <input class="radio-input" id="standardMonthly" name="plan" type="radio" value="1"/>
        <label class="subscription-panel-offer" for="standardMonthly" >
          	월간, 매월 지불
          <strong>Standard</strong>
          <p>₩  150,000 / 월 (VAT 포함)</p>
          	※ 해당 서비스 플랜은 결제 후 익월부터 취소가 가능합니다. <br/>
        </label>
      </div>
      
      <div>
        <input class="radio-input" id="standardAnnual" name="plan" type="radio" value="2"/>
        <label class="subscription-panel-offer" for="standardAnnual" >
         	 연간, 선지불
          <strong>Standard</strong>
          <p>₩  1,500,000 / 년 (VAT 포함)</p>
          	※ 해당 서비스  플랜은 결제 후 취소가 불가합니다.
        </label>
      </div>
      
      <div>
        <input class="radio-input" id="premiumMonthly" name="plan" type="radio" value="3"/>
        <label class="subscription-panel-offer" for="premiumMonthly" >
          	월간, 매월 지불
          <strong>Premium</strong>
          <p>₩  300,000 / 월 (VAT 포함)</p>
          	※ 해당 서비스 플랜은 결제 후 익월부터 취소가 가능합니다.
        </label>
      </div>
      
      <div>
        <input class="radio-input" id="premiumAnnual" name="plan" type="radio" value="4"/>
        <label class="subscription-panel-offer" for="premiumAnnual" >
         	 연간, 선지불
          <strong>Premium</strong>
          <p>₩  3,000,000 / 년 (VAT 포함)</p>
         	 ※ 해당 서비스 플랜은 결제 후 취소가 불가합니다.
        </label>
      </div>
<!--   <button class="button" type="submit">결제하기</button> -->
  <!-- 결제하기 모달 버튼-->
	<button type="submit" id="button" class="btn btn-primary"
	data-bs-toggle="modal" data-bs-target="#exampleModal">
	결제하기 </button>
    </div>
    </div>
    </div>
  </div>
  </form>
</c:when>  
  
<c:when test="${sessionMemPlan == 'standard'}">
<form class = "planPaymentForm" action ="post">
<div class = "planPayment" id="planPayment">
	<div class="planwrap">
    <div class="image" ><img style="width:500px; height:750px;" src='./resources/image/test.jpg' alt='test' /></div>

	<div class="plans">
    <div class="subscription-panel-offers">
      <div>
        <input class="radio-input" id="standardMonthly" name="plan" type="radio" value="1" disabled/>
        <label class="subscription-panel-offer" for="standardMonthly" >
          	월간, 매월 지불
          <strong>Standard</strong>
          <p>₩  150,000 / 월 (VAT 포함)</p>
          	<b>※ 이미 사용중인 서비스 플랜 입니다.</b>
        </label>
      </div>
      
      <div>
        <input class="radio-input" id="standardAnnual" name="plan" type="radio" value="2" disabled/>
        <label class="subscription-panel-offer" for="standardAnnual" >
         	 연간, 선지불
          <strong>Standard</strong>
          <p>₩  1,500,000 / 년 (VAT 포함)</p>
          	<b>※ 업그레이드가 불가한 서비스 플랜입니다.</b>
        </label>
      </div>
      
      <div>
        <input class="radio-input" id="premiumMonthly" name="plan" type="radio" value="3" />
        <label class="subscription-panel-offer" for="premiumMonthly" >
          	월간, 매월 지불
          <strong>Premium</strong>
          <p>₩  300,000 / 월 (VAT 포함)</p>
          	※ 해당 서비스 플랜은 결제 후 익월부터 취소가 가능합니다.
        </label>
      </div>
      
      <div>
        <input class="radio-input" id="premiumAnnual" name="plan" type="radio" value="4" disabled/>
        <label class="subscription-panel-offer" for="premiumAnnual" >
         	 연간, 선지불
          <strong>Premium</strong>
          <p>₩  3,000,000 / 년 (VAT 포함)</p>
         	<b>※ 업그레이드가 불가한 서비스 플랜입니다.</b>
        </label>
      </div>
  <!-- 결제하기 모달 버튼-->
	<button type="button" id="button" class="btn btn-primary"
	data-bs-toggle="modal" data-bs-target="#exampleModal">
	결제하기 </button>
    </div>
    </div>
    </div>
  </div>
  </form>
        </c:when>
    </c:choose>    
    
    
    <!-- 서비스 플랜 결제하기 모달 -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">서비스 플랜 결제</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
        <form class = "planPaymentForm" action="" method="post">
      <div class="modal-body">
            <input type="hidden" name="" id=""/>
            <label for="">서비스 플랜</label> &nbsp;&nbsp;&nbsp;&nbsp;
            <input type ="text" name="" id="" value=""/><br/><br/>
            <label for="savedCard">결제 카드 선택</label> &nbsp;
			<select name="savedCard" id = "savedCard" onchange="selectedBoxChange()" required="required">
 			<option value="" selected="selected">선택</option>
 			<c:forEach var="i" items="${pubUnits}">
				<option value="${i.pubCode}">${i.pubUnit}</option>
			</c:forEach> 
			</select><br/><br/>
		    <label for="cardEasypw">간편 비밀번호</label>&nbsp; &nbsp;
		    <input type="password" id="cardEasypw" name="cardEasypw" maxlength="6" pattern="[0-9]*" required/>
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
    
    
    
    
  </div>

		<div id="footer">
			<jsp:include page="../section/footer.jsp" />
		</div>


</body>
</html>