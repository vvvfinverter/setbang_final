<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	

<!DOCTYPE html>
<html lang="ko-KR" dir="ltr" prefix="og: http://ogp.me/ns#">
<head>
<meta charset="UTF-8">
<meta property="og:image:width" content="1200" />
<meta property="og:image:height" content="630" />
<!-- Style CSS -->
<link rel="stylesheet" href="./resources/css/partnerApply.css">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<link rel="stylesheet" href="./resources/jquery-ui-1.12.1/jquery-ui.min.css">
  <link rel="stylesheet" id="fastfive-main-css" href="https://fastfive.co.kr/wp-content/themes/fastfive/assets/css/main.css?ver=64ead2bfc24e5" media="all"/>
  <link rel="stylesheet" id="fastfive-responsive-css" href="https://fastfive.co.kr/wp-content/themes/fastfive/assets/css/responsive.css?ver=64ead2bfc24e5" media="all"/>
<!-- Bootstrap JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<!-- JS/Jquery -->
<script src="./resources/js/partnerApply.js"></script>
<script src="./resources/jquery-ui-1.12.1/jquery-ui.min.js"></script>
<script src="./resources/jquery-ui-1.12.1/datepicker-ko.js"></script>
<title>협력업체 예약</title>
</head>
<body>

		<div id="header">
			<jsp:include page="../section/header.jsp" />
		</div>
		
		<div id="wrap">

	<h2>협력업체 예약</h2>
	<h6>업무에 필요한 협력업체들을 손쉽게 예약하실 수 있습니다.<br/>
		원하는 일자를 선택 후 협력업체를 이용해보세요.<br/><br/>
		(관련 요금은 별도 지불입니다.)</h6>
	
	<div class="partnerBooking">
		<form class="partner" name="partner" method="post" action="insertCompany.do">
			<div class="group">
			<div class="left">
				<label for="name" class="label">신청인</label>
			</div>
				<input type="text" class="name" id="name" value="${PartnerVO.name}" name="name" required/>
			</div>
			
			<div class="group">
			<div class="left">
				<label for="tel" class="label">전화번호</label>
			</div>
				<input type="tel" class="tel" id="tel" value="${PartnerVO.tel}" name="tel" required/>
			</div>
			
			<div class="group">
			<div class="left">
				<label for="date" class="label">시작일 선택</label>
			</div>
				<input class="datePicker" type="text" name="ptr_start" id="ptr_start" size="12" readonly/>
          		<br/>
          	<div class="left">	
          		<label for="date" class="label">종료일 선택</label>
			</div>
          		<input class="datePicker" type="text" name="ptr_end" id="ptr_end" size="12" readonly/>
        </div>

			<div class="group">
    	<div class="left">
        <label for="ptr_name" class="label">분류</label>
        </div>
      			<select class = "partners" name="ptr_cat_code" id="ptr_cat_code" required></select>
        <div class="left">
        <label for="ptr_cat_code" class="label">협력업체명</label>
        </div>
      			<select class = "partners" name="ptr_name" id="ptr_name" required></select>
        </div>

			<button type="submit" class="button">예약하기</button>
		</form>
		</div>
	</div>	
	
	<section class="section blue-bg-section main-section-4 correct_newff">
            <div class="wide-row">   
                <div class="membership-container">
          <div class="membership-row-container">
              <div id="membership-row-1" class="membership-row membership-row-1 membership-ani-ltr" role="list">
              <img role="listitem" alt="CJ대한통운" src="./resources/image/partner_cj.png" width="90" height="90">
              <img role="listitem" alt="KCTC" src="./resources/image/partner_kctc.png" width="90" height="90">
              <img role="listitem" alt="판토스" src="./resources/image/partner_pantos.png" width="90" height="90">
              <img role="listitem" alt="한진택배" src="./resources/image/partner_hanjin.png" width="90" height="90">
              <img role="listitem" alt="GS택배" src="./resources/image/partner_gs.png" width="90" height="90">
              <img role="listitem" alt="용마로지스" src="./resources/image/partner_yongma.png" width="90" height="90">
              <img role="listitem" alt="스토어허브" src="./resources/image/partner_storehub.png" width="90" height="90">
              <img role="listitem" alt="롯데로지스" src="./resources/image/parter_lottelogistics.png" width="90" height="90">
              <img role="listitem" alt="동부로지스" src="./resources/image/parter_dongbu.png" width="90" height="90">
              <img role="listitem" alt="마이창고" src="./resources/image/partner_mychanggo.png" width="90" height="90">
              <img role="listitem" alt="리조이스스튜디오" src="./resources/image/partner_rejoice.png" width="90" height="90">
              <img role="listitem" alt="이지스튜디오" src="./resources/image/partner_ez.png" width="90" height="90">
              <img role="listitem" alt="와우플레닛" src="./resources/image/partner_wowplanet.png" width="90" height="90">
              <img role="listitem" alt="모멘트스튜디오" src="./resources/image/partner_moment.png" width="90" height="90">
              <img role="listitem" alt="스튜디오파로" src="./resources/image/parnter_paro.png" width="90" height="90">
              <img role="listitem" alt="모두의셔틀" src="./resources/image/partner_modu.png" width="90" height="90">
              <img role="listitem" alt="쏘카" src="./resources/image/partner_socar.png" width="90" height="90">
              <img role="listitem" alt="그린카" src="./resources/image/partner_greencar.png" width="90" height="90">
              <img role="listitem" alt="티머니온다" src="./resources/image/partner_tmoney.png" width="90" height="90">
              <img role="listitem" alt="대한항공" src="./resources/image/partner_koreanair.png" width="90" height="90">
              <img role="listitem" alt="NoPlasticSunday" src="./resources/image/partner_noplasticsunday.png" width="90" height="90">
              <img role="listitem" alt="씨엔에프" src="./resources/image/partner_cnf.png" width="90" height="90">
              <img role="listitem" alt="아이디스" src="./resources/image/partner_idis.png" width="90" height="90">
              <img role="listitem" alt="파워로직스" src="./resources/image/partner_powerlogics.png" width="90" height="90">
              <img role="listitem" alt="고려산업" src="./resources/image/partner_koreaindustrial.png" width="90" height="90">
          </div>
