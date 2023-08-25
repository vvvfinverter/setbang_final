<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>협력업체서비스 신청목록</title>

<!-- Style CSS -->
<link rel="stylesheet" href="./resources/css/myPageItemlist.css">

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

	<h2>물품신청 현황</h2>
			
		
	<!-- 서비스 플랜 결제 내역 -->
	<div id="itemlist">	
		<div class="itemlistTable">	
	 <table>
            <thead>
                <tr>
                    <th>NO</th>
                    <th>카테고리명</th>
                    <th>신청품목</th>
                    <th>수 량</th>
                    <th>신청일자</th>
                </tr>
            </thead>
            <c:choose>
        	<c:when test="${not empty itemlist}">
            <tbody>
            <c:forEach var="item" items="${itemlist}">
                <tr>
                    <td>${item.item_indexnum}</td>                    
                    <td>${item.i_cat}</td>
                    <td>${item.i_name}</td>
                    <td>${item.i_unit_amount}</td>
                    <td>${item.i_apply_date}</td>                                                                                          
                </tr>
             </c:forEach>
             <button type="summit" class="button" id="">삭 제</button>
            </tbody>
            </c:when>
            </c:choose>
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

<!-- JS / Jquery -->		
<script type="text/javascript" src="./resources/js/myPagePlanPayment.js"></script>		
</body>
</html>