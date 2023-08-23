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
<link rel="stylesheet" href="./resources/css/questionAnswer.css">

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
	<div id="questionList">	
	<form class="constractlist" name="constractlist" action="constractlist1.do">	
		<div class="questionTable">	

	 <table>
            <thead>
                <tr>
                    <th>NO</th>
                    <th>제  목</th>
                    <th>문의내용</th>
                    <th>관심지점</th>
                    <th>작성자</th>
                    <th>회사명</th>
                    <th>연락처</th>
                    <th>이메일</th>
                    <th>문의날짜</th>
                </tr>
            </thead>
            <c:choose>
        	<c:when test="${not empty inqueryList}">
            <tbody>
            <c:forEach var="inquiry" items="${inqueryList}">
                <tr>
                    <td>${inquiry.inq_indexnum}</td>
                    <td>${inquiry.inq_title}</td>
                    <td>${inquiry.inq_content}</td>
                    <td>${inquiry.inq_branch}</td>
                    <td>${inquiry.inq_name}</td>
                    <td>${inquiry.inq_coname}</td>
                    <td>${inquiry.inq_tel}</td>
                    <td>${inquiry.inq_email}</td>
                    <td>${inquiry.inq_date}</td>
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