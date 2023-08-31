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


<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<!-- Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>


<title>물품신청</title>
</head>
<body>
	<div id="header">
		<jsp:include page="../section/header.jsp" />
	</div>
		
	<div id="wrap">	
		
		<form name="itemapply" id="itemapply" action="itemApplyInsert.do" method="post">
			<div id="firstSelect">

					<tr id="item_apply_title">
						<th id="titleText">물품 신청</th>
					</tr>
					
					<tr class="item_cat">
						<td id='title' class='title'>
							<span id="itemtitle" value ='"itemtitle"'>물품카테고리</span>
						<br/>
						<select  class='input' name="itemCat" id="itemCat" onchange="selectBoxChange" required="required">
							<option value="" selected="selected">선택</option>		
							<option id="i_cat_code" value="1">탕비</option>
							<option id="i_cat_code" value="2">비품</option>
						</select>			
						</td>
					</tr>
			</div>
						
			<div id="itemlist">	
				<div class="itemlistTable">	
           			 <thead>
               			 <tr>
                    		<th colsan="2">물품명</th>
                    		<th>수 량(개)</th>
                    		<th>선 택</th>                                       
               			</tr>
            		</thead>
            		<tbody id="mytable">
            		</tbody>
           			<c:choose>
        			<c:when test="${not empty Itemlist}">
            		<!--  
            			<c:forEach var="item" items="${Itemlist}">
               			<tr>
                    		<td>${item.i_name}</td>
                    		<td><select class='input' name="i_amount" id="i_amount" onchange="selectBoxChange2" required>
									<option value="" selected="selected">선택</option>		
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
								</select> </td>
                    		<td><input type="button" class="button" id="memberBtn" name="memberBtn"></td>                                                                                                    
               			</tr>
             			</c:forEach>
             			-->
           			
            		</c:when>
            		</c:choose> 
				</div>
			</div>
			</form>
			
	<div id="item_apply" >
	<form name="itemorder" id="itemorder">
		<tr id="item_order_title">
			<th id="titleText">주문내역</th>
		</tr>
		<thead>
		<div class="itemapplyList">
		<tr id="item_order_content">	
			<th>물품명<input type="hidden" name="i_code" value="물품코드"></th>
			<th>수 량</th>
			<th>삭 제</th>	
		</tr>
		</thead>
		<c:choose>
	        <c:when test="${not empty itemOrderTable}">
	        	<tbody>
           	<!-- 	<c:forEach var="itemOrder" items="${itemOrderList}">
               			<tr>
                    		<td>${itemOrder.name}</td>
                    		<td>${itemOrder.amount}</td>
                    		<td><input type="button" class="button" id="deleteBtn" name="deleteBtn"></td>                                                                                                    
               			</tr>
             		</c:forEach>  --> 
           		</tbody>
            </c:when>	
            
           <c:otherwise>
           	<tbody>
               <tr>
                 <td><h6 class="emptyitem">담겨있는 물품이 없습니다.</h6></td>
               </tr>
            </tbody>
           </c:otherwise>
		</c:choose>
			 <tr><button type='submit' id='insertBtn' name="'insertBtn'">주문하기</button></tr>	
	</div>
	</div>
	</form>
			
			
</div>

 <!-- div Wrap 끝-->

<div id="footer">
	<jsp:include page="../section/footer.jsp" />
</div>

<script type="text/javascript">