<!--           <div class="membership-row-container">
              <div id="membership-row-2" class="membership-row membership-row-2 membership-ani-ltr membership-ani-rtl" role="list">           
                  <img role="listitem" alt="텀블벅" src="./resources/image/cnf.jpg">
                  <img role="listitem" alt="miso" src="./resources/image/noplasticsunday.jpg">
                  <img role="listitem" alt="네이버 커텍트" src="./resources/image/skinfarm.png">
                  <img role="listitem" alt="프레인글로벌" src="./resources/image/greencar.png">
                  <img role="listitem" alt="한화시스템" src="./resources/image/socar.png">
                  <img role="listitem" alt="퍼블리" src="./resources/image/modu.jpg">
                  <img role="listitem" alt="바카디" src="./resources/image/ezstudio.jpeg">
              <img role="listitem" alt="텀블벅" src="./resources/image/rejoysstudio.png">
              <img role="listitem" alt="miso" src="./resources/image/makepan.jpg">
              <img role="listitem" alt="네이버 커텍트" src="./resources/image/storehub.png">
              <img role="listitem" alt="프레인글로벌" src="./resources/image/Lcamp.png">
              <img role="listitem" alt="한화시스템" src="./resources/image/yamuzim.png">
              <img role="listitem" alt="퍼블리" src="./resources/image/KCTC.jpg">
              <img role="listitem" alt="바카디" src="./resources/image/donga.png">
              <img role="listitem" alt="텀블벅" src="./resources/image/cj.jpg">
              <img role="listitem" alt="miso" src="./resources/image/cnf.jpg">
              <img role="listitem" alt="네이버 커텍트" src="./resources/image/noplasticsunday.jpg">
              <img role="listitem" alt="프레인글로벌" src="./resources/image/skinfarm.png">
              <img role="listitem" alt="한화시스템" src="./resources/image/greencar.png">
              <img role="listitem" alt="퍼블리" src="./resources/image/socar.png">
              <img role="listitem" alt="바카디" src="./resources/image/modu.jpg">
              <img role="listitem" alt="텀블벅" src="./resources/image/ezstudio.jpeg">
              <img role="listitem" alt="miso" src="./resources/image/rejoysstudio.png">
              <img role="listitem" alt="네이버 커텍트" src="./resources/image/makepan.jpg">
              <img role="listitem" alt="프레인글로벌" src="./resources/image/storehub.png">
              <img role="listitem" alt="한화시스템" src="./resources/image/Lcamp.png">
              <img role="listitem" alt="퍼블리" src="./resources/image/yamuzim.png">
              <img role="listitem" alt="바카디" src="./resources/image/KCTC.jpg">
              <img role="listitem" alt="퍼블리" src="./resources/image/donga.png">
              <img role="listitem" alt="바카디" src="./resources/image/cj.jpg">
              </div>
          </div>
          <div class="membership-row-container">
              <div id="membership-row-3" class="membership-row membership-row-3 membership-ani-ltr" role="list">
                  <img role="listitem" alt="차봇" src="./resources/image/cj.jpg">
                  <img role="listitem" alt="패스트캠퍼스" src="./resources/image/donga.png">
                  <img role="listitem" alt="원룸만들기" src="./resources/image/KCTC.jpg">
                  <img role="listitem" alt="광동제약" src="./resources/image/yamuzim.png">
                  <img role="listitem" alt="여행에미치다" src="./resources/image/Lcamp.png">
                  <div><img role="listitem" alt="차이코퍼레이션" src="./resources/image/storehub.png">
              </div>
          <img role="listitem" alt="차봇" src="./resources/image/makepan.jpg">
          <img role="listitem" alt="패스트캠퍼스" src="./resources/image/rejoysstudio.png">
          <img role="listitem" alt="원룸만들기" src="./resources/image/ezstudio.jpeg">
          <img role="listitem" alt="광동제약" src="./resources/image/modu.jpg">
          <img role="listitem" alt="여행에미치다" src="./resources/image/socar.png">
          <img role="listitem" alt="차이코퍼레이션" src="./resources/image/greencar.png">
          <img role="listitem" alt="차봇" src="./resources/image/skinfarm.png">
          <img role="listitem" alt="패스트캠퍼스" src="./resources/image/noplasticsunday.jpg">
          <img role="listitem" alt="원룸만들기" src="./resources/image/cnf.jpg">
          <img role="listitem" alt="여행에미치다" src="./resources/image/cj.jpg">
          <img role="listitem" alt="차이코퍼레이션" src="./resources/image/donga.png">
          <img role="listitem" alt="차봇" src="./resources/image/KCTC.jpg">
          <img role="listitem" alt="패스트캠퍼스" src="./resources/image/yamuzim.png">
          <img role="listitem" alt="원룸만들기" src="./resources/image/Lcamp.png">
          <img role="listitem" alt="광동제약" src="./resources/image/storehub.png">
          <img role="listitem" alt="여행에미치다" src="./resources/image/makepan.jpg">
          <img role="listitem" alt="차이코퍼레이션" src="./resources/image/rejoysstudio.png">
          <img role="listitem" alt="차이코퍼레이션" src="./resources/image/ezstudio.jpeg">
          <img role="listitem" alt="차이코퍼레이션" src="./resources/image/modu.jpg">
          <img role="listitem" alt="차이코퍼레이션" src="./resources/image/socar.png">
          <img role="listitem" alt="차이코퍼레이션" src="./resources/image/greencar.png">
          <img role="listitem" alt="차이코퍼레이션" src="./resources/image/skinfarm.png">
          <img role="listitem" alt="차이코퍼레이션" src="./resources/image/noplasticsunday.jpg">
          <img role="listitem" alt="차이코퍼레이션" src="./resources/image/cnf.jpg">
          </div>
      </div> -->
  </div>
