<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>임대차계약서</title>

<!-- Style CSS -->
<link rel="stylesheet" href="./resources/css/myPageConstractlist.css">

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

	<h2>임대차계약서</h2>
			
		
	<!-- 서비스 플랜 결제 내역 -->
	<div id="constractlist">	
		<div class="constractlistTable">	
	 <table>
            <thead>
                <tr>
                    <th>NO</th>
                    <th>임대지점</th>
                    <th>임대호실</th>
                    <th>계약시작일</th>
                    <th>계약종료일</th>
                    <th>계약일</th>
                </tr>
            </thead>
            <c:choose>
        	<c:when test="${not empty constractlist}">
            <tbody>
            <c:forEach var="constract" items="${constractlist}">
                <tr>
                    <td>${constract.constract_indexnum}</td>                    
                    <td>${constract.branch_name}</td>
                    <td>${constract.priv_unit}</td>
                    <td>${constract.con_start_date}</td>
                    <td>${constract.con_end_date}</td>
                    <td>${constract.con_date}</td>                                                                                             
                </tr>
             </c:forEach>
            </tbody>
            </c:when>
            </c:choose>
        </table>		
	</div>
		</div>
	
		</div>
		
		<div id="myPageMenu">
			<jsp:include page="../myPage/myPageMenu.jsp" />
		</div>

		<div id="footer">
			<jsp:include page="../section/footer.jsp" />
		</div>

<!-- JS / Jquery -->		
<script type="text/javascript" src="./resources/js/myPagePlanPayment.js"></script>		
</body>
</html>