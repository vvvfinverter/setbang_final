const objTest = {
전체: ['CJ대한통운', 'KCTC', '판토스', '한진택배', 'GS택배'
, '용마로지스', '스토어허브', '롯데로지스', '동부로지스', '마이창고'
, '리조이스스튜디오', '이지스튜디오', '와우플레닛', '모멘트스튜디오', '스튜디오파로'
, '모두의셔틀', '쏘카', '그린카', '티머니온다', '대한항공'
, 'NoPlasticSunday', '씨엔에프', '아이디스', '파워로직스', '고려산업'
],
물류: ['CJ대한통운', 'KCTC', '판토스', '한진택배', 'GS택배'],
창고: ['용마로지스', '스토어허브', '롯데로지스', '동부로지스', '마이창고'],
스튜디오: ['리조이스스튜디오', '이지스튜디오', '와우플레닛', '모멘트스튜디오', '스튜디오파로'],
교통수단: ['모두의셔틀', '쏘카', '그린카', '티머니온다', '대한항공'],
OEM공장: ['NoPlasticSunday', '씨엔에프', '아이디스', '파워로직스', '고려산업']
};

$(function() {
  init();

  $(document).on('change', 'select[name=ptr_cat_code]', function() {
    const classVal = $(this).val();
    $('select[name=ptr_name] option').each(function(idx, item) {
      if ($(this).data('class') == classVal || $(this).val() == '') {
        $(this).show();
      } else {
        $(this).hide();
      }
    });
    $('select[name=ptr_name]').val('');
  })
});

// Selectbox option 생성
function init() {
  let sClassHtml = '<option value="">선택</option>';
  let sItemHtml = '<option value="">선택</option>';

  for (const key in objTest) {
    sClassHtml += `<option value="${key}">${key}</option>`;

    const list = objTest[key];
    for (let i = 0; i < list.length; i++) {
      sItemHtml += `<option value="${list[i]}" data-class="${key}">${list[i]}</option>`;
    }
  }
  $('select[name=ptr_cat_code]').html(sClassHtml);
  $('select[name=ptr_name]').html(sItemHtml);

  $('select[name=ptr_name] option').each(function(idx, item) {
    if ($(this).val() == '') return true;
    $(this).hide();
  });
}


