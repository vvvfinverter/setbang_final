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
  
 