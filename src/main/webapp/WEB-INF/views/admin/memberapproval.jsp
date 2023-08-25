<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입 승인현황 목록</title>

<!-- Style CSS -->
<link rel="stylesheet" href="./resources/css/memberapproval.css">

<!-- JS / Jquery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<!-- Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

<script type="text/javascript">

function rowSend() {
    var checkboxes = document.querySelectorAll('.row-checkbox');
    
    checkboxes.forEach(function(checkbox) {
    	
        checkbox.addEventListener('change', function() {
        	
            if (checkbox.checked) {
            	
                var row = this.closest('tr');
                
                var data = {
                    member_indexnum: row.cells[0].textContent,
                    name: row.cells[1].textContent,
                    tel: row.cells[2].textContent,
                    email: row.cells[3].textContent,
                    business_no: row.cells[4].textContent,
                    ind_name: row.cells[5].textContent,
                    addr: row.cells[6].textContent,
                    id: row.cells[7].textContent,
                    pw: row.cells[8].textContent,
                    mem_plan: row.cells[9].textContent,
                    signup_date: row.cells[10].textContent,
                    approval: row.cells[11].textContent
                };
                
                var url = 'memberapproval.do' +
                '?id=' + encodeURIComponent(data.id) +
                '&pw=' + encodeURIComponent(data.pw);
                
                // AJAX 요청 보내기
                var xhr = new XMLHttpRequest();
                xhr.open('GET', url); // 컨트롤러 URL로 변경해야 함
                xhr.setRequestHeader('Content-Type', 'application/json');
                xhr.send();
            }
        });
    });
}

</script>

</head>
<body>

		<div id="header">
			<jsp:include page="../section/header.jsp" />
		</div>


		
		<div class="wrap">

	<h2>회원가입 승인현황</h2>
			
		
	<!-- 서비스 플랜 결제 내역 -->
	<div id="memberapprovallist">	
	<form class="memberapprovallist" name="memberapprovallist" action="memberapproval.do">	
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
                    <td><input type="checkbox" class="row-checkbox" id="check" name="check" value="Y"></td>                                                                                                    
                </tr>
             </c:forEach>
            </tbody>
            </c:when>
            </c:choose>
        </table>		
		<button type="summit" class="button" id="sendmember">가입승인</button>		
	</div>
	</form>
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