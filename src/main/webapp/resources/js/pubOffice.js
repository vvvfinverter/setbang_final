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

// submit버튼 클릭시 값들을 가지고 insert함	
document.querySelector('#btnSubmit').addEventListener('click', function(){
	
    var currentDate = new Date(); // 현재 시간 가져오기
    var currentHour = currentDate.getHours(); // 현재 시간의 시간 부분
    var currentDay = currentDate.getDate(); // 현재 날짜의 날짜 부분

    var selectedDate = new Date(document.querySelector('#bookDate').value);
    var selectedDay = selectedDate.getDate(); // 선택한 날짜의 날짜 부분


		
   		// 선택한 값
   		var bookDate = document.querySelector('#bookDate').value;
    	var bookStartValue = document.querySelector('input[name="bookStart"]:checked').value;
   		//var book_people = document.querySelector('#book_people').value;
    	var comboUnits = document.querySelector('#comboUnits').value;
    	var book_people = document.querySelector('#book_people').value; // 인원 추가
		//var book_people = document.querySelector('input[name="book_people"]:checked').value;
		console.log("book_people : " + book_people);
    	var comboUnits = document.querySelector('#comboUnits').value; // 임대호실 추가

	
		
	       // 예약일자, 인원, 사용시간, 임대호실이 입력되었는지 체크
        if (bookDate === "") {
            alert("예약일자를 선택하세요.");
            return;
        }

        if (book_people === "") {
            alert("인원을 선택하세요.");
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
		//alert("공용 오피스 예약이 성공적으로 완료하였습니다.");
		frm.submit();
	});
	
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



//라디오 상자와 버튼의 값을 연결하는 하는 함수
function connectButtonToRadio(button) {
    var buttonValue = button.value;

var radioButtons = document.querySelectorAll('input[name="bookStart"]');

    for (var i = 0; i < radioButtons.length; i++) {
        if (radioButtons[i].value === buttonValue) {
	 //console.log("Value of radio button " + (i + 1) + ": " + radioButtons[i].value);
            radioButtons[i].checked = true; // 선택된 라디오 버튼 체크
        } else {
            radioButtons[i].checked = false; // 선택되지 않은 라디오 버튼 체크 해제
        }
    }
}



//임대호실 콤보상자 pubCode가 고유값
const selectBoxChange = function(){
	 const comboUnitSelect = document.getElementById("comboUnits");
	 const hiddenInput = document.getElementById("selectedValue");
	 const bookDate = document.getElementById("bookDate"); // 예약일자 input 요소
	 //const bookStartRadios = document.getElementsByName("bookStart");
	
	//  select element에서 선택된 option의 value가 저장된다.
	let selectValue = comboUnitSelect.options[comboUnitSelect.selectedIndex].value;
	console.log("selectValue : " + selectValue);
	
	
	// comboUnitSelect 값을 히든 값에 대입 
	hiddenInput.value = comboUnitSelect.value;
	console.log("hidden : " + hiddenInput.value);
	
	const bookDateSelect = bookDate.value; // 예약일자 값
	console.log("bookDateSelect : " + bookDateSelect);
	
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
                
                if (responseData.result === "match") {
                    console.log("Selected Time matches DB Value.");

                    // 예약된 시간에 대한 처리
                    const bookStartRadios = document.getElementsByName("bookStart");
                    for (var i = 0; i < bookStartRadios.length; i++) {
                        var radioValue = bookStartRadios[i].value;

                        if (radioValue === time && bookDateSelect === responseData.bookDate) {
						//bookStartRadios[i].nextElementSibling.innerText = "이미 예약된 시간";
                            // radio 버튼 비활성화
                            bookStartRadios[i].disabled = true;
                        } else {
                            // radio 버튼 활성화
                            bookStartRadios[i].disabled = false;
                        }
                    }
                }
            }
        } 
    };
    
    xhr.send('selectValue=' + encodeURIComponent(selectValue) + '&bookDate=' + encodeURIComponent(bookDateSelect));
}
 