</div></section>

		<div id="footer">
			<jsp:include page="../section/footer.jsp" />
		</div>
		
		
		
<script type="text/javascript">
$(function(){
$("#ptr_start").datepicker({
	showOn: "button",
    buttonImage: "./resources/image/calendar.png",
    buttonImageOnly: false,
	buttonText: "Select date",
	minDate: new Date()
});
$("#ptr_end").datepicker({
	showOn: "button",
    buttonImage: "./resources/image/calendar.png",
    buttonImageOnly: false,
	buttonText: "Select date",
	minDate: new Date()
});
});

$(document).ready(function () {
        $.datepicker.setDefaults($.datepicker.regional['ko']); 
        $( "#ptr_start" ).datepicker({
             changeMonth: true, 
             changeYear: true,
             closeText: '닫기',
             nextText: '다음 달',
             prevText: '이전 달', 
             dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
             dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
             monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
             monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
             minDate: +1,
             dateFormat: "yyyy-mm-dd",
             onClose: function( selectedDate ) {    
                  //시작일(start 0Date) datepicker가 닫힐때
                  //종료일(endDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
                 $("#ptr_end").datepicker( "option", "minDate", selectedDate );
             }    

        });
        $( "#ptr_end" ).datepicker({
             changeMonth: true, 
             changeYear: true,
             closeText: '닫기',
             nextText: '다음 달',
             prevText: '이전 달', 
             dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
             dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
             monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
             monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
             dateFormat: "yyyy-mm-dd",
             onClose: function( selectedDate ) {    
                 // 시작일(startDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 시작일로 지정
                 $("#ptr_start").datepicker( "option", "maxDate", selectedDate );
             }    

        });    
        $(".button").click(function() {
            if ($("#name").val() !== "" && $("#tel").val() !== "" && $("#ptr_start").val() !== "" && $("#ptr_end").val() !== "" && $("#ptr_cat_code").val() !== "" && $("#ptr_name").val() !== "") {
                  alert("예약이 완료되었습니다.");
             location.href = "./resources/views/partner/partnerApply.jsp";
             }else{
                alert("예약 신청서 양식에 맞게 작성해주세요.");
             }
        });
 });

</script>

</body>
</html>