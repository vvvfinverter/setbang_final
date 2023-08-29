<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공용 공간 예약 신청목록</title>

<!-- Style CSS -->
<link rel="stylesheet" href="./resources/css/pubofficebookinglist.css">

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

	<h2>공용 공간 예약 내역</h2>
			
		
	<!-- 공용 공간 예약 내역 -->
	<div id="pubbookinglist">	
		<div class="pubbookinglistTable">	
	 <table>
            <thead>
                <tr>
                    <th>NO</th>
                    <th>카테고리명</th>
                    <th>임대호실</th>
                    <th>사용인원</th>
                    <th>예약날짜</th>
                    <th>사용시작시간</th>
                </tr>
            </thead>
            <c:choose>
        	<c:when test="${not empty pubbookinglist}">
            <tbody>
            <c:forEach var="booking" items="${pubbookinglist}">
                <tr>
                    <td>${booking.book_indexnum}</td>                    
                    <td>${booking.pub_cat}</td>
                    <td>${booking.pub_unit}</td>
                    <td>${booking.num_of_per}</td>
                    <td>${booking.book_date}</td>
                    <td>${booking.book_start}</td>                                                                                           
                </tr>
             </c:forEach>
            </tbody>
            </c:when>
            <c:otherwise>
            <tbody>
                <tr>
                    <td colspan="6"><h6 class="emptySpace">공용 공간 예약 내역이 없습니다.</h6></td>
                </tr>
            </tbody>
            </c:otherwise>
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