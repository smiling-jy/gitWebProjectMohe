<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view" style="height:1400px;">
					<div class="navbar nav_title" style="border: 0;">
						<!-- <a href="index.do" class="site_title"><i class="fa fa-paw"></i> <span>Gentelella Alela!</span></a> -->
					</div>
					<div class="clearfix"></div>

					<div class="logo_img">
						<a href="adminMain.do"><img
							src="../resources/images/mohe_logo/main_logo.png" /></a>
					</div>


					<!-- sidebar menu -->
					<div id="sidebar-menu"
						class="main_menu_side hidden-print main_menu">
						<div class="menu_section">
							<ul class="nav side-menu">
								<li class="home_back"><a href="adminMain.do"><i
										class="fa fa-no"></i>
										<div>메인</div> <span class="fa fa-no"></span></a></li>
								<li><a><i class="fa fa-no"></i> 사용자관리 <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="adUserList.do">회원목록</a></li>
										<li><a href="adminList.do">관리자목록</a></li>
									</ul></li>
								<li><a><i class="fa fa-no"></i> 이메일 관리 <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="adSendEmail.do">이메일보내기</a></li>
									</ul></li>
								<li><a><i class="fa fa-no"></i> 이벤트관리 <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="adEventList.do">이벤트목록</a></li>
										<li><a href="adPopList.do">팝업관리</a></li>
									</ul></li>
								<li><a><i class="fa fa-no"></i> 펀딩관리 <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="adFdList.do">펀딩목록</a></li>
										<li><a href="adFdApproval.do">신청펀딩관리</a></li>
									</ul></li>
								<li><a><i class="fa fa-no"></i> 봉사관리 <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="adBsList.do">봉사목록</a></li>
										<li><a href="adBsApproval.do">신청봉사관리</a></li>
									</ul></li>
								<li><a href="adPartnerList.do"><i class="fa fa-no"></i>
										파트너쉽관리 <span class="fa fa-chevron-down"></span></a></li>
								<li><a href="adReviewList.do"><i class="fa fa-no"></i>
										리뷰관리 <span class="fa fa-chevron-down"></span></a></li>
								<li><a href="adDonationList.do"><i class="fa fa-no"></i>
										기부관리 <span class="fa fa-chevron-down"></span></a></li>
								<li><a href="adNotice.do"><i class="fa fa-no"></i> 공지사항
										<span class="fa fa-chevron-down"></span></a></li>
								<li><a href="adStats.do"><i class="fa fa-no"></i> 통계 <span
										class="fa fa-chevron-down"></span></a></li>
							</ul>
						</div>
					</div>

				</div>
				<!-- /sidebar menu -->
			</div>
		</div>
		
		<!-- top navigation -->
		<div class="top_nav">
			<div class="nav_menu" style="margin-bottom: 0px;">
				<nav class="nav navbar-nav">
					<ul class=" navbar-right">
						<li class="nav-item dropdown open" style="padding-left: 15px;">
							<a href="adminLogout.do" > LOGOUT</a>
						</li>
					</ul>
				</nav>
			</div>
		</div>
		<!-- /top navigation -->
</body>
</html>