<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Style CSS -->
<link rel="stylesheet" href="./resources/css/itemApply.css">

<!-- JS / Jquery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- <script type="text/javascript" src="./resources/js/itemApply.js"></script> -->

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<!-- Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

<!-- jQuery UI -->
<link rel="stylesheet" href="./resources/jquery-ui-1.12.1/jquery-ui.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="./resources/jquery-ui-1.12.1/jquery-ui.min.js"></script>
<script src="./resources/jquery-ui-1.12.1/datepicker-ko.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
/**
물품신청
*/
const selectBoxChange1 = function() {
//카테고리 코드 선택
const comboItemCatSelect = document.getElementById("itemCat");
//히든값 변수 선언
const hiddenInput1 = document.getElementById("selectedValue1");

//카테고리 코드 선택 값 변수 선언 
let selectValue = comboItemCatSelect.value;
//콘솔로 값 나오는 것 테스트 
console.log("selectvalue : " + selectValue);

//카테고리 선택 값을 히든 값에 넣음
hiddenInput1.value = selectValue;
//히든값 콘솔로 값 나오는 것 테스트
console.log("hidden : " + hiddenInput1.value);


//텍스트에 나오는 값 보는 용도 이 부분은 javascript 학습용
let selectedText = comboItemCatSelect.options[comboItemCatSelect.selectedIndex].text;
console.log("selected text : " + selectedText);


//selecteListChange 함수에 히든 값을 파라미터로 넘기고 실행
selecteListChange(hiddenInput1.value);

}

//hidden 값을 parameter에 받고 aJax의 data에 selectedValue1라고 추가하면 url로 설정한 대상 컨트롤러를 타서 서비스 및 DAO 마이바티스 맵퍼까지 가서 조건절 파라미터 값에 삽입됨
const selecteListChange = function(hiddenInput1){
console.log("hiddenInput1 : " + hiddenInput1);
//I_CODE, I_NAME, I_CAT_CODE 
$.ajax({
	url : "aJaxItem.do",
	type : 'post',
	data : {
		selectedValue1: hiddenInput1 // hiddenInput1 값을 data에 추가
	},
	success : function(data) {
			console.log(data); //콘솔에서 값 확인 용도
			const itemListDiv = $("#itemList"); // 화면에 데이터를 추가할 영역 선택
			
			itemListDiv.empty(); //기준 데이터 삭제
			
			for(const item of data){
				const iCode = item.iCode;
				const iName = item.iName;
				console.log("iCode : " + iCode);
				console.log("iName : " + iName);
				//백틱 사용하는 영역, 백틱(`)은 자바스크립트 안에서 html코드를 더 자유롭게 사용 가능함, 여기선 템플릿 리터럴 사용할 때 앞에 \를 해야 사용 가능함
				// 그 이유는 jsp 파일이기 때문이다
				itemListDiv.append(`<div class="menus" id="itemDiv\${iCode}" value="\${iName}">\${iName}<img style="width: 200px; height: 300px;" src="./resources/image/itemImg\${iCode}.jpg" />
				<select id="selectedItem\${iCode}">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
				</select>
				<td data-code="\${iCode}">
				<button id="btnAddItem\${iCode}" type="button" data-code="\${iCode}" data-name="\${iName}" onclick="clickBtn(this)">추가</button>
				</td>
				</div>
				<br/>`);
				//백틱코드(`) 사용 영역 종료
				
			}
			
			
     },
	error : function() {
		alert("error");
	}
});


}


const clickBtn = function(buttonElement){

const iCode = buttonElement.getAttribute("data-code");
const iName = buttonElement.getAttribute("data-name");


const selectItemId = `selectedItem\${iCode}`;
const selectItem = document.getElementById(selectItemId);

if (selectItem) {
    const selectValue = selectItem.value;

// Create new row and cells
const newRow = document.createElement("tr");
const nameCell = document.createElement("td");
const countCell = document.createElement("td");
const deleteCell = document.createElement("td");
const numCell = document.createElement("td");

// Set cell content
nameCell.textContent = iName; // Item name
countCell.textContent = selectValue; // Quantity
numCell.textContent = iCode;


// Create delete button
const deleteButton = document.createElement("button");
deleteButton.id = `deleteBtn\${iCode}`; // 각 버튼에 iCode를 이용하여 고유한 id 생성
deleteButton.name = `deleteBtn\${iCode}`; // 각 버튼에 iCode를 이용하여 고유한 name 생성
/*     deleteButton.id = "deleteBtn";
deleteButton.name = "deleteBtn"; */
deleteButton.className = "deleteBtn";
deleteButton.textContent = "삭제";
deleteButton.addEventListener("click", function() {
    // Remove the row
    const row = this.parentNode.parentNode;
    const iCode = row.getAttribute("data-code");

    row.parentNode.removeChild(row);

    // 삭제한 항목의 버튼 활성화 처리
    const addButton = document.getElementById(`btnAddItem\${iCode}`); // 고유한 id 사용
    if (addButton) {
    addButton.disabled = false;
    }
});


// Append delete button to delete cell
deleteCell.appendChild(deleteButton);

// Append cells to the new row
//새로운 행에 각각 컬럼을 순서대로 추가
newRow.appendChild(numCell);
newRow.appendChild(nameCell);
newRow.appendChild(countCell);
newRow.appendChild(deleteCell);


// Append hidden input to the form
const frm = document.getElementById("frm");
frm.appendChild(newRow);

// Append the new row to the table
const selectlistCnt = document.getElementById("listTable");
selectlistCnt.appendChild(newRow);

const totalListRow = document.getElementById("totallist");
totalListRow.parentNode.appendChild(totalListRow);

// 비활성화 처리
buttonElement.disabled = true;

}//if

}


