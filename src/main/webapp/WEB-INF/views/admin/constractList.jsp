<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>임대차계약서 목록</title>

<!-- Style CSS -->
<link rel="stylesheet" href="./resources/css/constractList.css">

<!-- JS / Jquery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


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

	<h2>임대차계약서 목록</h2>
			
		
	<!-- 서비스 플랜 결제 내역 -->
	<div id="constractlist">	
	<form class="constractlist" name="constractlist" action="constractlist1.do">	
		<div class="constractTable">	

	 <table>
            <thead>
                <tr>
                    <th>NO</th>
                    <th>임차인</th>
                    <th>임차인 연락처</th>
                    <th>임대인</th>
                    <th>임대시작일</th>
                    <th>임대종료일</th>
                    <th>계약일</th>
                </tr>
            </thead>
            <c:choose>
        	<c:when test="${not empty contractList}">
            <tbody>
            <c:forEach var="constract" items="${contractList}">
                <tr>
                    <td>${constract.con_indexnum}</td>
                    <td>${constract.lessee_name}</td>
                    <td>${constract.lessee_tel}</td>
                    <td>${constract.lessor_name}</td>
                    <td>${constract.con_start_date}</td>
                    <td>${constract.con_end_date}</td>
                    <td>${constract.con_date}</td>
                </tr>
             </c:forEach>
            </tbody>
            </c:when>
            </c:choose>
        </table>		
		<button type="summit" class="button" >메인페이지</button>		
	</form>
	</div>
		</div>

		
		
		</div>
		
	<div id="adminMenu"> 
			<jsp:include page="../admin/adminMenu.jsp"/>	
	</div>

		<div id="footer">
			<jsp:include page="../section/footer.jsp" />
		</div>

<!-- JS / Jquery -->		
<script type="text/javascript" src="./resources/js/myPagePlanPayment.js"></script>		
</body>
</html>