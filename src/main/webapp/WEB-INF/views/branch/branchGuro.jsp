<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- JS / Jquery -->
<script src="https://api.mapbox.com/mapbox-gl-js/v2.6.0/mapbox-gl.js"></script>
<script src="/v2/js/jquery-3.3.1.min.js"></script>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-127341454-1"></script>
<script defer="defer" src="https://static.msscdn.net/static/ui-studio/pc/Branch/Branch1.js?20230725"></script>
<!-- Global site tag (gtag.js) - Google Ads: 784112557 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-784112557"></script>

<!-- Style CSS -->
<link rel="stylesheet" href="./resources/css/branch.css">
<link href="https://static.msscdn.net/static/ui-studio/pc/Branch/Branch1.css?20230725" rel="stylesheet">
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" sizes="180x180" href="/v2/home.jpg" />
<link rel="icon" type="image/jpg" href="/v2/home.jpg" sizes="192x192"/>
<link href="https://api.mapbox.com/mapbox-gl-js/v2.6.0/mapbox-gl.css" rel="stylesheet">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<!-- Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<title>지점 안내</title>
</head>
<body>

<div id="header">
    <jsp:include page="../section/header.jsp" />
</div>
		<div id="branchTitle">
          <h2>SETbang 구로점</h2>
          </div>
      <div class="Branch">

        <div class="Branch__visual">
          <div class="Branch__visual__swiper swiper" id="BranchSwiper">
            <div class="swiper-wrapper">
              <div class="swiper-slide">
                <div class="Branch__visual__slide">
                  <img src="//static.musinsa.com/studioImg/renew/branch/branch1-visual-2.jpg?20220628" alt="동대문 지점 이미지2">
                  <span class="Branch__visual__label">
                    개인 오피스
                  </span>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="Branch__visual__slide">
                  <img src="//static.musinsa.com/studioImg/renew/branch/branch1-visual-4.jpg?20220628" alt="동대문 지점 이미지4">
                  <span class="Branch__visual__label">
                    공용 오피스
                  </span>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="Branch__visual__slide">
                  <img src="//static.musinsa.com/studioImg/renew/branch/branch1-visual-5.jpg?20220628" alt="동대문 지점 이미지5">
                  <span class="Branch__visual__label">
                    휴게 공간
                  </span>
                </div>
              </div>
            </div>
          </div>
          <div class="swiper-button-wrap">
            <div class="studio-swiper-button-prev" id="studioPrev">
              <svg width="19" height="18" viewBox="0 0 19 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M11.9004 3L5.90039 8.99965L11.9004 15" stroke="#fff"/>
              </svg>
            </div>
            <div class="studio-swiper-button-next" id="studioNext">
              <svg width="19" height="18" viewBox="0 0 19 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M7.09961 3L13.0996 8.99965L7.09961 15" stroke="#fff"/>
              </svg>
            </div>
          </div>
          <div class="studio-swiper-pagination" id="studioPagination"></div>
        </div>

        <div class="Branch__space">
          <h4 class="Branch__title">개인/공용 오피스</h4>
          <div class="Branch__slide-wrap">
            <div class="Branch__slide__swipe" id="officeSwiper">
              <div class="swiper-wrapper">
                <div class="swiper-slide">
                  <div class="Branch__slide">
                    <div class="Branch__slide__photo">
                      <img src="//static.musinsa.com/studioImg/renew/branch/branch1-office-1.jpg?20220628" alt="사무 공간 이미지1">
                    </div>
                    <div class="Branch__slide__information">
                      <strong>개인 오피스</strong>
                      <p>프라이빗한 사무업무를 위한 공간</p>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="Branch__slide">
                    <div class="Branch__slide__photo">
                      <img src="//static.musinsa.com/studioImg/renew/branch/branch1-office-2.jpg?20220628" alt="사무 공간 이미지2">
                    </div>
                    <div class="Branch__slide__information">
                      <strong>회의실</strong>
                      <p>대형 스크린, 고사양의 프레젠테이션 기기 도입</p>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="Branch__slide">
                    <div class="Branch__slide__photo">
                      <img src="//static.musinsa.com/studioImg/renew/branch/branch1-office-3.jpg?20220628" alt="사무 공간 이미지3">
                    </div>
                    <div class="Branch__slide__information">
                      <strong>사무기기실</strong>
                      <p>기본 사무용품을 이용할 수 있는 공간</p>
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

        <div class="Branch__detail">
          <ul class="Branch__detail__list">
            <li class="Branch__detail__item">
              <strong>제조업, IT, 뷰티, 마케팅 등 다양한 산업분야의 중심</strong>
              <p>다양한 산업분야에 종사하는 입주 멤버들을 지원합니다.<br/>전통적인 오피스 분위기를 지향합니다.<br/>사업에 집중할 수 있도록 특화된 공간.</p>
            </li>
            <li class="Branch__detail__item">
              <strong>비교적 낮은 예치금과 초기 고정 관리비</strong>
              <p>사업을 시작하시는 분들에게 추천드립니다.<br/>고정비용이 부담스러운 분들을 위해<br/>임대료의 부담을 덜어드립니다.</p>
            </li>
            <li class="Branch__detail__item">
              <strong>입주 멤버들 간의 커뮤니티 지원</strong>
              <p>사업분야가 각기 다른 입주 멤버들 간의<br/>오프라인 커뮤니티를 지원합니다.<br/>다양한 산업분야의 인맥 네트워크를 구축해보세요.</p>
            </li>
          </ul>
        </div>

        <div class="Branch__location">
          <h2 class="hidden">위치</h2>
          <div id="branchMap1" class="map">
          </div>
          <div class="Branch__address">
            <p><strong>주소</strong>서울특별시 구로구 넥타이마라톤로 7, 11층</p>
            <p><strong>이메일</strong>setbang@setbang.com</p>
          </div>
        </div>

        <div class="Branch__story" style="background: #40b8c9 !important;">
        <h2 class="main-story__title" style="color: #000000 !important;">MAKE YOUR DREAM</h2>
        <h2 class="main-story__title" style="color: #ffffff !important;">WE WILL SURPPORT</h2>
          <a id="inqueryPage1" href="inquery.do"  data-menu="help" class="Branch__story__link">입주 문의</a>
        </div>
      </div>
	
	<!-- floating Button -->
	<div class="FloatingButton" type="button">
  <div class="FloatingButton__text">
    <a id="inqueryPage2" href="inquery.do" data-menu="help">
		입주 문의
    </a>
  </div>
  <button class="FloatingButton__icon" type="button">
    <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path d="M2.52786 2.52791L11.4722 11.4722M11.4722 2.52783L2.52783 11.4722" stroke="#6E6E6E"/>
    </svg>
  </button>
</div>

<div id="footer">
    <jsp:include page="../section/footer.jsp" />
</div>


<script src="https://cdn.statically.io/gh/zenorocha/clipboard.js/v2.0.10/dist/clipboard.min.js"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-127341454-1');
</script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'AW-784112557');
</script>
<script type="text/javascript" src="/js/userv4.js?20220804"></script>
</body>
</html>