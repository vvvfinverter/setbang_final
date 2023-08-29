<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta property="og:image:width" content="1200" />
<meta property="og:image:height" content="630" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- JS / Jquery -->
<script src="https://api.mapbox.com/mapbox-gl-js/v2.6.0/mapbox-gl.js"></script>
<script src="/v2/js/jquery-3.3.1.min.js"></script>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-127341454-1"></script>
<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
<script defer="defer" src="https://static.msscdn.net/static/ui-studio/pc/Main.js?20230725"></script>
<!-- Style CSS -->
<link rel="stylesheet" href="./resources/css/mainPage.css">
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link href="https://api.mapbox.com/mapbox-gl-js/v2.6.0/mapbox-gl.css" rel="stylesheet">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<link rel="stylesheet" href="./resources/jquery-ui-1.12.1/jquery-ui.min.css">
<link href="https://static.msscdn.net/static/ui-studio/pc/Main.css?20230725" rel="stylesheet">
<link rel='stylesheet' id='fastfive-main-css' href='https://fastfive.co.kr/wp-content/themes/fastfive/assets/css/main.css?ver=64ebfd80961dc' media='all' />
<link rel="stylesheet" id="fastfive-main-css" href="https://fastfive.co.kr/wp-content/themes/fastfive/assets/css/main.css?ver=64ead2bfc24e5" media="all"/>
<link rel="stylesheet" id="fastfive-responsive-css" href="https://fastfive.co.kr/wp-content/themes/fastfive/assets/css/responsive.css?ver=64ead2bfc24e5" media="all"/>
<link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin><script src='https://fastfive.co.kr/wp-includes/js/jquery/jquery.min.js?ver=3.7.0' id='jquery-core-js'></script>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<link rel='stylesheet' id='e-animations-css' href='https://fastfive.co.kr/wp-content/plugins/elementor/assets/lib/animations/animations.min.css?ver=3.15.1' media='all' />
<!-- Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script src='https://fastfive.co.kr/wp-content/themes/fastfive/assets/js/main.js?ver=64ebfd80961dc' id='fastfive-main-js'></script>
<script src='https://fastfive.co.kr/wp-content/plugins/elementor-pro/assets/lib/smartmenus/jquery.smartmenus.min.js?ver=1.0.1' id='smartmenus-js'></script>
<script src='https://fastfive.co.kr/wp-content/plugins/elementor-pro/assets/js/webpack-pro.runtime.min.js?ver=3.14.1' id='elementor-pro-webpack-runtime-js'></script>
<title>SETbang</title>
</head>
<body>

