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
			
		
	<!-- 회원가입 승인 현황 -->
	<div id="memberapprovallist">	
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
                    <td>${member.signup_date}</td>
                    <td>${member.approval}</td>
                    <td><input type="checkbox" name="membercheck"></td>                                                                                                    
                </tr>
             </c:forEach>
            </tbody>
            </c:when>
            </c:choose>
        </table>		
          <button type="button" class="button" id="approvalBtn" name="approvalBtn" >가입 승인</button>	
	</div>

		</div>
	
		</div>
		

	<div id="adminFooter">
			<jsp:include page="../admin/adminFooter.jsp" />
	</div>


<script type="text/javascript">
$(document).ready(function() {
$("#approvalBtn").click(function(){
	
var rowData = new Array();
var tdArr = new Array();
var checkbox = $("input[name=membercheck]:checked");
var params = [];

checkbox.each(function() {
    var tr = $(this).closest('tr');
    var td = tr.children();
    
    var name = td.eq(1).text();
    var id = td.eq(7).text();
    var approval = td.eq(11).text();

    params.push({
        mem_id: id,
        mem_name: name,
        mem_approval: approval
    });
});

$.ajax({
	anyne:true,
	type:'POST',
	data: JSON.stringify(params),
	contentType: "application/json; charset=utf-8",
	url: "approvalModify.do",
	dataType: "text",
	success : function(data) {	
		alert("해당 회원을 승인하였습니다.");
		location.href="adminMemberApproval.do";
	},
	error: function(jqXHR, textStatus, errorThrown) {
		alert("ERROR : " + textStatus + " : " + errorThrown);
	}
});

});
});

</script>
</body>
</html>