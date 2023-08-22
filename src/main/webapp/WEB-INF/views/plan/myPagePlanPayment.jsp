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
<script type="text/javascript" src="./resources/js/myPagePlanPayment.js"></script>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<!-- Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>


</head>
<body>

		<div id="header">
			<jsp:include page="../section/header.jsp" />
		</div>
		
		
		<div class="wrap">


	<!-- 서비스 플랜 결제로 이동 -->
	<div id="planApply">
    <c:choose>
        <c:when test="${sessionMemPlan == 'basic'}">
            <h2>서비스 플랜 결제</h2>
            <h6>서비스 플랜 결제 후 다양한 서비스를 이용해보세요.</h6>
            <div class="test">
            <button>서비스 플랜 결제</button>
            </div>
        </c:when>
        <c:when test="${sessionMemPlan == 'standard_monthly'}">
            <h2>서비스 플랜 업그레이드</h2>
            <h6>서비스 플랜 업그레이드 후 한층 더 다양한 서비스를 이용해보세요. </h6>
            <div class="test">
            <button>서비스 플랜 업그레이드</button>
            </div>
        </c:when>		
     </c:choose>
	</div>	
		
		
		
	<!-- 서비스 플랜 결제 내역 -->
	<div id="planPaymentList">	
			<h2>서비스 플랜 결제 내역</h2>
		<h6>결제된 서비스 플랜 결제 내역들을 확인하실 수 있습니다.</h6>
		
		<div class="planPaymentTable">	
 <table>
            <thead>
                <tr>
                    <th>NO</th>
                    <th>이용중인 서비스 플랜명</th>
                    <th>결제일</th>
                    <th>시작일</th>
                    <th>종료일</th>
                    <th>다음 결제일</th>
                    <th>결제금액 (VAT 포함)</th>
                    <th>결제방법</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>서비스</td>
                    <td>2023-08-01</td>
                    <td>2023-08-02</td>
                    <td>2023-08-03</td>
                    <td>2023-08-04</td>
                    <td>150,000원</td>
                    <td>신한카드 1111-1111-1111-1111</td>
                </tr>
            </tbody>
        </table>		
		
		
	</div>
		</div>

		
		
		</div>

		<div id="myPageMenu">
			<jsp:include page="../member/myPageMenu.jsp" />
		</div>
		<div id="footer">
			<jsp:include page="../section/footer.jsp" />
		</div>
	

</body>
</html>