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

<section class="main-intro">
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

      <section class="main-service gsap-animation-enter" style="background-color: #e5e5e5;">
        <div class="main-service__inner">
          <header class="">
            <h2 class="main-service__title">
              <span style="color: #000000;">SETbang 만의</span>
              <span style="color: #000000;">서비스 플랜</span>
            </h2>
            <p class="main-service__sub-text">사업을 시작하려는 분들에게<br/>저렴한 가격으로 통합 서비스를 제공합니다.</p>
          </header>
          <ul class="main-service__structure">
            <li>
              <figure>
                <svg width="61" height="60" viewBox="0 0 61 60" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd" clip-rule="evenodd" d="M47.7734 14.1822V7.63672H49.7734V14.1822H47.7734Z"
                    fill="black" />
                  <path fill-rule="evenodd" clip-rule="evenodd"
                    d="M7.58895 11.9082C6.04869 11.9082 4.77344 13.1805 4.77344 14.7843V29.9991H2.77344V14.7843C2.77344 12.1056 4.91471 9.9082 7.58895 9.9082H53.4125C56.0867 9.9082 58.228 12.1056 58.228 14.7843V29.9991H56.228V14.7843C56.228 13.1805 54.9527 11.9082 53.4125 11.9082H7.58895ZM4.77344 31.6355V45.7594C4.77344 47.3627 6.04878 48.6355 7.58895 48.6355H53.4125C54.9526 48.6355 56.228 47.3627 56.228 45.7594V31.6355H58.228V45.7594C58.228 48.4375 56.0868 50.6355 53.4125 50.6355H7.58895C4.91462 50.6355 2.77344 48.4375 2.77344 45.7594V31.6355H4.77344Z"
                    fill="black" />
                  <path fill-rule="evenodd" clip-rule="evenodd"
                    d="M30.5005 18.4551C24.1242 18.4551 18.9551 23.6242 18.9551 30.0005C18.9551 36.3769 24.1242 41.546 30.5005 41.546C36.8769 41.546 42.046 36.3769 42.046 30.0005C42.046 23.6242 36.8769 18.4551 30.5005 18.4551ZM16.9551 30.0005C16.9551 22.5196 23.0196 16.4551 30.5005 16.4551C37.9815 16.4551 44.046 22.5196 44.046 30.0005C44.046 37.4815 37.9815 43.546 30.5005 43.546C23.0196 43.546 16.9551 37.4815 16.9551 30.0005Z"
                    fill="black" />
                </svg>
                <figcaption>어쩌고 저쩌고<br/>블라 블라</figcaption>
              </figure>
            </li>
            <li>
              <figure>
                <svg width="61" height="60" viewBox="0 0 61 60" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd" clip-rule="evenodd" d="M54.6035 44.5098V11.5098H56.6035V44.5098H54.6035Z"
                    fill="black" />
                  <path fill-rule="evenodd" clip-rule="evenodd" d="M4.79102 44.5469V11.5469H6.79102V44.5469H4.79102Z"
                    fill="black" />
                  <path fill-rule="evenodd" clip-rule="evenodd" d="M3.42578 9.54492H57.9712V11.5449H3.42578V9.54492Z"
                    fill="black" />
                  <path fill-rule="evenodd" clip-rule="evenodd" d="M14.0625 42.5449H56.608V44.5449H14.0625V42.5449Z"
                    fill="black" />
                  <path fill-rule="evenodd" clip-rule="evenodd" d="M6.1543 42.5449H12.2907V44.5449H6.1543V42.5449Z"
                    fill="black" />
                  <path fill-rule="evenodd" clip-rule="evenodd" d="M29.7812 10.8218V5.45508H31.7812V10.8218H29.7812Z"
                    fill="black" />
                  <path fill-rule="evenodd" clip-rule="evenodd" d="M29.7812 49.6851V44.3184H31.7812V49.6851H29.7812Z"
                    fill="black" />
                  <path fill-rule="evenodd" clip-rule="evenodd"
                    d="M30.8154 47.5859L40.4758 56.6035H21.1543L30.8154 47.5859ZM26.2281 54.6035H35.4023L30.8154 50.3218L26.2281 54.6035Z"
                    fill="black" />
                  <path
                    d="M26.3093 25.7863H33.7459C33.6209 24.176 32.3337 22.6126 30.0303 22.6126C27.7268 22.6126 26.4344 24.176 26.3093 25.7863ZM30.2283 33.348C26.4605 33.348 23.8809 30.4452 23.8809 26.9015C23.8809 23.3578 26.4344 20.4551 30.0303 20.4551C33.6261 20.4551 36.1536 23.1806 36.1536 26.7764C36.1536 27.1725 36.1067 27.5425 36.0546 27.8187H26.3093C26.5595 29.6271 27.9457 31.1905 30.2283 31.1905C32.3858 31.1905 33.1049 30.3983 33.574 29.429H36.0546C35.4084 31.4093 33.475 33.348 30.2283 33.348Z"
                    fill="black" />
                </svg>
                <figcaption>어쩌고 저쩌고<br/>블라 블라</figcaption>
              </figure>
            </li>
            <li>
              <figure>
                <svg width="61" height="60" viewBox="0 0 61 60" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd" clip-rule="evenodd"
                    d="M9.53711 53.5453V26.1816H7.53711V55.5453H36.628V53.5453H9.53711ZM50.628 36.5453V26.1816H52.628V36.5453H50.628Z"
                    fill="black" />
                  <path fill-rule="evenodd" clip-rule="evenodd"
                    d="M43.9917 34.8184C38.2176 34.8184 33.5371 39.4989 33.5371 45.2729C33.5371 51.047 38.2176 55.7275 43.9917 55.7275C49.7657 55.7275 54.4462 51.047 54.4462 45.2729C54.4462 39.4989 49.7657 34.8184 43.9917 34.8184ZM31.5371 45.2729C31.5371 38.3943 37.113 32.8184 43.9917 32.8184C50.8703 32.8184 56.4462 38.3943 56.4462 45.2729C56.4462 52.1515 50.8703 57.7275 43.9917 57.7275C37.113 57.7275 31.5371 52.1515 31.5371 45.2729Z"
                    fill="black" />
                  <path fill-rule="evenodd" clip-rule="evenodd" d="M41.8086 44.2734H49.445V46.2734H41.8086V44.2734Z"
                    fill="black" />
                  <path fill-rule="evenodd" clip-rule="evenodd" d="M37.9922 44.2734H40.174V46.2734H37.9922V44.2734Z"
                    fill="black" />
                  <path fill-rule="evenodd" clip-rule="evenodd"
                    d="M45.2449 39.1113L51.4057 45.2771L45.2537 51.4341L43.8389 50.0204L48.5784 45.2771L43.8301 40.525L45.2449 39.1113Z"
                    fill="black" />
                  <path fill-rule="evenodd" clip-rule="evenodd"
                    d="M7.53711 10.4551H52.628V24.4551H7.53711V10.4551ZM9.53711 12.4551V22.4551H50.628V12.4551H9.53711Z"
                    fill="black" />
                  <path fill-rule="evenodd" clip-rule="evenodd" d="M28.5371 31.09V10.9082H30.5371V31.09H28.5371Z"
                    fill="black" />
                </svg>
                <figcaption>어쩌고 저쩌고<br/>블라 블라</figcaption>
              </figure>
            </li>
            <li>
              <figure>
                <svg width="61" height="60" viewBox="0 0 61 60" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd" clip-rule="evenodd" d="M52.8262 54.546V5.45508H54.8262V54.546H52.8262Z"
                    fill="black" />
                  <path fill-rule="evenodd" clip-rule="evenodd"
                    d="M36.4629 19.6369V5.45508H38.4629V19.6369H36.4629ZM36.4629 54.546V21.546H38.4629V54.546H36.4629Z"
                    fill="black" />
                  <path fill-rule="evenodd" clip-rule="evenodd" d="M8.64453 54.5462V24.2734H10.6445V54.5462H8.64453Z"
                    fill="black" />
                  <path fill-rule="evenodd" clip-rule="evenodd" d="M9.64453 48.3633H53.8263V50.3633H9.64453V48.3633Z"
                    fill="black" />
                  <path fill-rule="evenodd" clip-rule="evenodd" d="M5.55469 21.0918H38.4524V23.0918H5.55469V21.0918Z"
                    fill="black" />
                  <path fill-rule="evenodd" clip-rule="evenodd" d="M37.4629 11.2734H53.8265V13.2734H37.4629V11.2734Z"
                    fill="black" />
                  <path fill-rule="evenodd" clip-rule="evenodd" d="M22.5547 26.9116V21.5449H24.5547V26.9116H22.5547Z"
                    fill="black" />
                  <path fill-rule="evenodd" clip-rule="evenodd"
                    d="M23.5869 24.8145L33.2473 33.832H13.9258L23.5869 24.8145ZM18.9996 31.832H28.1737L23.5868 27.5504L18.9996 31.832Z"
                    fill="black" />
                </svg>
                <figcaption>어쩌고 저쩌고<br/>블라 블라</figcaption>
              </figure>
            </li>
            <li>
              <figure>
                <svg width="61" height="60" viewBox="0 0 61 60" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd" clip-rule="evenodd"
                    d="M14.5742 28.91C14.5742 22.9353 19.4177 18.0918 25.3924 18.0918C31.3671 18.0918 36.2106 22.9353 36.2106 28.91V36.0009H34.2106V28.91C34.2106 24.0398 30.2625 20.0918 25.3924 20.0918C20.5223 20.0918 16.5742 24.0398 16.5742 28.91V51.2736H14.5742V28.91Z"
                    fill="black" />
                  <path fill-rule="evenodd" clip-rule="evenodd"
                    d="M25.3907 8.0918C23.5332 8.0918 22.0273 9.59793 22.0273 11.4554C22.0273 13.3129 23.5332 14.8191 25.3907 14.8191C27.2488 14.8191 28.7546 13.3128 28.7546 11.4554C28.7546 9.59803 27.2488 8.0918 25.3907 8.0918ZM20.0273 11.4554C20.0273 8.4936 22.4284 6.0918 25.3907 6.0918C28.3534 6.0918 30.7546 8.49351 30.7546 11.4554C30.7546 14.4174 28.3534 16.8191 25.3907 16.8191C22.4284 16.8191 20.0273 14.4173 20.0273 11.4554Z"
                    fill="black" />
                  <path fill-rule="evenodd" clip-rule="evenodd" d="M37.4824 38.7273V36H39.4824V38.7273L37.4824 38.7273Z"
                    fill="black" />
                  <path fill-rule="evenodd" clip-rule="evenodd" d="M11.209 50.2734H54.8453V52.2734H11.209V50.2734Z"
                    fill="black" />
                  <path fill-rule="evenodd" clip-rule="evenodd" d="M5.75586 50.2734H9.57404V52.2734H5.75586V50.2734Z"
                    fill="black" />
                  <path fill-rule="evenodd" clip-rule="evenodd"
                    d="M25.4824 51.272C25.4824 43.8124 31.404 37.7266 38.7556 37.7266C46.1063 37.7266 52.0279 43.8124 52.0279 51.272V52.272H25.4824V51.272ZM27.524 50.272H49.9863C49.4908 44.347 44.6336 39.7266 38.7556 39.7266C32.8767 39.7266 28.0195 44.3471 27.524 50.272Z"
                    fill="black" />
                </svg>
                <figcaption>어쩌고 저쩌고<br/>블라 블라</figcaption>
              </figure>
            </li>
            <li>
              <figure>
                <svg width="61" height="60" viewBox="0 0 61 60" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path
                    d="M48.9096 18.7495V22.8404M5.95508 42.2722V50.454H13.3187M5.95508 39.204V13.6358H55.046V50.454H17.0005M18.2278 9.54492H42.7733V13.6358H18.2278V9.54492Z"
                    stroke="black" stroke-width="1.48" />
                  <path fill-rule="evenodd" clip-rule="evenodd"
                    d="M30.5005 19.8184C24.1242 19.8184 18.9551 24.9874 18.9551 31.3638C18.9551 37.7402 24.1242 42.9093 30.5005 42.9093C36.8769 42.9093 42.046 37.7402 42.046 31.3638C42.046 24.9874 36.8769 19.8184 30.5005 19.8184ZM16.9551 31.3638C16.9551 23.8829 23.0196 17.8184 30.5005 17.8184C37.9815 17.8184 44.046 23.8829 44.046 31.3638C44.046 38.8448 37.9815 44.9093 30.5005 44.9093C23.0196 44.9093 16.9551 38.8448 16.9551 31.3638Z"
                    fill="black" />
                </svg>
                <figcaption>어쩌고 저쩌고<br/>블라 블라</figcaption>
              </figure>
            </li>
            <li>
              <figure>
                <svg width="61" height="60" viewBox="0 0 61 60" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd" clip-rule="evenodd"
                    d="M12.9727 4.0918H48.4272V57.2736H25.3817V55.5009H46.6545V50.0191H14.7454V55.5009H23.609V57.2736H12.9727V4.0918ZM14.7454 12.9554V48.41H46.6545V12.9554H14.7454ZM14.7454 11.3463H46.6545V5.86452H14.7454V11.3463Z"
                    fill="black" />
                  <path
                    d="M38.9219 23.7675C40.5992 25.4038 40.6265 28.0356 39.0174 29.7129L40.381 31.0356C42.7401 28.622 42.7128 24.7902 40.2719 22.4311C37.831 20.0584 33.9037 20.0311 31.4355 22.3493L32.7992 23.672C34.531 22.0902 37.231 22.1175 38.9219 23.7675Z"
                    fill="black" />
                  <path
                    d="M33.8356 34.7583L33.8083 34.7992C33.6993 34.9219 33.5902 35.0446 33.4674 35.1674L30.6993 37.8674L22.4765 29.8628C20.7583 28.1992 20.7583 25.4855 22.4765 23.8219C24.1947 22.1446 26.9902 22.1446 28.7083 23.8219L30.7129 25.7855L32.0765 24.4628L30.0447 22.4855C27.5765 20.0855 23.5811 20.0855 21.1265 22.4855C18.6583 24.8992 18.6583 28.7992 21.1265 31.2128L30.6856 40.5265L34.8038 36.5174C34.9538 36.3674 35.1038 36.2037 35.2402 36.0401L39.6038 31.7855L38.2402 30.4628L33.822 34.7583H33.8356Z"
                    fill="black" />
                </svg>
                <figcaption>어쩌고 저쩌고<br/>블라 블라</figcaption>
              </figure>
            </li>
            <li>
              <figure>
                <svg width="61" height="60" viewBox="0 0 61 60" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path d="M8.90039 12H52.9004M8.90039 12L30.9004 30L52.9004 12M8.90039 12V30M52.9004 12V48H8.90039V33"
                    stroke="black" stroke-width="1.48" />
                </svg>
                <figcaption>어쩌고 저쩌고<br/>블라 블라</figcaption>
              </figure>
            </li>
            <li>
              <figure>
                <svg width="61" height="60" viewBox="0 0 61 60" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd" clip-rule="evenodd" d="M44.8262 22H26.8262V20H44.8262V22Z" fill="black" />
                  <path fill-rule="evenodd" clip-rule="evenodd" d="M44.8262 28H26.8262V26H44.8262V28Z" fill="black" />
                  <path fill-rule="evenodd" clip-rule="evenodd" d="M44.8278 34H41.6914V32H44.8278V34Z" fill="black" />
                  <path fill-rule="evenodd" clip-rule="evenodd" d="M40.0534 34H26.8262V32H40.0534V34Z" fill="black" />
                  <path fill-rule="evenodd" clip-rule="evenodd"
                    d="M16.5317 29.9347C10.9575 30.3188 6.55385 34.9637 6.55385 40.6366C6.55385 43.299 7.52932 45.7298 9.13836 47.6076L9.59895 48.1451L7.74113 51.3636H17.2808C22.0737 51.3636 26.1348 48.2199 27.5096 43.8797L29.4163 44.4837C27.7857 49.631 22.9705 53.3636 17.2808 53.3636H4.27734L7.16956 48.3532C5.53333 46.2138 4.55385 43.5409 4.55385 40.6366C4.55385 33.9053 9.77854 28.3953 16.3942 27.9395L16.5317 29.9347Z"
                    fill="black" />
                  <path fill-rule="evenodd" clip-rule="evenodd"
                    d="M15.4629 26.4554C15.4629 15.2089 24.5798 6.0918 35.8265 6.0918C47.0733 6.0918 56.1902 15.2089 56.1902 26.4554C56.1902 31.2576 54.5175 35.6635 51.7385 39.1423L56.171 46.8191H35.8265C24.5798 46.8191 15.4629 37.7019 15.4629 26.4554ZM35.8265 8.0918C25.6844 8.0918 17.4629 16.3135 17.4629 26.4554C17.4629 36.5974 25.6844 44.8191 35.8265 44.8191H52.7068L49.3049 38.9273L49.7657 38.3897C52.5195 35.1767 54.1902 31.0147 54.1902 26.4554C54.1902 16.3135 45.9687 8.0918 35.8265 8.0918Z"
                    fill="black" />
                </svg>
                <figcaption>어쩌고 저쩌고<br/>블라 블라</figcaption>
              </figure>
            </li>
            <li>
              <figure>
                <svg width="61" height="60" viewBox="0 0 61 60" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd" clip-rule="evenodd"
                    d="M19.4824 11.4542C19.4824 6.9857 23.1048 3.36328 27.5733 3.36328V5.36328C24.2094 5.36328 21.4824 8.09027 21.4824 11.4542C21.4824 14.4985 23.7169 17.0228 26.635 17.4734L26.3298 19.45C22.4514 18.8511 19.4824 15.5003 19.4824 11.4542Z"
                    fill="black" />
                  <path fill-rule="evenodd" clip-rule="evenodd"
                    d="M30.3005 46.6768L33.2349 17.3328C33.4085 15.5967 32.0452 14.0903 30.3005 14.0903C28.5558 14.0903 27.1925 15.5967 27.3661 17.3328L30.3005 46.6768ZM35.225 17.5318L31.2955 56.8262H29.3054L25.376 17.5318C25.0847 14.6184 27.3725 12.0903 30.3005 12.0903C33.2284 12.0903 35.5163 14.6184 35.225 17.5318Z"
                    fill="black" />
                  <path fill-rule="evenodd" clip-rule="evenodd"
                    d="M47.5457 46.2979C46.5929 48.079 45.3726 49.6948 43.9388 51.0918L42.5431 49.6593C43.8313 48.4042 44.927 46.9531 45.7821 45.3546L47.5457 46.2979ZM49.8457 37.0912C49.8457 39.7363 49.3197 42.2611 48.3657 44.5647L46.5179 43.7995C47.3732 41.7342 47.8457 39.4691 47.8457 37.0912C47.8457 27.4011 39.9903 19.5458 30.3002 19.5458V17.5458C41.0949 17.5458 49.8457 26.2966 49.8457 37.0912Z"
                    fill="black" />
                </svg>
                <figcaption>어쩌고 저쩌고<br/>블라 블라</figcaption>
              </figure>
            </li>
          </ul>
        </div>
      </section>
      


    
      <section class="main-office">
        <header>
          <h2 style="color: #000000 !important;">사업에 최적화된 도심 중심의 오피스</h2>
        </header>
        <article class="main-office__item">
          <img src="//image.musinsa.com/studioImg/renew/main/main-office-img-0.jpg?202208081500" class="main-office__image" alt="">
          <dl class="main-office__information">
            <dt class="main-office__information__title">SETbang 구로점</dt>
            <dd class="main-office__information__address">서울특별시 구로구 넥타이마라톤로 7, 11층</dd>
            <dd class="main-office__information__list">
              <ul>
                <li>사무/공용 공간</li>
                <li>물품 신청</li>
                <li>사무 서비스</li>
                <li>협력업체 예약</li>
              </ul>
            </dd>
            <dd class="main-office__information__link">
              <a class="branchPage" href="#" data-menu="branch1">
                자세히 보기
              </a>
            </dd>
          </dl>
        </article>
        <article class="main-office__item">
          <img src="//image.musinsa.com/studioImg/renew/main/main-office-img-1.jpg?2022080815001037" class="main-office__image" alt="">
          <dl class="main-office__information">
            <dt class="main-office__information__title">SETbang 강남점</dt>
            <dd class="main-office__information__address">서울 강남구 테헤란로 191, 14층</dd>
            <dd class="main-office__information__list">
              <ul>
                <li>사무/공용 공간</li>
                <li>물품 신청</li>
                <li>사무 서비스</li>
                <li>협력업체 예약</li>
              </ul>
            </dd>
            <dd class="main-office__information__link">
              <a class="branchPage" href="#" data-menu="branch2">
                자세히 보기
              </a>
            </dd>
          </dl>
        </article>
        <article class="main-office__item">
          <img src="//image.musinsa.com/studioImg/renew/main/main-office-img-4.jpg?202302101500"
            class="main-office__image" alt="">
          <dl class="main-office__information">
            <dt class="main-office__information__title">SETbang 판교점</dt>
            <dd class="main-office__information__address">경기도 성남시 분당구 판교동 33, 10층</dd>
            <dd class="main-office__information__list">
              <ul>
                <li>사무/공용 공간</li>
                <li>물품 신청</li>
                <li>사무 서비스</li>
                <li>협력업체 예약</li>
              </ul>
            </dd>
            <dd class="main-office__information__link">
              <a class="branchPage" href="#" data-menu="branch3">
                자세히 보기
              </a>
            </dd>
          </dl>
        </article>
      </section>

