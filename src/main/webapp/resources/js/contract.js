    function selectBoxChange(selectedValue) {
        var privOfficeSelect = document.getElementById("priv_office");
        var options = privOfficeSelect.options;

        // 기본적으로 모든 option 보이도록 설정
        for (var i = 0; i < options.length; i++) {
            options[i].style.display = "block";
        }

        // 선택된 brunch 값에 따라 보이지 않는 option을 숨김
        for (var i = 0; i < options.length; i++) {
            var option = options[i];
            var dataBrunch = option.getAttribute("data-brunch");
            if (dataBrunch && dataBrunch !== selectedValue) {
                option.style.display = "none";
            }
        }
    }

