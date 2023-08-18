<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Style CSS -->
<!-- 테스트용 css -->
<link rel="stylesheet" href="./resources/css/item.css">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
	
<!-- Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

<!-- jQuery UI -->
<link rel="stylesheet" href="./resources/jquery-ui-1.12.1/jquery-ui.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="./resources/jquery-ui-1.12.1/jquery-ui.min.js"></script>
<script src="./resources/jquery-ui-1.12.1/datepicker-ko.js"></script>
<script type="text/javascript">
//<![CDATA[
$(function(){
	$("#sup_counseling_date").datepicker({
		showOn: "button",
        buttonImage: "./resources/image/calendar.png",
	    buttonImageOnly: false,
		buttonText: "Select date"
	});
});
//]]>

</script>


<title>물품신청</title>
</head>
<body>

		<div id="header">
			<jsp:include page="../section/header.jsp" />
		</div>
<form name="frm" action="itemApplyInsert.do" method="post">
<div id="leftdiv">
<table class="menutbl">
	<tr id="menutitle">
		<th colspan=3 id="titleText">물품 신청</th>
	</tr>
	<tr class="menus">
		<td id='menu1' class='menu'>
			<img src="./images/unknown1.jpg" /> <br/>
			<span id="label1" value ='itemCat'>물품카테고리</span>
			<br/>
			<select name="itemCat" id="itemCat" class='menuCount'>
				<option value="" selected="selected">선택</option>
				<c:forEach var="i" items="${itemCat}">
					<option value="${i.iCatCode }">${i.iCat}</option>
				</c:forEach>
			</select>
		</td>
		<td id='menu2' class='menu'>
			<img src="./images/unknown2.jpg" /> <br/>
			<span id="label2" value = 'item'>물품</span> 
			<select name="item" id="item" class='menuCount'>
				<option value="" selected="selected">선택</option>
				<c:forEach var="i" items="${item}">
					<option value="${i.iCode }">${i.iName}</option>
				</c:forEach>
			</select>
		</td>
		<td id='menu3' class='menu'>
			<img src="./images/unkown3.jpg" /> <br/>
			<span id="label3" value = '카페라떼'>카페라떼</span>
			<span id="price3" value = '3000'>3000</span>원<br/>
			<select name="menu3Count" id="menu3Count" class='menuCount'>
				<option value='0'>0</option>
				<option value='1'>1</option>
				<option value='2'>2</option>
				<option value='3'>3</option>
				<option value='4'>4</option>
				<option value='5'>5</option>
			</select>
		</td>
		
	</tr>
	<tr class="menus">
		<td id='menu4' class='menu'>
			<img src="./images/unknown4.jpg" /> <br/>
			<span id="label4" value = '카푸치노'>카푸치노</span>
			<span id="price4" value = '2000'>2000</span>원
			<br/>
			<select name="menu4Count" id="menu4Count" class='menuCount'>
				<option value='0'>0</option>
				<option value='1'>1</option>
				<option value='2'>2</option>
				<option value='3'>3</option>
				<option value='4'>4</option>
				<option value='5'>5</option>
			</select>
		</td>
		<td id='menu5' class='menu'>
			<img src="./images/unknown5jpg" /> <br/>
			<span id="label5" value='돌체라떼'>돌체라떼</span>
			<span id="price5" value='1000'>1000</span>원<br/>
			<select name="menu5Count" id="menu5Count" class='menuCount'>
				<option value='0'>0</option>
				<option value='1'>1</option>
				<option value='2'>2</option>
				<option value='3'>3</option>
				<option value='4'>4</option>
				<option value='5'>5</option>
			</select>
		</td>
		<td id='menu6' class='menu'>
			<img src="./images/unknown6.jpg" /> <br/>
			<span id="label6" value='카페모카'>카페모카</span>
			<span id="price6" value='1500'>1500</span>원 <br/>
			<select name="menu6Count" id="menu6Count" class='menuCount'>
				<option value='0'>0</option>
				<option value='1'>1</option>
				<option value='2'>2</option>
				<option value='3'>3</option>
				<option value='4'>4</option>
				<option value='5'>5</option>
			</select>
		</td>
	</tr>
	<tr class="menus">
		<td id='menu7' class='menu'>
			<img src="./images/unknown7.jpg" /> <br/>
			<span id="label7" value='자바칩 프라프치노'>자바칩 프라프치노</span>
			 <span id="price7" value='2000'>2000</span>원 <br/>
			<select name="menu7Count" id="menu7Count" class='menuCount'>
				<option value='0'>0</option>
				<option value='1'>1</option>
				<option value='2'>2</option>
				<option value='3'>3</option>
				<option value='4'>4</option>
				<option value='5'>5</option>
			</select>
		</td>
		<td id='menu8' class='menu'>
			<img src="./images/unknown8.jpg" /> <br/>
			<span id="label8" value='차이 티'>차이 티</span>
			<span id="price8" value='1000'>1000</span>원 <br/>
			<select name="menu8Count" id="menu8Count" class='menuCount'>
				<option value='0'>0</option>
				<option value='1'>1</option>
				<option value='2'>2</option>
				<option value='3'>3</option>
				<option value='4'>4</option>
				<option value='5'>5</option>
			</select>
		</td>
		<td id='menu9' class='menu'>
			<img src="./images/unknown9.jpg" /> <br/>
			<span id="label9" value='그린 티'>그린 티 </span>
			<span id="price9" value='1500'>1500</span>원 <br/>
			<select name="menu9Count" id="menu9Count" class='menuCount'>
				<option value='0'>0</option>
				<option value='1'>1</option>
				<option value='2'>2</option>
				<option value='3'>3</option>
				<option value='4'>4</option>
				<option value='5'>5</option>
			</select>
		</td>
	</tr>
