const objTest = {
전체: ['CJ대한통운', '동아운수', 'KCTC', '야무짐', '로지스캠프'
, '스토어허브', '메이크팬', '리조이스튜디오', '이지스튜디오', '모두의셔틀', '쏘카'
, '그린카', 'skinfarm', 'NoPlasticSunday', '씨엔에프'],
물류: ['CJ대한통운', '동아운수', 'KCTC'],
창고: ['야무짐', '로지스캠프', '스토어허브'],
스튜디오: ['메이크팬', '리조이스튜디오', '이지스튜디오'],
교통수단: ['모두의셔틀', '쏘카', '그린카'],
OEM공장: ['skinfarm', 'NoPlasticSunday', '씨엔에프']
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


