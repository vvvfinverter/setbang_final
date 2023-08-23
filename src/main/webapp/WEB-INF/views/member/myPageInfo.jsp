<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Style CSS -->
<link rel="stylesheet" href="./resources/css/myPageInfo.css">

<!-- JS / Jquery -->
<script type="text/javascript" src="./resources/js/kakaoaddr.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<!-- Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>


<meta charset="UTF-8">
<title>내 정보 변경</title>

</head>
<body>


		<div id="header">
			<jsp:include page="../section/header.jsp" />
		</div>

	<!-- 회원정보 수정 -->
	<div class=wrap>
	<h2>내 정보 변경</h2>
      <div class="memberInfo">
      <form class="form" action="changeMyInfo.do" method="post">
        <div class="group">
          <label for="profile" class="label">프로필 사진</label>
        <div class=profileImg>
		<a href =#><img style="width:200px; height:200px;" src='./resources/image/profile.png' alt='top' /></a>
		</div>
        </div>
        <div class="group">
          <label for="id" class="label">서비스 플랜명</label>
          <input id="memPlan" type="text" class="input" value="${sessionMemPlan }" disabled/>
        </div>
        <div class="group">
          <label for="id" class="label">아이디</label>
          <input id="id" name="id" type="text" class="input" value="${sessionId }" disabled/>
          <!-- 나중에 아이디는 동기식(ajax)으로 이미 존재하는 아이디입니다를 띄워주기 -->
        </div>
        <div class="group">
          <label for="pw" class="label">비밀번호 확인</label>
          <input id="pw" name="pw" type="password" class="input" data-type="password" placeholder="12자리 이하" maxlength="12" required/>
        </div>
        <div class="group">
          <label for="checkPw" class="label">비밀번호 변경</label>
          <input id="editPw" name="editPw" type="password" class="input" data-type="password" placeholder="12자리 이하" maxlength="12" required/>
        </div>
        <div class="group">
          <label for="name" class="label">성함</label>
          <input id="name" name="name" type="text" class="input" value = "${sessionName }" disabled/>
        </div>
        <div class="group">
          <label for="tel" class="label">휴대폰 번호</label>
          <input id="tel" name="tel" type="tel" class="input" placeholder="ex) 010-0000-0000" required/>
        </div>
        <div class="group">
          <label for="email" class="label">이메일 주소</label>
          <input id="email" name="email" type="email" class="input" placeholder="ex) setbang@setbang.com" required/>
        </div>
                <div class= "group">
        <label for="industry" class="label">업종</label>
        <div class="industry_select">
                <select class="input" name = "ind_code" id="industry" onchange="selectBoxChange(this.value);" required>
                  <option value="">선택</option>
                  <option value="1">제조업</option>
                  <option value="2">통신판매업</option>
                  <option value="3">IT업</option>
                  <option value="4">서비스업</option>
                  <option value="5">요식업</option>
                </select>
              </div>
        </div>
        <div class="group">
        <label for="business_no" class="label">사업자 번호</label>
            <input id="business_no" name="business_no" type="text" class="input" placeholder="ex) 000-00-00000" required/>
        </div>
            <div class="group">
        <label for="addr" class="label">주소</label>
        <div class = "kakaoAddrDetail">
			<input class="input" type="text" name="addr" id="sample6_postcode" placeholder="우편번호" required/>
			<input class="addrButton" type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" required/><br>
        </div>
			<input class="input" type="text" name="addr" id="sample6_address" placeholder="주소" required/><br>
			<input class="input" type="text" name="addr" id="sample6_extraAddress" placeholder="주소" required>
			<input class="input" type="text" name="addr" id="sample6_detailAddress" placeholder="상세주소">
        </div>
        <div class="group">
          <input type="submit" class="button" value="확인">
        </div>
        </form>
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