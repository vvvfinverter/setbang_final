<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Style CSS -->
<link rel="stylesheet" href="css/inqery.css">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<!-- Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<title>SETBang</title>
</head>
<body>

<div id="wrap">
<!-- header / navbar -->
	<div id="header">
			<jsp:include page="../section/header.jsp" />
	</div>

	<!-- 문의 하기 -->
 	<div class="inquery" id="inquery">
		<div class="inquery_titles">
			<h4 class="inquery_title">문의하기</h4>
			<strong class="inquery_subtitle">첫 사업에 대한 두근거림! SETBang에서
				시작하세요</strong>
		</div>
		
		<form action="inquery2.do">
		<div class="inquery_wrap">
			<div class="inquery_form">
				<div class="inquery_form1">
					<label for="inquery_name" class="inquery_label">이름</label> <input
						type="text" class="inquery_name" id="inquery_name" name="inq_name"/>
				</div>
				<div class="inquery_form2">
					<label for="inquery_company" class="inquery_label">회사명</label> <input
						type="text" class="inquery_company" id="inquery_company" name="inq_coname"/>
				</div>
				<div class="inquery_form3">
					<label for="inquery_tel" class="inquery_label">연락처</label> <input
						type="tel" class="inquery_tel" id="inquery_tel" name="inq_tel"
						placeholder="010-0000-0000" />
				</div>
				<div class="inquery_form4">
					<label for="inquery_people" class="inquery_label">입주 예정 인원</label>
					<input type="text" class="inquery_people" id="inquery_people" name="inq_people"
						placeholder="00명" />
				</div>
				<div class="inquery_form5">
					<label for="inquery_email" class="inquery_label">이메일</label> <input
						type="email" class="inquery_email" id="inquery_email" name="inq_email"
						placeholder="example@setbang.com" />
				</div>
				<div class="inquery_form6">
					<label for="inquery_homepage" class="inquery_label">홈페이지</label> <input
						type="text" class="inquery_homepage" id="inquery_homepage" name="inq_website"
						placeholder="ex)www.setbang.com" />
				</div>
				<div class="inquery_form7">
					<label for="inquery_branch" class="inquery_label">관심 지점</label>
					<div class="inquery_select_branch">
						<select class="inquery_select_branch" id="inquery_select_branch" name="inq_branch">
							<option value="">선택하세요</option>
							<option value="강남점">강남점</option>
							<option value="구로점">구로점</option>
							<option value="종로점">종로점</option>
						</select>
					</div>
					<div class="inquery_form8">
						<label for="inquery_title" class="inquery_label">제목</label> <input
							type="text" class="inquery_title" id="inquery_title" name="inq_title"/>
					</div>
					<div class="inquery_form9">
						<label for="inquery_content" class="inquery_label">내용</label>
						<textarea class="inquery_title" id="inquery_title" name="inq_content">
              </textarea>
					</div>
				</div>
			</div>
			<button type="submit">제출하기</button>
		</div>
		</form>
	</div>



	<!-- footer -->

	</div>	
		<div id="footer">
			<jsp:include page="../section/footer.jsp" />
	</div>
</div>	

</body>
</html>