<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<%-- <html xmlns:th="http://www.thymeleaf.org"> --%>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<!-- Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

<!-- Style CSS -->
<link rel="stylesheet" href="./resources/css/pubOffice.css">
<link rel="stylesheet" href="./resources/css/branch.css">
<link href="https://static.msscdn.net/static/ui-studio/pc/Branch/Branch1.css?20230725" rel="stylesheet">
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" sizes="180x180" href="/v2/home.jpg" />
<link rel="icon" type="image/jpg" href="/v2/home.jpg" sizes="192x192"/>
<link href="https://api.mapbox.com/mapbox-gl-js/v2.6.0/mapbox-gl.css" rel="stylesheet">

<!-- JS / Jquery -->
<script type="text/javascript" src="./resources/js/pubOffice.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- jQuery UI -->
<link rel="stylesheet" href="./resources/jquery-ui-1.12.1/jquery-ui.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="./resources/jquery-ui-1.12.1/jquery-ui.min.js"></script>
<script src="./resources/jquery-ui-1.12.1/datepicker-ko.js"></script> 

<title>공용 공간 예약</title>
</head>
<body>

<div id="header">
	<jsp:include page="../section/header.jsp" />
</div>

<div id="branchTitle">
          <h2>공용 공간 예약</h2>
          </div>
      <div class="Branch">

        <div class="Branch__space">
          <div class="Branch__slide-wrap">
            <div class="Branch__slide__swipe" id="officeSwiper">
              <div class="swiper-wrapper">
                <div class="swiper-slide">
                  <div class="Branch__slide">
                    <div class="Branch__slide__photo">
                      <img src="./resources/image/slide2-2_pangyo.jpg" alt="사무 공간 이미지1">
                    </div>
                    <div class="Branch__slide__information">
                      <strong>회의실</strong>
                      <p>대형 스크린, 고사양의 프레젠테이션 기기 도입<br/><br/>최대 예약 가능 인원 : 10명<br/>최대 이용시간 : 2시간</p>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="Branch__slide">
                    <div class="Branch__slide__photo">
                      <img src="./resources/image/slide2-2_gangnam.jpg" alt="사무 공간 이미지2">
                    </div>
                    <div class="Branch__slide__information">
                      <strong>회의실</strong>
                      <p>대형 스크린, 고사양의 프레젠테이션 기기 도입<br/><br/>최대 예약 가능 인원 : 10명<br/>최대 이용시간 : 2시간</p>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="Branch__slide">
                    <div class="Branch__slide__photo">
                      <img src="./resources/image/slide2-5_pangyo.jpg" alt="사무 공간 이미지4">
                    </div>
                    <div class="Branch__slide__information">
                      <strong>힐링룸</strong>
                      <p>안마기기 및 전문 마사지사 예약 가능<br/><br/>최대 예약 가능 인원 : 2명<br/>최대 이용시간 : 2시간</p>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="Branch__slide">
                    <div class="Branch__slide__photo">
                      <img src="./resources/image/slide2-5_gangnam.jpg" alt="사무 공간 이미지5">
                    </div>
                    <div class="Branch__slide__information">
                      <strong>힐링룸</strong>
                      <p>안마기기 및 전문 마사지사 예약 가능<br/><br/>최대 예약 가능 인원 : 2명<br/>최대 이용시간 : 2시간</p>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="Branch__slide">
                    <div class="Branch__slide__photo">
                      <img src="./resources/image/slide2-6_pangyo.jpg" alt="사무 공간 이미지5">
                    </div>
                    <div class="Branch__slide__information">
                      <strong>멀티미디어룸</strong>
                      <p>전자기기 사용, 영화 관람<br/><br/>최대 예약 가능 인원 : 15명<br/>최대 이용시간 : 2시간</p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="swiper-button-wrap">
                <div class="studio-swiper-button-prev" id="officePrev">
                  <svg width="19" height="18" viewBox="0 0 19 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M11.9004 3L5.90039 8.99965L11.9004 15" stroke="#fff"/>
                  </svg>
                </div>
                <div class="studio-swiper-button-next" id="officeNext">
                  <svg width="19" height="18" viewBox="0 0 19 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M7.09961 3L13.0996 8.99965L7.09961 15" stroke="#fff"/>
                  </svg>
                </div>
              </div>
              <div class="studio-swiper-pagination" id="officePagination"></div>
            </div>
          </div>
        </div>
        </div>

