<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<!-- Style CSS -->
<link rel="stylesheet" href="css/questionAnswer.css">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<!-- Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<meta charset="UTF-8">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>문의게시판</title>
</head>
<body>

		<div id="header">
			<jsp:include page="../section/header.jsp" />
		</div>
		
	<table border="1">
			<tr>
				<th width="100">번호</th>
				<th width="200">문의제목</th>
				<th width="150">성 명</th>
				<th width="150">회사명</th>
				<th width="150">관심지점</th>
				<th width="500">문의내용</th>
				<th width="150">문의날짜</th>
				<!-- 추가 -->
				<th width="100">연락처</th>
				<th width="100">이메일</th>				
			</tr>
		<c:forEach items="${boardList }" var="board">
				<!-- 프라퍼티이름 변경 -->
			<tr>
				<td>${board.b_id }</td>
				<td align="left"><a href="getBoard.do?b_id=${board.b_id }">
						${board.b_title }</a></td>
				<td>${board.b_name }</td>
				<td>${board.b_date }</td>
				<td>${board.b_count }</td>
					<!-- 추가 -->
				<td>
				 <c:choose>
				    <c:when test="${board.b_fsize==0}">첨부파일 없음</c:when>
				    <c:otherwise>
				    	<!-- <a href='resources/upload/${board.b_fname}'> -->
				    		<img src="resources/images/disk.gif">${board.b_fname}
				    	<!-- </a>  -->
				    </c:otherwise>
				 </c:choose>					  
				</td>					
				<td>${board.b_fsize}byte</td>
			</tr>
		</c:forEach>
		</table>
		
	<div id="adminMenu"> 
			<jsp:include page="../admin/adminMenu.jsp"/>	
	</div>

		<div id="footer">
			<jsp:include page="../section/footer.jsp" />
		</div>
</body>
</html>