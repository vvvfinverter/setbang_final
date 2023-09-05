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
                    <th>선택</th>
                </tr>
            </thead>
            <c:choose>
        	<c:when test="${not empty itemlist}">
            <tbody>
            <c:forEach var="item" items="${itemlist}">
                <tr>
                    <td>${item.item_indexnum}<input type="hidden" name="i_apply_code" value="${item.i_apply_code}"/></td>                    
                    <td>${item.i_cat}</td>
                    <td>${item.i_name}</td>
                    <td>${item.i_unit_amount}<input type="hidden" name="i_unit_amount" value="${item.i_unit_amount}"/></td>
                    <td>${item.i_apply_date}</td>
                    <td><input type="checkbox" name="itemcheck" data-i-apply-code="${item.i_apply_code}"></td>                                                                                             
                </tr>
             </c:forEach>
            </tbody>
            </c:when>
            <c:otherwise>
            <tbody>
                <tr>
                    <td colspan="6"><h6 class="emptySpace">물품 신청 내역이 없습니다.</h6></td>
                </tr>
            </tbody>
            </c:otherwise>
            </c:choose>
        </table>		
	</div>
             <button id="itemDeleteBtn" type="button" class="button" >신청 취소</button>
		</div>
	
		</div>
		
		<div id="myPageMenu">
			<jsp:include page="../myPage/myPageMenu.jsp" />
		</div>

		<div id="footer">
			<jsp:include page="../section/footer.jsp" />
		</div>


<script type="text/javascript">
$(document).ready(function() {
	$("#itemDeleteBtn").click(function(){
		
	var rowData = new Array();
	var tdArr = new Array();
	var checkbox = $("input[name=itemcheck]:checked");
	var params = [];

	checkbox.each(function() {
	    var tr = $(this).closest('tr');
	    var td = tr.children();
	    
	    var i_apply_code = td.find('input[name=i_apply_code]').val();
	    params.push({
	    	i_apply_code: i_apply_code
	    });
	    var i_unit_amount = td.find('input[name=i_unit_amount]').val();
	    params.push({
	    	i_unit_amount : i_unit_amount
	    });
	});

	$.ajax({
		anyne:true,
		type:'POST',
		data: JSON.stringify(params),
		contentType: "application/json; charset=utf-8",
		url: "itemDelete.do",
		dataType: "text",
		success : function(data) {
		    if (data) { // 서버로부터 받은 성공 여부 상태 코드나 메시지를 확인
		        alert('신청 취소가 완료되었습니다.');
		        window.location.href = 'itemlist.do'; // 리다이렉트
		    } else {
		        alert('신청 취소에 실패하였습니다.'); // 실패시 알림
		    }
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