</table>
</div>
		
<div id="rightdiv">
<table id="listTable">
	<tr id="listtitle">
		<th colspan=3 id="titleText">주문내역</th>
	</tr>
	<tr id="totallist">
		<td colspan='3'>
			총합 : <input type='text'  id='total'/> 원 
			<input type='button'	value='주문하기'  id='btn'/>
		</td>
	</tr>
	<tr id="listtr">
		<td width="150">목록</td>
		<td width="100">갯수</td>
		<td width="50">삭제</td>
	</tr>
	
</table>
</div>
</form>
<div id = "result">

</div>		
<%-- 	<div class="support-request">
	
		<div class="request">
		<form class="support" name="support" method="post" action="support1.do">
			<div class="form-group1">
				<label for="name" class="label">신청인</label> 
				<input type="text" class="form-control" id="name" value="${supportVO.name}" name="name"/>
			</div>
			
			<div class="select-support">
			<label for="support-name" class="support-name">상담분야</label> 
			<input id="sup_code" type="radio" name="sup_code" class="tax" value="10">
				<label for="counse-1" class="tab1">세무기장</label> 
			<input id="sup_code" type="radio" name="sup_code" class="corporate" value="20">
				<label for="counse-2" class="tab2">법인신청</label>
			<input id="sup_code" type="radio" name="sup_code" class="patent" value="30">
				<label for="counse-3" class="tab3">특허신청</label>
			</div>
			
			<div class="form-group2">
				<label for="tel" class="label">연락처</label> 
				<input type="tel" class="form-control" id="tel" value="${supportVO.tel}" name="tel"/>
			</div>
			
			<div class="form-group3">
				<label for="Email" class="label">Email</label> 
				<input type="email" class="form-control" id="email" value="${supportVO.email}" name="email"/>
			</div>
			
			<div class="form-group4">
				<label for="date" class="label">상담희망일자</label>
					<input type="text" name="sup_counseling_date" id="sup_counseling_date" size="12" readonly/>
			</div>
						
			<div class="form-group5">
				<label for="context" class="label">신청내용</label> 
				<input type="text" class="form-control" id="context" name = "sup_content">	
			</div>

			<button type="submit" class="button" >신청하기</button>
		</form>
		</div>
	</div>	 --%>
	<%-- 	<div id="footer">
			<jsp:include page="../section/footer.jsp" />
		</div> --%>
		
</body>
</html>