<section class="main-intro" id="intro1">
        <div class="main-intro__item gsap-animation-enter">
          <div class="main-intro__image">
            <img src="./resources/image/SETbangMain1.gif" alt="SETbangMain1">
          </div>
          <div class="main-intro__text">
            <strong class="main-intro__text__title">
              <span>
                새로운 사업의 시작!
              </span>
              <span>
                SETbang에서 시작하세요.
              </span>
            </strong>
            <p class="main-intro__text__sub-text">
            사업 초기비용이 부담되시나요?<br/>
      SETbang이 도와드리겠습니다.</p>
          </div>
        </div>
        <div class="main-intro__item gsap-animation-enter">
          <div class="main-intro__image">
            <img src="./resources/image/SETbangMain2.jpg" alt="SETbangMain2">
          </div>
          <div class="main-intro__text">
            <strong class="main-intro__text__title">
              <span>
      	 다양한 분야에 적합한
              </span>
              <span>
                탁월한 위치, 공간, 서비스
              </span>
            </strong>
            <p class="main-intro__text__sub-text">SETbang은 다양한 분야의 입주 멤버가<br/>오직 사업에 집중 할 수 있도록<br/>최적의 인프라를 제공합니다.</p>
          </div>
        </div>
        <div class="main-intro__item gsap-animation-enter">
          <div class="main-intro__image">
            <img src="./resources/image/SETbangMain3.jpg" alt="SETbangMain3">
          </div>
          <div class="main-intro__text">
            <strong class="main-intro__text__title">
              <span>
                사업에 필요한 모든 것
              </span>
              <span>
                통합 서비스를 제공하는
              </span>
              <span>
        		SETbang
              </span>
            </strong>
            <p class="main-intro__text__sub-text">
		각종 공용 오피스 시설부터<br/>
		필요한 물품 제공, 서류대행, 협력업체 예약 제공
            </p>
          </div>
        </div>
      </section>

      <section class="main-service gsap-animation-enter" style="background-color: #f0f0f0;" id="intro2">
        <div class="main-service__inner">
          <header class="">
            <h2 class="main-service__title">
              <span style="color: #000000;">SETbang 만의</span>
              <span style="color: #000000;">서비스 플랜</span>
            </h2>
            <p class="main-service__sub-text">사업을 시작하려는 분들에게<br/>저렴한 가격으로 통합 서비스를 제공합니다.<br/><br/>
          <img src="./resources/image/basicMin.png" width=60px height=60px />
          <img src="./resources/image/standardMin.png" width=60px height=60px />
          <img src="./resources/image/premiumMin.png" width=60px height=60px /></p>
          </header>
          <ul class="main-service__structure">
            <li>
              <figure>
               <img src="./resources/image/standardMin.png" width=60px height=60px />
                <figcaption>STANDARD<br/>서류업무 대행 서비스가 추가됩니다.</figcaption>
              </figure>
            </li>
            <li>
              <figure>
               <img src="./resources/image/planicon1.png" width=60px height=60px />
                <figcaption>기본 서비스<br/>공용 오피스 예약</figcaption>
              </figure>
            </li>
            <li>
              <figure>
               <img src="./resources/image/planicon2.png" width=60px height=60px />
                <figcaption>기본 서비스<br/>각종 물품 지원</figcaption>
              </figure>
            </li>
            <li>
              <figure>
              <img src="./resources/image/planicon3.png" width=60px height=60px />
                <figcaption>추가 서비스<br/>서류업무 대행</figcaption>
              </figure>
            </li>
            <li>
              <figure>
              </figure>
            </li>
            <li>
              <figure>
               <img src="./resources/image/premiumMin.png" width=60px height=60px />
                <figcaption>PREMIUM<br/>협력업체 예약 서비스가 추가됩니다.</figcaption>
              </figure>
            </li>
            <li>
              <figure>
               <img src="./resources/image/planicon1.png" width=60px height=60px />
                <figcaption>기본 서비스<br/>공용 오피스 예약</figcaption>
              </figure>
            </li>
            <li>
              <figure>
               <img src="./resources/image/planicon2.png" width=60px height=60px />
                <figcaption>기본 서비스<br/>각종 물품 지원</figcaption>
              </figure>
            </li>
            <li>
              <figure>
               <img src="./resources/image/planicon3.png" width=60px height=60px />
                <figcaption>추가 서비스<br/>서류업무 대행</figcaption>
              </figure>
            </li>
            <li>
              <figure>
               <img src="./resources/image/planicon4.png" width=60px height=60px />
                <figcaption>추가 서비스<br/>협력업체 예약</figcaption>
              </figure>
            </li>
          </ul>
        </div>
      </section>
      


    
      <section class="main-office" id="intro3">
        <header>
          <h2 style="color: #000000 !important;">사업에 최적화된 도심 중심의 오피스</h2>
        </header>
        <article class="main-office__item">
          <img src="./resources/image/mainOffice1.jpg" class="main-office__image" alt="Guro">
          <dl class="main-office__information">
            <dt class="main-office__information__title">SETbang 구로점</dt>
            <dd class="main-office__information__address">서울특별시 구로구 넥타이마라톤로 7, 11층</dd>
            <dd class="main-office__information__list">
              <ul>
                <li>다양한 산업분야</li>
                <li>오피스 집중</li>
              </ul>
            </dd>
            <dd class="main-office__information__link">
              <a id="branchPage" href="branchGuro.do" data-menu="branch1">
                자세히 보기
              </a>
            </dd>
          </dl>
        </article>
        <article class="main-office__item">
         <img src="./resources/image/mainOffice2.jpg" class="main-office__image" alt="Gangnam">
          <dl class="main-office__information">
            <dt class="main-office__information__title">SETbang 강남점</dt>
            <dd class="main-office__information__address">서울 강남구 테헤란로 191, 14층</dd>
            <dd class="main-office__information__list">
              <ul>
                <li>다양한 산업분야</li>
                <li>커뮤니티 지원</li>
              </ul>
            </dd>
            <dd class="main-office__information__link">
              <a id="branchPage" href="branchGangnam.do" data-menu="branch2">
                자세히 보기
              </a>
            </dd>
          </dl>
        </article>
        <article class="main-office__item">
         <img src="./resources/image/mainOffice3.jpg" class="main-office__image" alt="Pangyo">
          <dl class="main-office__information">
            <dt class="main-office__information__title">SETbang 판교점</dt>
            <dd class="main-office__information__address">경기도 성남시 분당구 판교동 33, 10층</dd>
            <dd class="main-office__information__list">
              <ul class="goleft">
                <li>IT분야 맞춤</li>
                <li>자유로운 분위기</li>
              </ul>
            </dd>
            <dd class="main-office__information__link">
              <a id="branchPage" href="branchPangyo.do" data-menu="branch3">
                자세히 보기
              </a>
            </dd>
          </dl>
        </article>
      </section>