<div id="booking">
<form name="frm">
	<label for="bookDate">예약일자</label><br/>
	<input type="text" class="datePicker" name="bookDate" id="bookDate" size="12" readonly/><br/>
	<label for="book_people">인원</label> <br/>
	<select id = "book_people" name="bookPeople" required>
		<option value="">선택</option>
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
		<option value="5">5</option>
		<option value="6">6</option>
		<option value="7">7</option>
		<option value="8">8</option>
		<option value="9">9</option>
		<option value="10">10</option>
		<option value="11">11</option>
		<option value="12">12</option>
		<option value="13">13</option>
		<option value="14">14</option>
		<option value="15">15</option>
	</select> <br/>
		<label>공용공간 호실</label><br/>
		<select name="comboUnits" id = "comboUnits" onchange="selectBoxChange()" required="required">
 			<option value="" selected="selected">선택</option>
 			<c:forEach var="i" items="${pubUnits}">
				<option value="${i.pubCode}">${i.pubUnit}</option>
			</c:forEach> 
			</select> <br/>
	<input type="hidden" name = "selectedValue" id="selectedValue" /> 
	
<div class="bookingStart">
    <label>사용 시간</label><br/>
    <label>
        <input type="radio" name="bookStart" value="08:00" class="radio-button" hidden>
        <button type="button" name="bookStartBtn" class="styled-button" value="08:00" onclick="connectButtonToRadio(this)">8:00</button>
    </label>
    <label>
        <input type="radio"  name="bookStart" value="10:00" class="radio-button" hidden>
        <button type="button" name="bookStartBtn" class="styled-button" value="10:00" onclick="connectButtonToRadio(this)">10:00</button>
    </label>
    <label>
        <input type="radio"  name="bookStart" value="13:00" class="radio-button" hidden>
        <button type="button" name="bookStartBtn" class="styled-button" value="13:00" onclick="connectButtonToRadio(this)">13:00</button>
    </label>
    <label>
        <input type="radio"  name="bookStart" value="15:00" class="radio-button" hidden>
        <button type="button" name="bookStartBtn" class="styled-button" value="15:00" onclick="connectButtonToRadio(this)">15:00</button>
    </label>
    <label>
        <input type="radio"  name="bookStart" value="17:00" class="radio-button" hidden>
        <button type="button" name="bookStartBtn" class="styled-button" value="17:00" onclick="connectButtonToRadio(this)">17:00</button>
    </label>
</div>


  	<button id ="btnSubmit" type="button" value="예약하기">예약하기</button>
</form>
</div>



<div id="footer">
	<jsp:include page="../section/footer.jsp" />
</div>

<script type="text/javascript">
//<![CDATA[
$(function(){
	$("#bookDate").datepicker({
		showOn: "button",
        buttonImage: "./resources/image/calendar.png",
	    buttonImageOnly: false,
		buttonText: "Select date",
		minDate: +1
	});
});
//]]>

</script>

<!-- JS / Jquery -->
<script src="https://api.mapbox.com/mapbox-gl-js/v2.6.0/mapbox-gl.js"></script>
<script src="/v2/js/jquery-3.3.1.min.js"></script>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-127341454-1"></script>
<script defer="defer" src="https://static.msscdn.net/static/ui-studio/pc/Branch/Branch1.js?20230725"></script>
<!-- Global site tag (gtag.js) - Google Ads: 784112557 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-784112557"></script>

</body>
</html>