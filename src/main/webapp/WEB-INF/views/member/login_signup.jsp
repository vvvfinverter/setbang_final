<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Style CSS -->
<link rel="stylesheet" href="./resources/css/login_signup.css">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<!-- Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.7.0.js" integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM=" crossorigin="anonymous"></script>
<script type="text/javascript" src="./resources/js/kakaoaddr.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- <script type="text/javascript">
$(document).ready(function(){
	$("#industry").change(function() {
		alert("미친 테스트 : "+ this.val());
		$("#industry").val();
	})
	// function selectBoxChange 
});  
</script>-->

<title>로그인/회원가입</title>
</head>
<body>

<div id="wrap">
		<div id="header">
			<jsp:include page="../section/header.jsp" />
		</div>
		
<!-- 로그인/회원가입 -->

<div class="login-wrap">
<!-- 로그인 -->
  <div class="login-html">
    <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">로그인</label>
    <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">회원가입</label>
    <div class="login-form">
      <form class="sign-in-htm" name="login" method="post" action="login.do">
        <div class="group">
          <label for="id" class="label">아이디</label>
          <input id="id" name = "id" type="text" class="input">
        </div>
        <div class="group">
          <label for="pw" class="label">비밀번호</label>
          <input id="pw" name = "pw" type="password" class="input" data-type="password">
        </div>
        <div class="group">
          <input id="saveId" name = "saveId" type="checkbox" class="check" checked>
          <label for="saveId"><span class="icon"></span> &nbsp;아이디 저장</label>
        </div>
        <div class="group">
          <input type="submit" class="button" value="로그인">
        </div>
        <div class="hr"></div>
       <div class="foot-lnk">
          <a href="">아이디를 잊으셨나요?</a><br/>
          <a href="">비밀번호를 잊으셨나요?</a>
        </div>
      </form>
<!-- 회원가입 -->
      <div class="sign-up-htm">
      	<form action="insertInfo.do" method="post">
        <div class="group">
          <label for="id" class="label">아이디</label>
          <input id="id" name="id" type="text" class="input">
          <!-- 나중에 아이디는 동기식(ajax)으로 이미 존재하는 아이디입니다를 띄워주기 -->
        </div>
        <div class="group">
          <label for="pw" class="label">비밀번호</label>
          <input id="pw" name="pw" type="password" class="input" data-type="password">
        </div>
        <div class="group">
          <label for="checkPw" class="label">비밀번호 확인</label>
          <input id="checkPw" name="checkPw" type="password" class="input" data-type="password">
        </div>
        <div class="group">
          <label for="name" class="label">성함</label>
          <input id="name" name="name" type="text" class="input"/>
        </div>
        <div class="group">
          <label for="tel" class="label">휴대폰 번호</label>
          <input id="tel" name="tel" type="tel" class="input"/>
        </div>
        <div class="group">
          <label for="email" class="label">이메일 주소</label>
          <input id="email" name="email" type="email" class="input"/>
        </div>
                <div class= "group">
        <label for="industry" class="label">업종</label>
        <div class="inquery_select">
                <select class="input" name = "ind_code" id="industry" onchange="selectBoxChange(this.value);">
                  <option value="">선택하세요</option>
                  <option value="100">제조업</option>
                  <option value="200">통신판매업</option>
                  <option value="300">IT업</option>
                  <option value="400">서비스업</option>
                  <option value="500">요식업</option>
                </select>
              </div>
        </div>
        <div class="group">
        <label for="business_no" class="label">사업자 번호</label>
          <input id="business_no" name="business_no" type="text" class="input"/>
        </div>
            <div class="group">
			<input type="text" name="addr" id="sample6_postcode" placeholder="우편번호">
			<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
			<input type="text" name="addr" id="sample6_address" placeholder="주소"><br>
			<input type="text" name="addr" id="sample6_detailAddress" placeholder="상세주소">
			<input type="text" name="addr" id="sample6_extraAddress" placeholder="참고항목">
        </div>
        <div class="group">
          <input type="submit" class="button" value="회원가입">
        </div>
        <div class="hr"></div>
        <div class="foot-lnk">
          <label for="tab-1">이미 회원이신가요?</label>
        </div>
       </form>
      </div>
    </div>
  </div>
</div>


		<div id="footer">
			<jsp:include page="../section/footer.jsp" />
		</div>
	</div>

</body>
</html>