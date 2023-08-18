<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<!-- Style CSS -->
<link rel="stylesheet" href="./resources/css/myPageCard.css">

<!-- JS / Jquery -->
<script type="text/javascript" src="./resources/js/myPageCard.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<!-- Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

<meta charset="UTF-8">
<title>간편결제</title>

<script type="text/javascript">
/* 카드코드 가져오기 */
 $(function() {
	  $('#exampleModal').on('show.bs.modal', function(event) {
	    var button = $(event.relatedTarget); 
	    var cardCode = button.data('cardcode');
	    $('#cardCode').val(cardCode); 
	  });
	}); 
</script>

</head>
<body>


		<div id="header">
			<jsp:include page="../section/header.jsp" />
		</div>
		


<div class="wrap">
		<h2>간편결제 관리</h2>
		<h6>카드 등록 후 간편하게 결제하세요.</h6>
		
		
<!-- 등록된 카드 -->
<div id="savedCard">
    <h4>등록된 카드</h4>
    <c:choose>
        <c:when test="${not empty cardList}">
            <table class="card-table">
                <tbody>
                    <tr>
                        <c:forEach var="card" items="${cardList}" varStatus="loop">
                            <c:set var="cardImage" value="" />
                            <c:set var="cardAlt" value="" />
                        <c:choose>
                            <c:when test="${card.card_name == '신한카드'}">
                                <c:set var="cardImage" value='./resources/image/shinhancard.png' />
                                <c:set var="cardAlt" value="신한카드" />
                            </c:when>
                            <c:when test="${card.card_name == '삼성카드'}">
                                <c:set var="cardImage" value='./resources/image/samsungcard.png' />
                                <c:set var="cardAlt" value="삼성카드" />
                            </c:when>
                            <c:when test="${card.card_name == '현대카드'}">
                                <c:set var="cardImage" value='./resources/image/hyundaicard.png' />
                                <c:set var="cardAlt" value="현대카드" />
                            </c:when>
                            <c:when test="${card.card_name == 'BC카드'}">
                                <c:set var="cardImage" value='./resources/image/bccard.png' />
                                <c:set var="cardAlt" value="BC카드" />
                            </c:when>
                            <c:when test="${card.card_name == '국민카드'}">
                                <c:set var="cardImage" value='./resources/image/kbcard.png' />
                                <c:set var="cardAlt" value="국민카드" />
                            </c:when>
                            <c:when test="${card.card_name == '하나카드'}">
                                <c:set var="cardImage" value='./resources/image/hanacard.png' />
                                <c:set var="cardAlt" value="하나카드" />
                            </c:when>
                            <c:when test="${card.card_name == '농협카드'}">
                                <c:set var="cardImage" value='./resources/image/nhcard.png' />
                                <c:set var="cardAlt" value="농협카드" />
                            </c:when>
                            <c:when test="${card.card_name == '롯데카드'}">
                                <c:set var="cardImage" value='./resources/image/lottecard.png' />
                                <c:set var="cardAlt" value="롯데카드" />
                            </c:when>
                            <c:when test="${card.card_name == '카카오뱅크'}">
                                <c:set var="cardImage" value='./resources/image/kakaocard.png' />
                                <c:set var="cardAlt" value="카카오뱅크" />
                            </c:when>
                        </c:choose>
                            <c:if test="${cardImage ne ''}">
                                <td>
                                    <img style="width: 200px; height: 300px;" src="${cardImage}" alt="${cardAlt}"/>
                                    <div class="savedcard-name">${card.card_name}</div>
                                    <div class="savedcard-no">${card.card_no}</div>
                                    <div class="card-button">
                                        <form action="deleteCard.do" method="post">
                                            <input type="hidden" name="card_code" value="${card.card_code}" />
													<!-- 간편 비밀번호 변경 모달 버튼-->
													<button type="button" id="btn-edit" class="btn btn-primary"
														data-bs-toggle="modal" data-bs-target="#exampleModal" data-cardcode="${card.card_code}">
														수정</button>
													<button type="submit" class="btn-delete">삭제</button>
                                        </form>
                                    </div>
                                </td>
                            </c:if>
                            <c:if test="${(loop.index + 1) % 3 == 0 or loop.last}">
                                </tr><tr>
                            </c:if>
                        </c:forEach>
                    </tr>
                </tbody>
            </table>
        </c:when>
        <c:otherwise>
            <h6>등록된 카드가 없습니다.</h6>
        </c:otherwise>
    </c:choose>
</div>


