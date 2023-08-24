<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<!-- Style CSS -->
<link rel="stylesheet" href="./resources/css/myPageMenu.css">


<title>마이페이지 메뉴</title>
</head>
<body>

<div class = "sidebar-container">
<aside class="side-bar">
  <section class="side-bar__icon-box">
    <section class="side-bar__icon-1">
      <div></div>
      <div></div>
      <div></div>
    </section>
  </section>
  <div class ="myInfo">
    <div class ="profile">
	<a href ="myPagePwCheck.do"><img style="width:100px; height:100px;" src='./resources/image/profile.png' alt='top' /></a>
    </div>
    <div class = "myInfo1">
    
<label>
    <c:choose>
        <c:when test="${sessionMemPlan == 'basic'}">
            <img style="width: 20px; height: 20px;" src='./resources/image/basic.png' alt="Basic Plan"/>
        </c:when>
        <c:when test="${sessionMemPlan == 'standard_monthly' || sessionMemPlan == 'standard_annual'}">
            <img style="width: 20px; height: 20px;" src='./resources/image/standard.png' alt="Standard Plan"/>
        </c:when>
        <c:when test="${sessionMemPlan == 'premium_monthly' || sessionMemPlan == 'premium_annual'}">
            <img style="width: 20px; height: 20px;" src='./resources/image/premium.png' alt="Premium Plan"/>
        </c:when>
    </c:choose>     
    ${sessionName} 회원님
</label>
    
    </div>
    <div class = "myInfo2">
    <a class="no-underline" href ="myPagePwCheck.do">내 정보 변경</a>
    </div>
    </div>
  <ul>
    <li>
      <a class="no-underline" href="pubbookinglist.do">예약·서비스 내역</a>
      
          <c:choose>
        <c:when test="${sessionMemPlan == 'basic'}">
        <ul>
	        <li><a class="no-underline" href="pubbookinglist.do">공용오피스 예약 내역</a></li>
	        <li><a class="no-underline" href="#">물품 신청 내역</a></li>
     	</ul>
        </c:when>
        <c:when test="${sessionMemPlan == 'standard_monthly' || sessionMemPlan == 'standard_annual'}">
		<ul>
	        <li><a class="no-underline" href="pubbookinglist.do">공용 오피스 예약 내역</a></li>
	        <li><a class="no-underline" href="#">물품 신청 내역</a></li>
	        <li><a class="no-underline" href="supportlist.do">업무지원 신청 내역</a></li>
      	</ul>
        </c:when>
        <c:when test="${sessionMemPlan == 'premium_monthly' || sessionMemPlan == 'premium_annual'}">
        <ul>
	        <li><a class="no-underline" href="pubbookinglist.do">공용 오피스 예약 내역</a></li>
	        <li><a class="no-underline" href="#">물품 신청 내역</a></li>
	        <li><a class="no-underline" href="supportlist.do">업무지원 신청 내역</a></li>
	        <li><a class="no-underline" href="partnerlist.do">협력업체 신청 내역</a></li>
      	</ul>
        </c:when>
    </c:choose>  
    
    </li>
    <li>
      <a class="no-underline" href="myPagePlanPayment.do">서비스 플랜 관리</a>
      
                <c:choose>
        <c:when test="${sessionMemPlan == 'basic'}">
        <ul>
	        <li><a class="no-underline" href="myPagePlanPayment.do#planApply">서비스 플랜 결제</a></li>
	        <li><a class="no-underline" href="myPagePlanPayment.do#planPaymentList">서비스 플랜 결제내역</a></li>
     	</ul>
        </c:when>
        <c:when test="${sessionMemPlan == 'standard_monthly'}">
        <ul>
	        <li><a class="no-underline" href="myPagePlanPayment.do#planApply">서비스 플랜 업그레이드</a></li>
	        <li><a class="no-underline" href="myPagePlanPayment.do#planPaymentList">서비스 플랜 결제내역</a></li>
     	</ul>
        </c:when>
        <c:when test="${sessionMemPlan == 'standard_annual' || sessionMemPlan == 'premium_monthly' || sessionMemPlan == 'premium_annual'}">
        <ul>
	        <li><a class="no-underline" href="myPagePlanPayment.do#planPaymentList">서비스 플랜 결제내역</a></li>
     	</ul>
        </c:when>
    </c:choose>  
      
    </li>
    <li>
      <a class="no-underline" href="myPageCard.do">간편결제 관리</a>
            <ul>
        <li><a class="no-underline" href="myPageCard.do#savedCard">등록된 카드</a></li>
        <li><a class="no-underline" href="myPageCard.do#addCard">카드 등록</a></li>
      </ul>
    </li>
    <li>
      <a class="no-underline" href="#">임대차 내역</a>
    </li>
    <li>
      <a class="no-underline" href="#">자주 묻는 질문</a>
    </li>
  </ul>
  </aside>
  </div>



</body>
</html>