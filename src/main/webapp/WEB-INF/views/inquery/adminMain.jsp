<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Style CSS -->
<link rel="stylesheet" href="./resources/css/adminMain.css">

<!-- 부트스트랩 CSS-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<!-- 부트스트랩 JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>



<meta charset="UTF-8">
<title>관리자페이지 메인</title>
</head>
<body>
	<div class="pcoded-content">
		<div class="pcoded-inner-content" id="member_count">
			<div class="main-body">
				<div class="page-wrapper">

					<div class="page-body">
						<!-- Statestics Start -->
						<div class="row">
							<div class="col-md-12 col-xl-6">
								<div class="card">
									<div class="card-header">
										<h5>지점별 회원현황</h5>
										<div class="card-header-left "></div>
										<div class="card-header-right">
											<ul class="list-unstyled card-option">
												<li><i class="icofont icofont-simple-left "></i></li>
												<li><i class="icofont icofont-maximize full-card"></i></li>
												<li><i class="icofont icofont-minus minimize-card"></i></li>
												<li><i class="icofont icofont-refresh reload-card"></i></li>
												<li><i class="icofont icofont-error close-card"></i></li>
											</ul>
										</div>
									</div>
									<div class="card-block">
										<div id="statestics-chart" style="height: 517px;"></div>
									</div>
								</div>
							</div>
							<div class="col-md-12 col-xl-6">
								<div class="card fb-card">
									<div class="card-header">
										<i class="icofont icofont-social-facebook"></i>
										<div class="d-inline-block">
											<h5>총 회원수</h5>
										</div>
									</div>
									<div class="card-block text-center">
										<div class="row">
											<div class="col-6 b-r-default">
												<h2>23</h2>
												<p class="text-muted">Active</p>
											</div>
											<div class="col-6">
												<h2>23</h2>
												<p class="text-muted">Comment</p>
											</div>
										</div>
									</div>
								</div>

								<div class="card dribble-card">
									<div class="card-header">
										<i class="icofont icofont-social-dribbble"></i>
										<div class="d-inline-block">
											<h5>dribble</h5>
										</div>
									</div>
									<div class="card-block text-center">
										<div class="row">
											<div class="col-6 b-r-default">
												<h2>23</h2>
												<p class="text-muted">Live</p>
											</div>
											<div class="col-6">
												<h2>23</h2>
												<p class="text-muted">Message</p>
											</div>
										</div>
									</div>								
								</div>

								<div class="card twitter-card">
									<div class="card-header">
										<i class="icofont icofont-social-twitter"></i>
										<div class="d-inline-block">
											<h5>twitter</h5>
										</div>
									</div>
									<div class="card-block text-center">
										<div class="row">
											<div class="col-6 b-r-default">
												<h2>25</h2>
												<p class="text-muted">new tweet</p>
											</div>
											<div class="col-6">
												<h2>450+</h2>
												<p class="text-muted">Follower</p>
											</div>
										</div>
									</div>
								</div>

								<div class="card twitter-card">
									<div class="card-header">
										<i class="icofont icofont-social-twitter"></i>
										<div class="d-inline-block">
											<h5>twitter</h5>
										</div>
									</div>
									<div class="card-block text-center">
										<div class="row">
											<div class="col-6 b-r-default">
												<h2>25</h2>
												<p class="text-muted">new tweet</p>
											</div>
											<div class="col-6">
												<h2>450+</h2>
												<p class="text-muted">Follower</p>
											</div>
										</div>
									</div>
								</div>

							</div>
							Widget 1
					    </div>
					    <div class="row">
							<div class="col-md-12 col-xl-6">
								<div class="card">
									<div class="card-header">
										<h5>지점별 회원현황</h5>
										<div class="card-header-left "></div>
										<div class="card-header-right">
											<ul class="list-unstyled card-option">
												<li><i class="icofont icofont-simple-left "></i></li>
												<li><i class="icofont icofont-maximize full-card"></i></li>
												<li><i class="icofont icofont-minus minimize-card"></i></li>
												<li><i class="icofont icofont-refresh reload-card"></i></li>
												<li><i class="icofont icofont-error close-card"></i></li>
											</ul>
										</div>
									</div>
									<div class="card-block">
										<div id="statestics-chart" style="height: 517px;"></div>
									</div>
								</div>
							</div>
							<div class="col-md-12 col-xl-6">
								<div class="card fb-card">
									<div class="card-header">
										<i class="icofont icofont-social-facebook"></i>
										<div class="d-inline-block">
											<h5>총 회원수</h5>
										</div>
									</div>
									<div class="card-block text-center">
										<div class="row">
											<div class="col-6 b-r-default">
												<h2>23</h2>
												<p class="text-muted">Active</p>
											</div>
											<div class="col-6">
												<h2>23</h2>
												<p class="text-muted">Comment</p>
											</div>
										</div>
									</div>
								</div>
								<div class="card dribble-card">
									<div class="card-header">
										<i class="icofont icofont-social-dribbble"></i>
										<div class="d-inline-block">
											<h5>dribble</h5>
										</div>
									</div>
									<div class="card-block text-center">
										<div class="row">
											<div class="col-6 b-r-default">
												<h2>23</h2>
												<p class="text-muted">Live</p>
											</div>
											<div class="col-6">
												<h2>23</h2>
												<p class="text-muted">Message</p>
											</div>
										</div>
									</div>
								</div>
								<div class="card twitter-card">
									<div class="card-header">
										<i class="icofont icofont-social-twitter"></i>
										<div class="d-inline-block">
											<h5>twitter</h5>
										</div>
									</div>
									<div class="card-block text-center">
										<div class="row">
											<div class="col-6 b-r-default">
												<h2>25</h2>
												<p class="text-muted">new tweet</p>
											</div>
											<div class="col-6">
												<h2>450+</h2>
												<p class="text-muted">Follower</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							Widget 2
					    </div>
					</div>

				<div id="styleSelector"></div>
			</div>
		</div>
	</div>
	</div>
	</div>




</body>
</html>