<!-- 간편 비밀번호 변경 -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">간편 비밀번호 변경</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
        <form class = "easypwForm" action="updateEasypw.do" method="post">
      <div class="modal-body">
            <input type="hidden" name="cardCode" id="cardCode"/>
            
                <label for="currentEasypw">기존 비밀번호</label> &nbsp;
		    <input type="password" id="currentEasypw" name="currentEasypw" maxlength="6" pattern="[0-9]*" required/>
		    <span id="currentEasypwMessage"></span><br/><br/>
		
		    <label for="newEasypw">새 비밀번호</label>&nbsp; &nbsp; &nbsp;
		    <input type="password" id="newEasypw" name="newEasypw" maxlength="6" pattern="[0-9]*" required/>
		    <span id="newEasypwMessage"></span>
      </div>
      <div class="modal-footer">
        <button id="btn-edit" type="submit" class="btn btn-primary">수정</button>
        <button id="btn-cancle" type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
      </div>
      </form>
    </div>
  </div>
</div>
		

<!-- 카드 등록 -->
<div id="addCard">
		<h4>카드 등록</h4>
		
<div class="checkout">
  <div class="credit-card-box">
    <div class="flip">
      <div class="front">
        <div class="chip"></div>
        <div class="logo">
           <svg version="1.1" id="visa" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
               width="47.834px" height="47.834px" viewBox="0 0 47.834 47.834" style="enable-background:new 0 0 47.834 47.834;">
            <g>
              <g>
                <path d="M44.688,16.814h-3.004c-0.933,0-1.627,0.254-2.037,1.184l-5.773,13.074h4.083c0,0,0.666-1.758,0.817-2.143
                         c0.447,0,4.414,0.006,4.979,0.006c0.116,0.498,0.474,2.137,0.474,2.137h3.607L44.688,16.814z M39.893,26.01
                         c0.32-0.819,1.549-3.987,1.549-3.987c-0.021,0.039,0.317-0.825,0.518-1.362l0.262,1.23c0,0,0.745,3.406,0.901,4.119H39.893z
                         M34.146,26.404c-0.028,2.963-2.684,4.875-6.771,4.875c-1.743-0.018-3.422-0.361-4.332-0.76l0.547-3.193l0.501,0.228
                         c1.277,0.532,2.104,0.747,3.661,0.747c1.117,0,2.313-0.438,2.325-1.393c0.007-0.625-0.501-1.07-2.016-1.77
                         c-1.476-0.683-3.43-1.827-3.405-3.876c0.021-2.773,2.729-4.708,6.571-4.708c1.506,0,2.713,0.31,3.483,0.599l-0.526,3.092
                         l-0.351-0.165c-0.716-0.288-1.638-0.566-2.91-0.546c-1.522,0-2.228,0.634-2.228,1.227c-0.008,0.668,0.824,1.108,2.184,1.77
                         C33.126,23.546,34.163,24.783,34.146,26.404z M0,16.962l0.05-0.286h6.028c0.813,0.031,1.468,0.29,1.694,1.159l1.311,6.304
                         C7.795,20.842,4.691,18.099,0,16.962z M17.581,16.812l-6.123,14.239l-4.114,0.007L3.862,19.161
                         c2.503,1.602,4.635,4.144,5.386,5.914l0.406,1.469l3.808-9.729L17.581,16.812L17.581,16.812z M19.153,16.8h3.89L20.61,31.066
                         h-3.888L19.153,16.8z"/>
              </g>
            </g>
          </svg> 
        </div>
        <div class="number"></div>
        <div class = "card-name">
        <label>카드사</label>
        <div class="blank_input"></div>
        </div>
        <div class="card-expiration-date">
          <label>유효기간</label>
          <div class="blank_input"></div>
        </div>
      </div>
      <div class="back">
        <div class="strip"></div>
        <div class="logo">
           <svg version="1.1" id="visa" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
               width="47.834px" height="47.834px" viewBox="0 0 47.834 47.834" style="enable-background:new 0 0 47.834 47.834;">
            <g>
              <g>
                <path d="M44.688,16.814h-3.004c-0.933,0-1.627,0.254-2.037,1.184l-5.773,13.074h4.083c0,0,0.666-1.758,0.817-2.143
                         c0.447,0,4.414,0.006,4.979,0.006c0.116,0.498,0.474,2.137,0.474,2.137h3.607L44.688,16.814z M39.893,26.01
                         c0.32-0.819,1.549-3.987,1.549-3.987c-0.021,0.039,0.317-0.825,0.518-1.362l0.262,1.23c0,0,0.745,3.406,0.901,4.119H39.893z
                         M34.146,26.404c-0.028,2.963-2.684,4.875-6.771,4.875c-1.743-0.018-3.422-0.361-4.332-0.76l0.547-3.193l0.501,0.228
                         c1.277,0.532,2.104,0.747,3.661,0.747c1.117,0,2.313-0.438,2.325-1.393c0.007-0.625-0.501-1.07-2.016-1.77
                         c-1.476-0.683-3.43-1.827-3.405-3.876c0.021-2.773,2.729-4.708,6.571-4.708c1.506,0,2.713,0.31,3.483,0.599l-0.526,3.092
                         l-0.351-0.165c-0.716-0.288-1.638-0.566-2.91-0.546c-1.522,0-2.228,0.634-2.228,1.227c-0.008,0.668,0.824,1.108,2.184,1.77
                         C33.126,23.546,34.163,24.783,34.146,26.404z M0,16.962l0.05-0.286h6.028c0.813,0.031,1.468,0.29,1.694,1.159l1.311,6.304
                         C7.795,20.842,4.691,18.099,0,16.962z M17.581,16.812l-6.123,14.239l-4.114,0.007L3.862,19.161
                         c2.503,1.602,4.635,4.144,5.386,5.914l0.406,1.469l3.808-9.729L17.581,16.812L17.581,16.812z M19.153,16.8h3.89L20.61,31.066
                         h-3.888L19.153,16.8z"/>
              </g>
            </g>
          </svg>

        </div>
        <div class="cvc1">
          <label>CVC</label>
          <div class="blank_input"></div>
        </div>
      </div>
    </div>
  </div>
  
