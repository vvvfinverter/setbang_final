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


<title>로그인/회원가입</title>
</head>
<body>

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
          <input id="id" name="id" type="text" class="input">
        </div>
        <div class="group">
          <label for="pw" class="label">비밀번호</label>
          <input id="pw" name="pw" type="password" class="input" data-type="password">
        </div>
        <div class="group">
          <input id="saveId" type="checkbox" class="check" checked>
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
        <div class="group">
          <label for="id" class="label">아이디</label>
          <input id="id" type="text" class="input">
          <!-- 나중에 아이디는 동기식(ajax)으로 이미 존재하는 아이디입니다를 띄워주기 -->
        </div>
        <div class="group">
          <label for="pw" class="label">비밀번호</label>
          <input id="pw" type="password" class="input" data-type="password">
        </div>
        <div class="group">
          <label for="checkPw" class="label">비밀번호 확인</label>
          <input id="checkPw" type="password" class="input" data-type="password">
        </div>
        <div class="group">
          <label for="name" class="label">성함</label>
          <input id="name" type="text" class="input"/>
        </div>
        <div class="group">
          <label for="tel" class="label">휴대폰 번호</label>
          <input id="tel" type="tel" class="input"/>
        </div>
        <div class="group">
          <label for="email" class="label">이메일 주소</label>
          <input id="email" type="email" class="input"/>
        </div>
                <div class= "group">
        <label for="industry" class="label">업종</label>
        <div class="inquery_select">
                <select class="input" id="industry">
                  <option value="">선택하세요</option>
                  <option value="1">어쩌고</option>
                  <option value="2">저쩌고</option>
                  <option value="3">샬라샬라</option>
                </select>
              </div>
        </div>
        <div class="group">
        <label for="business_no" class="label">사업자 번호</label>
          <input id="business_no" type="text" class="input"/>
        </div>
        <div class="group">
          <label for="addr" class="label">주소</label>
          <input id="addr" type="text" class="input"/>
        </div>
        <div class="group">
          <input type="submit" class="button" value="회원가입">
        </div>
        <div class="hr"></div>
        <div class="foot-lnk">
          <label for="tab-1">이미 회원이신가요?</label>
        </div>
      </div>
    </div>
  </div>
</div>


</body>
</html>