// 물품카테고리를 선택하면 controller로 값 보내기
	
    var imagePaths = [];
    var selectedItems = [];
    
    $(document).ready(function() {
    $('#itemCat').change(function() {
        var selectedValue = $(this).val();
        var html = '';
       
        $('.itemlistTable').empty();
        
        // 처음 탕비/비품인지를 선택하면 해당 코드에 있는 물품리스트가 나오게 하는 ajax -> 동적처리를 위해 사용
        $.ajax({
            async: true,
            type: 'POST',
            url: "selectItemCat.do",
            data: { icatCode: selectedValue }, 
            success: function(response) {
                console.log("Data sent successfully:", response)
                
                html +='<table>'
                for(var i = 0; i < response.length; i++){
                	html += '<tr>'
                    html += '<td>'+ response[i].i_name +'<input type="hidden" name="i_code" value="'+response[i].i_code+'"></td>';
                    // 이미지 경로 설정
                    var imagePath = './resources/image/itemImg' + (i + 1) + '.png';
                    html += '<td><img src="' + imagePath + '" alt="Item Image"></td>';
                    html += "<td><select class='input' name='i_amount' id='i_amount' onchange='selectBoxChange2'>";
                    html += '<option value="0" selected="selected">선택</option>'		
					html += '<option value="1">1</option>'
					html += '<option value="2">2</option>'
					html += '<option value="3">3</option>'
					html += '<option value="4">4</option>'
					html += '<option value="5">5</option>'
					html += '<option value="6">6</option>'
					html += '<option value="7">7</option>'
					html += '<option value="8">8</option>'
					html += '<option value="9">9</option>'
					html += '<option value="10">10</option>'					
					html += '</select></td>'
                    html += '<td><input type="button" class="button" id="itemBtn" name="itemBtn" value="추가"></td>';
                	html += '</tr>'
                }
                html += '</table>'
                console.log(html);
                $('.itemlistTable').append(html);
            },
            error: function(error) {
                console.error("Error sending data:", error);
            }
        });
    });

    // 물품 추가 버튼 클릭 시
    $(document).on('click', '#itemBtn', function() {
        var itemCode = $(this).closest('tr').find('[name="i_code"]').val();
        var itemAmount = $(this).closest('tr').find('[name="i_amount"]').val();

        var selectedValue = $('#itemCat').val();
        
        console.log("code: ", itemCode);
        console.log("amount: ", itemAmount);
        
        // selectbox의 값을 초기값으로 변경
        $('#i_amount').val('0'); // 'initial_value'에는 실제 초기값이 들어가야 합니다.
  
     
        // i_code로 i_name 찾아오기
        $.ajax({
            async: true,
            type: 'POST',
            url: "selectIname.do",
            data: { itemCode: itemCode },
            success: function(response) {
                console.log("Data sent successfully:", response);
                
                // 배열의 첫 번째 요소의 i_name 값을 itemName 변수에 할당
                var itemName = response[0].i_name;
                console.log("name: ", itemName);
                
                // 주문내역 테이블에 추가
                var tableRow = '<tr>';
                tableRow += '<td>' + itemName + '<input type="hidden" name="i_code" value="' + itemCode + '"></td>';
                tableRow += '<td>' + itemAmount + '</td>';
                tableRow += '<td><input type="button" class="button" id="deleteBtn" name="deleteBtn" value="삭제"></td>';
                tableRow += '</tr>';
                
				
                // .itemapplyList가 제대로 선택되는지 확인
                var itemApplyList = $('.itemapplyList');
                if (itemApplyList.length > 0) {
                    itemApplyList.append(tableRow);
                } else {
                    console.error(".itemapplyList not found.");
                }
            },
            error: function(error) {
                console.error("Error sending data:", error);
            }
        });     
     
    });
    
	 // 삭제 버튼 클릭 시
   	 $(document).on('click', '#deleteBtn', function() {
        // 클릭된 삭제 버튼이 속한 <tr> 엘리먼트를 찾아서 삭제
        $(this).closest('tr').remove();
    });
	 
  // 주문하기 버튼 클릭 시
   	$(document).on('click', '#insertBtn', function() {
   	    var orderData = [];

   	    // 주문내역 테이블의 각 행을 순회하며 주문 데이터를 수집
   	    $('.itemapplyList tr').each(function() {
   	        var itemName = $(this).find('td:first-child').text();
   	        var itemCode = $(this).find('[name="i_code"]').val();
   	        var itemAmount = $(this).find('td:nth-child(2)').text();
   	        
   	     	console.log("itemapplyList: ", itemName);
   	     	console.log("itemapplyList: ", itemCode);
   	  		console.log("itemapplyList: ", itemAmount);

   	        orderData.push({
   	            i_name: itemName,
   	            i_code: itemCode,
   	            i_amount: itemAmount
   	        });
   	    });

   	    // orderData를 서버로 전송하여 데이터베이스에 insert
    	$.ajax({
       		type: 'POST',
        	url: 'orderInsert.do', // 주문 데이터를 처리하는 컨트롤러 메서드의 URL 경로
        	data: JSON.stringify(orderData),
        	contentType: 'application/json',
        	dataType: 'json',
   	        success: function(response) {
   	            console.log('Order inserted successfully:', response);
   	            // 주문 성공 메시지 또는 리디렉션 등을 수행할 수 있음
   	         window.location.href = "itemlist.do";
   	        },
   	        error: function(error) {
   	            console.error('Error inserting order:', error);
   	        }
   	    });
   	});
	 
    
    });   


</script>
		
</body>
</html>