<form class="form" action="addCard.do" method="post">
    <input type="hidden" name="sessionMemCode" value="${sessionMemCode}">
    <label for="card-name">카드사</label>
    <div class="cardName">
        <div class="select1">
            <select id="card-name" name="cardName" required>
                <option value="">선택</option>
                <option>신한카드</option>
                <option>삼성카드</option>
                <option>현대카드</option>
                <option>BC카드</option>
                <option>국민카드</option>
                <option>하나카드</option>
                <option>농협카드</option>
                <option>롯데카드</option>
                <option>카카오뱅크</option>
            </select>
        </div>
    </div>

    <label for="card-number">카드 번호</label>
    <div class="cardNumber">
        <input type="text" id="card-number" name="cardNumber1" class="input-cart-number" maxlength="4" pattern="[0-9]*" required/>
        <input type="text" id="card-number-1" name="cardNumber2" class="input-cart-number" maxlength="4" pattern="[0-9]*" required/>
        <input type="text" id="card-number-2" name="cardNumber3" class="input-cart-number" maxlength="4" pattern="[0-9]*" required/>
        <input type="text" id="card-number-3" name="cardNumber4" class="input-cart-number" maxlength="4" pattern="[0-9]*" required/>
    </div>
    
    <label for="card-expiration-month">카드 유효기간</label>
    <div class="cardExp">
        <div class="select2">
            <select id="card-expiration-month" name="expMonth" required>
                <option value="">선택</option>
                <option>01</option>
                <option>02</option>
                <option>03</option>
                <option>04</option>
                <option>05</option>
                <option>06</option>
                <option>07</option>
                <option>08</option>
                <option>09</option>
                <option>10</option>
                <option>11</option>
                <option>12</option>
            </select>
            <select id="card-expiration-year" name="expYear" required>
                <option value="">선택</option>
                <option>23</option>
                <option>24</option>
                <option>25</option>
                <option>26</option>
                <option>27</option>
                <option>28</option>
                <option>29</option>
                <option>30</option>
            </select>
        </div>
    </div>
    
    <label for="card-cvc">CVC</label>
    <div class="cvc">
        <input type="password" id="card-cvc" name="cvc" maxlength="3" pattern="[0-9]*" required/>
    </div>
        <label for="card-password">카드 비밀번호</label>
    <div class="cardPassword">
        <input type="password" id="card-password" name="cardPassword" maxlength="4" pattern="[0-9]*" required/>
    </div>
    <label for="card-password2">간편결제 비밀번호</label>
    <div class="cardPassword2">
        <input type="password" id="card-password2" name="cardPassword2" maxlength="6" pattern="[0-9]*" required/>
    </div>
    
    <button type="submit" class="button">카드 등록</button>
</form>
  
  
</div>



		<h6>등록 가능한 카드사</h6>
		
		<table>
    <tr>
        <td><img src='./resources/image/shinhan.png' /></td>
        <td><img src='./resources/image/samsung.png' /></td>
        <td><img src='./resources/image/hyundai.png' /></td>
    </tr>
    <tr>
		<td><img src='./resources/image/bc.png' /></td>
		<td><img src='./resources/image/kb.png' /></td>
		<td><img src='./resources/image/hana.png' /></td>
    </tr>
    <tr>
		<td><img src='./resources/image/nh.png' /></td>
		<td><img src='./resources/image/lotte.png' /></td>
		<td><img src='./resources/image/kakao.png' /></td>
    </tr>
		</table>
	
		</div>
		</div>
		
		
		<div id="myPageMenu">
			<jsp:include page="../member/myPageMenu.jsp" />
		</div>
		<div id="footer">
			<jsp:include page="../section/footer.jsp" />
		</div>
	
		
</body>
</html>