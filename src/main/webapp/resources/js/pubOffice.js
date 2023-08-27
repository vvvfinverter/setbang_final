// 공용 오피스 예약

  window.onload = function() { //onload 시작 
	
    // 현재 날짜 가져오기
    var currentDate = new Date();
    var year = currentDate.getFullYear();
    var month = (currentDate.getMonth() + 1).toString().padStart(2, '0');
    var day = currentDate.getDate().toString().padStart(2, '0');
    var minDate = year + '-' + month + '-' + day;

    // 예약일자 달력의 최소 날짜(min attribute) 설정
    var bookDateInput = document.querySelector('#bookDate');
    bookDateInput.setAttribute('min', minDate);
	
document.querySelector('#btnSubmit').addEventListener('click', function(){
	
    var currentDate = new Date(); // 현재 시간 가져오기
    var currentHour = currentDate.getHours(); // 현재 시간의 시간 부분
    var currentDay = currentDate.getDate(); // 현재 날짜의 날짜 부분

    var selectedDate = new Date(document.querySelector('#bookDate').value);
    var selectedDay = selectedDate.getDate(); // 선택한 날짜의 날짜 부분

    // 만약 현재 시간이 17시 이후이고 선택한 날짜가 오늘 날짜면 예약 불가능 처리
/*     if (selectedDay === currentDate.getDate() && currentHour >= 17) {
        alert("오늘은 17시 이후에는 예약이 불가능합니다.");
        return;
    } */

    // 선택한 날짜가 내일 이후인지 확인
    var tomorrow = new Date();
    tomorrow.setDate(currentDate.getDate() + 1); // 내일 날짜
    if (selectedDate > tomorrow) {
        // 이 부분이 내일 이후의 날짜가 아니라면 등록 불가능 처리
        alert("내일 이후 날짜만 예약 가능합니다.");
        return;
    }
		//선택한 값
		var bookDate = document.querySelector('#bookDate').value;
		//var bookStartInput = document.querySelector('input[name="bookStart"]');
		//var bookStartValue = bookStartInput.value;
		var bookStartInput = document.querySelector('input[name="bookStart"]:checked');
        var numOfPer = document.querySelector('#numOfPer').value; // 인원 추가
        var comboUnits = document.querySelector('#comboUnits').value; // 임대호실 추가
		//console.log("bookStartInput : " + bookStartInput.value);
	
		
	       // 예약일자, 인원, 사용시간, 임대호실이 입력되었는지 체크
        if (bookDate === "") {
            alert("예약일자를 선택하세요.");
            return;
        }

        if (numOfPer === "") {
            alert("인원을 선택하세요.");
            return;
        }

        if (!bookStartInput) {
            alert("사용시간을 선택하세요.");
            return;
        }
        
        // 선택한 사용시간이 비활성화된 상태라면 예약 불가
        if (bookStartInput.disabled) {
            alert("선택한 시간대는 예약이 불가능합니다.");
            return;
        }

        if (comboUnits === "") {
            alert("임대호실을 선택하세요.");
            return;
        }

        if(!confirm("정말로 예약 하시겠어요?")) return false;
		
		//컨트롤러로 전송할 데이터 객체 생성
		
		frm.action = 'insertpubOfficeBooking.do';
		frm.method = 'POST';
		alert("공용 오피스 예약이 성공적으로 완료하였습니다.");
		frm.submit();
	});
	
	

	
	
	// 처음에 접근을 잘못해서 만든 것들이라 아직 아까워서 못 지웠음 그리고 혹시 몰라서 아직은 놔둠 - 추후 제거 예정 
	//라디오 버튼 선택시 실행되는 함수
	/* 	function handleRadioChange() {
		    var selectedRadio = document.querySelector('input[name="bookStart"]:checked');
		    
		    if (selectedRadio) {
		        var selectedTime = selectedRadio.value;
		        console.log("Selected Time: " + selectedTime);
		       
		        // AJAX를 이용해 서버로 비교 요청 보내기
		        var xhr = new XMLHttpRequest();
		        xhr.open('POST', 'compareTimes.do', true);
		        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
		        
		        xhr.onreadystatechange = function() {
		            if (xhr.readyState === XMLHttpRequest.DONE) {
		                if (xhr.status === 200) {
		                    var response = xhr.responseText;
		                    
		                    if (response === "no-data") {
		                        console.log("No data available from the server.");
		                    } else if (response === "match") {
		                        console.log("Selected Time matches DB Value.");
		                        disableRadioButtons();
		                    } else if (response === "not-match") {
		                        console.log("Selected Time does not match DB Value.");
		                    }
		                }
		            }
		        };
		        
		        xhr.send('selectedTime=' + encodeURIComponent(selectedTime));
		    }
		}
	 */

	//라디오 버튼의 선택 이벤트에 함수 연결
	/* */
	/* var radioButtons = document.querySelectorAll('input[name="bookStart"]');
	for (var i = 0; i < radioButtons.length; i++) {
	    radioButtons[i].addEventListener('change', handleRadioChange);
	} */

	
} // onload 종료


 
// 라디오 버튼 비활성화 함수
function disableRadioButtons() {
    var radioButtons = document.querySelectorAll('input[name="bookStart"]');
    for (var i = 0; i < radioButtons.length; i++) {
        radioButtons[i].disabled = true;
    }
}

