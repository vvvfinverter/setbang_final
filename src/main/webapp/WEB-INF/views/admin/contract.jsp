<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<!-- CSS연결 -->
<link rel="stylesheet" href="./resources/css/contract.css">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<!-- Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<meta charset="UTF-8">

<!-- jQuery UI -->
<link rel="stylesheet" href="./resources/jquery-ui-1.12.1/jquery-ui.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="./resources/jquery-ui-1.12.1/jquery-ui.min.js"></script>
<script src="./resources/jquery-ui-1.12.1/datepicker-ko.js"></script>

<!-- JS연결 -->
<script type="text/javascript" src="./resources/js/contract.js"></script>

<script type="text/javascript">
$(function(){
	$("#con_start_date").datepicker({
		showOn: "button",
        buttonImage: "./resources/image/calendar.png",
	    buttonImageOnly: false,
		buttonText: "Select date"
	});
});


$(function(){
	$("#con_end_date").datepicker({
		showOn: "button",
        buttonImage: "./resources/image/calendar.png",
	    buttonImageOnly: false,
		buttonText: "Select date"
	});
});

$(function(){
	$("#con_date").datepicker({
		showOn: "button",
        buttonImage: "./resources/image/calendar.png",
	    buttonImageOnly: false,
		buttonText: "Select date"
	});
});
</script>

<title>임대차 계약서 등록</title>
</head>
<body>

		<div id="header">
			<jsp:include page="../section/header.jsp" />
		</div>
		
<div class="wrap">
	<h2>임대차 계약서</h2>

	<form action="contract.do">
	<table>
	<tr>
		<th>임차인(법인명)</th>
		<td colspan='3'><input type="text" id="lessor_name" name="lessor_name"></td>
		<td></td>
		<td></td>
	</tr>
	
	<tr>
		<th>임대인(성 명)</th>
		<td colspan='3'><input type="text" id="lessee_name" name="lessee_name"></td>
		<td></td>
		<td></td>
	</tr>

	<tr>
		<th>임대공간</th>
		<td>
		   <select class="input" name="brunch" id="brunch" var="brunch" onchange="selectBoxChange(this.value);" required>
			      <option value="">선택</option>
                  <option value="1">강남점</option>
                  <option value="2">판교점</option>
                  <option value="3">구로점</option> 
           </select>                                                            
		</td>
		<td>
		   <select class="input" name = "priv_code" id="priv_code" onchange="selectBoxChange(this.value);" required>
			      <option value="">선택</option>
                  <option value="1" data-brunch="1">101호</option>
                  <option value="2" data-brunch="1">102호</option>
                  <option value="3" data-brunch="1">103호</option>
                  <option value="4" data-brunch="1">104호</option>                  
                  <option value="5" data-brunch="1">105호</option>
                  <option value="6" data-brunch="1">106호</option> 
                  <option value="7" data-brunch="1">107호</option>
                  <option value="8" data-brunch="1">108호</option>
                  <option value="9" data-brunch="1">109호</option>
                  <option value="10" data-brunch="1">110호</option>
                  
                  <option value="11" data-brunch="2">101호</option>
                  <option value="12" data-brunch="2">102호</option>
                  <option value="13" data-brunch="2">103호</option>
                  <option value="14" data-brunch="2">104호</option>                  
                  <option value="15" data-brunch="2">105호</option>
                  <option value="16" data-brunch="2">106호</option> 
                  <option value="17" data-brunch="2">107호</option>
                  <option value="18" data-brunch="2">108호</option>
                  <option value="19" data-brunch="2">109호</option>
                  <option value="20" data-brunch="2">110호</option>
                  
                  <option value="21" data-brunch="3">101호</option>
                  <option value="22" data-brunch="3">102호</option>
                  <option value="23" data-brunch="3">103호</option>
                  <option value="24" data-brunch="3">104호</option>                  
                  <option value="25" data-brunch="3">105호</option>
                  <option value="26" data-brunch="3">106호</option> 
                  <option value="27" data-brunch="3">107호</option>
                  <option value="28" data-brunch="3">108호</option>
                  <option value="29" data-brunch="3">109호</option>
                  <option value="30" data-brunch="3">110호</option>
  
            </select>                                                                                                         
		</td>
		
	</tr>	
	<tr>
		<th>계약기간</th>
		<td><input type="text" name="con_start_date" id="con_start_date" size="12" readonly/>  ~</td>
		<td><input type="text" name="con_end_date" id="con_end_date" size="12" readonly/></td>
	</tr>
	
	<tr>
		<th>계약일</th>
		<td><input type="text" name="con_date" id="con_date" size="12" readonly/></td>
	</tr>
	
	</table>

		<button type="submit" class="button" >등록하기</button>			
	</form>	
</div>

	<div id="adminMenu"> 
			<jsp:include page="../admin/adminMenu.jsp"/>	
	</div>

		<div id="footer">
			<jsp:include page="../section/footer.jsp" />
		</div>
	

</body>
</html>