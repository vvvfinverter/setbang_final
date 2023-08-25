// 업무지원 서비스 선택
document.addEventListener('DOMContentLoaded', function() {
    const radioInputs = document.querySelectorAll('.radio-input');
    
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
});

  
 