$(document).ready(function() {


// 상위 요소에 이벤트 핸들러 등록
$("#listTable").on("click", ".deleteBtn", function() {
    const row = this.parentNode.parentNode;
    const iCode = row.getAttribute("data-code");

    row.parentNode.removeChild(row);

    // 삭제한 항목의 버튼 활성화 처리
    const addButton = document.getElementById(`btnAddItem\${iCode}`);
    if (addButton) {
        addButton.disabled = false;
    }
});

// 주문하기 버튼 클릭 이벤트 리스너 추가
$("#insertBtn").on("click", function(event) {
    event.preventDefault();

    const orderList = [];
    const frm = $("#frm"); // 폼 엘리먼트를 참조하는 변수
    
    const rows = $("#listTable tr:not(#listtr)");
    
    rows.each(function(index, row) {
    	
    	const iCode = $(row).find("td:nth-child(1)").text();
        const itemName = $(row).find("td:nth-child(2)").text();
        const itemCount = $(row).find("td:nth-child(3)").text();
        
		 	 // Push to orderList
       orderList.push({iCode: iCode,iName: itemName, iUnitAmount: itemCount });
       
    });


	console.log("orderList: ", orderList);
	
    // Create hidden input element for orderList
    const orderListInput = $("<input>")
    .attr("type", "hidden")
    .attr("name", "orderList")
    .val(JSON.stringify(orderList));
	
	frm.append(orderListInput);
	frm.submit();
	alert("물품 신청이 성공적으로 완료하였습니다.");
});
});
</script>
<title>물품신청</title>
</head>
<body>

		<div id="header">
			<jsp:include page="../section/header.jsp" />
		</div>
		
<div id="wrap">
<form name="frm" id="frm" action="itemApplyInsert.do" method="post">
<div id="leftdiv">
<table class="menutbl" style="align-items: center !important;">
	<tr id="menutitle">
		<th colspan=3 id="titleText">물품 신청</th>
	</tr>
	<tr class="menus">
		<td id='menu1' class='menu'>
			<!-- <img src="./images/unknown1.jpg" /> <br/> -->
			<span id="label1" value ='itemCat'>물품카테고리</span>
			<br/>
			<select name="itemCat" id="itemCat" onchange="selectBoxChange1()" class='menuCount'>
				<option value="" selected="selected">선택</option>
				<c:forEach var="i" items="${itemCat}">
					<option value="${i.iCatCode }">${i.iCat}</option>
				</c:forEach>
			</select>
			<input type="hidden" name="selectedValue1" id="selectedValue1"/>
			
		</td>

		
	</tr>
	<tr>
			<td id='menu2' class='menu'>
			<div id="itemList">

			</div> 
		</td>
		<td id='menu3' class='menu'>
		</td>
	</tr>
</table>
</div>


<div id="rightdiv">
<table id="listTable">
	<tr id="listtitle">
		<th colspan=4 id="titleText">주문내역</th>
	</tr>

	<tr id="listtr">
		<td>물품코드</td>
		<td id = "listtd" width="150">물품</td>
		<td id = "counttd" width="100">갯수</td>
		<td width="50">삭제</td>
	</tr>
</table>
<table>
	<tr id="totallist">
		<td colspan='4'>
			 <input type='submit' value='주문하기'  id='insertBtn'/> 
		</td>
	</tr>
</table>
</div>
		
</form>
</div>	


<div id="footer">
	<jsp:include page="../section/footer.jsp" />
</div>
		
</body>
</html>