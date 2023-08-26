<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입 승인</title>

<!-- Style CSS -->
<link rel="stylesheet" href="./resources/css/adminMemberApproval.css">

<!-- JS / Jquery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<!-- Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</head>
<body>

	<div id="adminHeader">
			<jsp:include page="../admin/adminHeader.jsp"/>
	</div>

		
		<div class="wrap">

	<h2>회원가입 승인 현황</h2>
			
		
	<!-- 서비스 플랜 결제 내역 -->
	<div id="memberapprovallist">	
	<form class="memberapprovallist" name="memberapprovallist" action="adminMemberApproval.do">	
		<div class="memberapprovalTable">	
	 <table>
            <thead>
                <tr>
                    <th>NO</th>
                    <th>회원명</th>
                    <th>연락처</th>
                    <th>이메일</th>
                    <th>사업자번호</th>
                    <th>회원업종</th>                    
                    <th>주 소</th>                                        
                    <th>아이디</th>
                    <th>비밀번호</th>
                    <th>서비스플랜명</th>
                    <th>회원가입일</th>                    
                    <th>승인여부</th>
                    <th>선 택</th>
                </tr>
            </thead>
            <c:choose>
        	<c:when test="${not empty memberapprovalList}">
            <tbody>
            <c:forEach var="member" items="${memberapprovalList}">
                <tr>
                    <td><input type="hidden" value="1">${member.member_indexnum}</td>
                    <td>${member.name}</td>
                    <td>${member.tel}</td>
                    <td>${member.email}</td>
                    <td>${member.business_no}</td>
                    <td>${member.ind_name}</td>
                    <td>${member.addr}</td>
                    <td>${member.id}</td>
                    <td>${member.pw}</td>
                    <td>${member.mem_plan}</td>
                    <td>${member.signup_date}</td>
                    <td>${member.approval}</td>
                    <td><input type="checkbox"></td>                                                                                                    
                </tr>
             </c:forEach>
            </tbody>
            </c:when>
            </c:choose>
        </table>		
		<button type="submit" class="button" >가입 승인</button>		
	</div>
	</form>
		</div>
	
		</div>
		

	<div id="adminFooter">
			<jsp:include page="../admin/adminFooter.jsp" />
	</div>

</body>
</html>