<section class="section blue-bg-section main-section-4 correct_newff" style="background-color: #f5feff;" id="intro4">
            <div class="wide-row">
                <div class="row">
                    <h2 class="section-heading">
                        다양한 분야의 업체들과 제휴
                    </h2>
                    <p class="section-description">
			서류작성에서 협력업체 예약까지<br class="hidden_pc" />
			SETbang에서 간편하게
                    </p>
                </div>
                <div class="membership-container">
                    <div class="membership-row-container">
                        <div id="membership-row-1" class="membership-row membership-row-1" role="list">
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
                    </div>
                    <div class="membership-row-container">
                        <div id="membership-row-2" class="membership-row membership-row-2" role="list">
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
                    </div>
            </div>
            </div>
        </section>    


      <section class="main-infra" style="background-color: #707070;" id="intro5">
        <div class="main-infra__inner">
          <header>
            <h2 style="color: #ffffff;">사업이 성장하는데<br/>필요한 인프라가 있는 곳</h2>
            <p style="color: #ffffff !important;">(주)CO-SPACE는 '동반 성장'이란 철학을 바탕으로<br/>사업 편의성을 제공하는 SETbang을 설립했습니다.<br/>더 큰 꿈을 이룰 수 있는 공간을 제공하겠습니다.</p>
          </header>
          <div class="main-infra__swiper-wrap">
            <div class="swiper main-infra__swiper">
              <div class="swiper-wrapper">
                 <a href="#" data-menu="event" class="swiper-slide">
                  <img src="./resources/image/mainSlide1.jpg" alt="mainSlide1">
                  <em>특색있는 오피스</em>
                </a>
                <a href="#" data-menu="support" class="swiper-slide">
                  <img src="./resources/image/mainSlide2.jpg" alt="mainSlide2">
                  <em>서비스 지원</em>
                </a>
                <a href="#" data-menu="community" class="swiper-slide">
                  <img src="./resources/image/mainSlide3.jpg" alt="mainSlide3">
                  <em>커뮤니티</em>
                </a>
              </div>
            </div>
            <div class="main-infra__swiper-button-prev">
              <svg width="34" height="34" viewBox="0 0 34 34" fill="none" xmlns="http://www.w3.org/2000/svg">
                <g opacity="0.5">
                  <path d="M21.5332 5.66602L10.1999 16.9987L21.5332 28.3327" stroke="white" stroke-width="2" />
                </g>
              </svg>
            </div>
            <div class="main-infra__swiper-button-next">
              <svg width="34" height="34" viewBox="0 0 34 34" fill="none" xmlns="http://www.w3.org/2000/svg">
                <g opacity="0.5">
                  <path d="M12.4668 5.66602L23.8001 16.9987L12.4668 28.3327" stroke="white" stroke-width="2" />
                </g>
              </svg>
            </div>
            <div class="main-infra__swiper-pagination"></div>
          </div>
        </div>
      </section>

      <section id="forInqueryPage" class="main-story gsap-animation-enter">
        <h2 class="main-story__title" style="color: #ffffff !important;">MAKE YOUR DREAM</h2>
        <h2 class="main-story__title" style="color: #40b8c9 !important;">WE WILL SURPPORT</h2>
        <p class="main-story__sub-text">SETbang은 새롭게 시작하는 모든 사업주를 응원합니다.</p>
        <a id="inqueryPage" href="inquery.do" data-menu="help" class="main-story__button">입주 문의</a>
      </section>


	<!-- floating Button -->
<div class="FloatingButton" type="button">
  <div class="FloatingButton__text">
    <a id="inqueryPage" href="inquery.do" data-menu="help">
		입주 문의
    </a>
  </div>
  <button class="FloatingButton__icon" type="button">
    <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path d="M2.52786 2.52791L11.4722 11.4722M11.4722 2.52783L2.52783 11.4722" stroke="#6E6E6E"/>
    </svg>
  </button>
</div>


<script type="text/javascript">
// nav menu active
function navAct(data){
	$('.CommonHeader__gnb a[data-menu="'+ data +'"]').addClass('is-active');
}
</script>
<script type="text/javascript" src="/js/userv4.js?20220804"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-127341454-1');
</script>
<!-- Global site tag (gtag.js) - Google Ads: 784112557 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-784112557"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'AW-784112557');
</script>
  <script>
    window.addEventListener('load',function(){
    var visit = /home.visit_complete/.test(window.location.pathname);
     if(visit){
        gtag('event', 'conversion', {'send_to': 'AW-784112557/SMyRCIu_t-YBEK238vUC'});
    }
    })
</script> 
</body>
</html>