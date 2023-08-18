// 서비스 플랜 선택
  document.addEventListener('DOMContentLoaded', function() {
    const radioInputs = document.querySelectorAll('.radio-input');
    const form = document.querySelector('form');

    radioInputs.forEach(input => {
      input.addEventListener('change', () => {
        radioInputs.forEach(otherInput => {
          otherInput.nextElementSibling.classList.remove('selected');
        });

        if (input.checked) {
          input.nextElementSibling.classList.add('selected');
        }
      });
    });

    form.addEventListener('submit', function(event) {
      event.preventDefault();
      
      const selectedRadio = form.querySelector('.radio-input:checked');
      if (selectedRadio) {
        const selectedValue = selectedRadio.value;
      }
    });
  });
  
 
// 서비스 플랜 결제하기 모달

var selectedBoxChange = function(){
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
}