<section class="section blue-bg-section main-section-4 correct_newff">
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
                            <img role="listitem" alt="현대자동차 에어랩" src="./resources/image/kakao.png" style="width:200px; height:50px;">
                            <img role="listitem" alt="동화약품" src="/wp-content/themes/fastfive/assets/images/pages/main/membership/membership-row-1-2.svg">
                            <img role="listitem" alt="KB금융그룹" src="/wp-content/themes/fastfive/assets/images/pages/main/membership/membership-row-1-3.svg">
                            <img role="listitem" alt="마켓컬리" src="/wp-content/themes/fastfive/assets/images/pages/main/membership/membership-row-1-4.svg">
                            <img role="listitem" alt="JANDI" src="/wp-content/themes/fastfive/assets/images/pages/main/membership/membership-row-1-5.svg">
                            <img role="listitem" alt="영화진흥위원회" src="/wp-content/themes/fastfive/assets/images/pages/main/membership/membership-row-1-6.svg">
                            <img role="listitem" alt="집꾸미기" src="/wp-content/themes/fastfive/assets/images/pages/main/membership/membership-row-1-7.svg">
                            <img role="listitem" alt="서울산업진흥원" src="/wp-content/themes/fastfive/assets/images/pages/main/membership/membership-row-1-8.png">
                        </div>
                    </div>
                    <div class="membership-row-container">
                        <div id="membership-row-2" class="membership-row membership-row-2" role="list">
                            <img role="listitem" alt="텀블벅" src="/wp-content/themes/fastfive/assets/images/pages/main/membership/membership-row-2-1.svg">
                            <img role="listitem" alt="miso" src="/wp-content/themes/fastfive/assets/images/pages/main/membership/membership-row-2-2.png">
                            <img role="listitem" alt="네이버 커텍트" src="/wp-content/themes/fastfive/assets/images/pages/main/membership/membership-row-2-3.svg">
                            <img role="listitem" alt="프레인글로벌" src="/wp-content/themes/fastfive/assets/images/pages/main/membership/membership-row-2-4.png">
                            <img role="listitem" alt="한화시스템" src="/wp-content/themes/fastfive/assets/images/pages/main/membership/membership-row-2-5.svg">
                            <img role="listitem" alt="퍼블리" src="/wp-content/themes/fastfive/assets/images/pages/main/membership/membership-row-2-6.svg">
                            <img role="listitem" alt="바카디" src="/wp-content/themes/fastfive/assets/images/pages/main/membership/membership-row-2-7.png">
                        </div>
                    </div>
            </div>
            </div>
        </section>  


      <section class="main-infra" style="background-color: #707070;">
        <div class="main-infra__inner">
          <header>
            <h2 style="color: #ffffff;">사업이 성장하는데<br/>필요한 인프라가 있는 곳</h2>
            <p style="color: #ffffff !important;">(주)CO-SPACE는 '동반 성장'이란 철학을 바탕으로<br/>사업 편의성을 제공하는 SETbang을 설립했습니다.</p>
          </header>
          <div class="main-infra__swiper-wrap">
            <div class="swiper main-infra__swiper">
              <div class="swiper-wrapper">
                 <a href="#" data-menu="event" class="swiper-slide">
                  <img src="//image.musinsa.com/studioImg/renew/main/main-infra-img-0_v2.jpg?202208081500" alt="">
                  <em>이벤트</em>
                </a>
                <a href="#" data-menu="support" class="swiper-slide">
                  <img src="//image.musinsa.com/studioImg/renew/main/main-infra-img-1_v2.jpg?202208081500" alt="">
                  <em>성장지원</em>
                </a>
                <a href="#" data-menu="community" class="swiper-slide">
                  <img src="//image.musinsa.com/studioImg/renew/main/main-infra-img-2_v2.jpg?202208081500" alt="">
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