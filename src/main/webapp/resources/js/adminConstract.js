function selectBoxChange(selectedValue) {
    var privCodeSelect = document.getElementById('priv_code');
    
    // 모든 옵션을 숨김
    for (var i = 0; i < privCodeSelect.options.length; i++) {
        privCodeSelect.options[i].style.display = 'none';
    }
    
    // 선택한 지점에 해당하는 옵션들을 보이도록 설정
    var selectedOptions = privCodeSelect.querySelectorAll('[data-brunch="' + selectedValue + '"]');
    for (var j = 0; j < selectedOptions.length; j++) {
        selectedOptions[j].style.display = 'block';
    }
}