//라디오 버튼 활성화 함수
function enableRadioButtons() {
    var radioButtons = document.querySelectorAll('input[name="bookStart"]');
    for (var i = 0; i < radioButtons.length; i++) {
        radioButtons[i].disabled = false;
    }
}

//라디오 버튼 비활성화 함수 --> 지금 이 함수는 사용 안함
function disableUnavailableRadioButtons(time) {
    var radioButtons = document.querySelectorAll('input[name="bookStart"]');
    for (var i = 0; i < radioButtons.length; i++) {
        var radioValue = radioButtons[i].value;
        if (radioValue !== time) {
            radioButtons[i].disabled = true; // 선택할 수 없는 시간은 비활성화
        }
    }
}

//임대호실 콤보상자 
const selectBoxChange = function(){
	 const comboUnitSelect = document.getElementById("comboUnits");
	 const hiddenInput = document.getElementById("selectedValue");
	//let comboUnitSelect = document.getElementById("comboUnits");
	
	//  select element에서 선택된 option의 value가 저장된다.
	let selectValue = comboUnitSelect.options[comboUnitSelect.selectedIndex].value;
	console.log("selectValue : " + selectValue);
	
	// select element에서 선택된 option의 text가 저장된다.
	let selectText = comboUnitSelect.options[comboUnitSelect.selectedIndex].text;
	console.log("selectText : " + selectText);
	
	hiddenInput.value = comboUnitSelect.value;
	console.log("hidden : " + hiddenInput.value);
	
	
	
    if (selectValue) {
       // var selectedTime = selectedRadio.value;
        //console.log("Selected Time: " + selectedTime);
       
        // AJAX를 이용해 서버로 비교 요청 보내기
        var xhr = new XMLHttpRequest();
        xhr.open('POST', 'compareTimes.do', true);
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        
        xhr.onreadystatechange = function() {
             if (xhr.readyState === XMLHttpRequest.DONE) {
                if (xhr.status === 200) {
                    var response = xhr.responseText;
                    
                    // 파싱된 JSON 형식의 응답 데이터를 객체로 변환
                    var responseData = JSON.parse(response);
                    console.log(responseData);
                    // 가져온 시간 값
                    var time = responseData.time;
                    console.log("time : " + time);
                    
                    if (responseData.result === "no-data") {
                        console.log("No data available from the server.");
                        enableRadioButtons(); // 버튼 활성화
                    } else if (responseData.result === "match") {
                        console.log("Selected Time matches DB Value.");
                        
                        // 예약된 시간에 대한 라디오 버튼 처리
                        var radioButtons = document.querySelectorAll('input[name="bookStart"]');
                        for (var i = 0; i < radioButtons.length; i++) {
                            var radioValue = radioButtons[i].value;
                            if (radioValue === time) {
                                radioButtons[i].checked = true; // 선택된 시간으로 체크
                            }
                        }
                        disableRadioButtons(); //버튼 비활성화
                        //disableUnavailableRadioButtons(time); 
                    } else if (responseData.result === "not-match") {
                        console.log("Selected Time does not match DB Value.");
                        enableRadioButtons(); // 버튼 활성화
                    }
                }
            } 
            
        };
        
        xhr.send('selectValue=' + encodeURIComponent(selectValue));
    }
    
}
 