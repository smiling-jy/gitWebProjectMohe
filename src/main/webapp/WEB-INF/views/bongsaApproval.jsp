<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>MOHE 마이모해</title>
<!-- Stylesheets -->
<link href="resources/css/bootstrap.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/mohe.bs.manage.css" rel="stylesheet">
<!-- Responsive File -->
<link href="resources/css/responsive.css" rel="stylesheet">
<!-- Color File -->
<link href="resources/css/color.css" rel="stylesheet">

<link rel="shortcut icon" href="resources/images/mohe_logo/favicon_mohe.png" type="image/x-icon">
<link rel="icon" href="resources/images/mohe_logo/favicon_mohe.png" type="image/x-icon">

<!-- Responsive -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
<!--[if lt IE 9]><script src="js/respond.js"></script><![endif]-->
<link href="resources/css/header1.css" rel="stylesheet">
<link href="resources/css/footer.css" rel="stylesheet">
	<link href="resources/css/maingPage.css" rel="stylesheet">
</head>

<body>

<div class="page-wrapper">
 		<!-- header include -->
 		<jsp:include page="header.jsp"/>
    <!--End Cart Section-->
    <section class="cart-section">
        <div class="auto-container">
            <!--Cart Outer-->
            <div class="cart-outer">
                <div class="table-column">
                    <div class="inner-column">
                        <h3>봉사승인내역</h3><br/>
                        <div class="table-outer">
                            <div class="table-box">
                                <table class="cart-table">
                                    <thead class="cart-header">
                                        <tr>
                                            <th class="manage-bs-title">봉사활동명</th>
                                            <th class="manage-bs-name">주최</th>
                                            <th class="manage-bs-palce">장소</th>
                                            <th class="manage-bs-date">활동일자</th>
                                            <th class="manage-bs-ing">진행상태</th>
                                        </tr>
                                    </thead>
                                    
                                    <tbody>
                                        <tr>
                                            <td><a href="#" class="manage-bs-title">한마음 달리기</a></td>
                                            <td class="manage-bs-name">수원시의회</td>
                                            <td class="manage-bs-palce">월드컵경기장</td>
                                            <td class="manage-bs-date">2022-10-25 ~ 2022-10-28</td>
                                            <td class="manage-bs-ing">예정</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#" class="manage-bs-title">한마음 달리기</a></td>
                                            <td class="manage-bs-name">수원시의회</td>
                                            <td class="manage-bs-palce">월드컵경기장</td>
                                            <td class="manage-bs-date">2022-10-25 ~ 2022-10-28</td>
                                            <td class="manage-bs-ing">완료</td>
                                        </tr>

                                        <tr>
                                            <td><a href="#" class="manage-bs-title">한마음 달리기</a></td>
                                            <td class="manage-bs-name">수원시의회</td>
                                            <td class="manage-bs-palce">월드컵경기장</td>
                                            <td class="manage-bs-date">2022-10-25 ~ 2022-10-28</td>
                                            <td class="manage-bs-ing">완료</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </section>
    <!-- End Cart Section-->
			<!-- footer include -->
 		<jsp:include page="footer.jsp"/>
</div>
<!--End pagewrapper-->

<!--Scroll to top-->
<div class="scroll-to-top scroll-to-target" data-target="html"><span class="flaticon-up-arrow"></span></div>

<script src="resources/js/jquery.js"></script>
<script src="resources/js/popper.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/jquery-ui.js"></script>
<script src="resources/js/jquery.bootstrap-touchspin.js"></script>
<script src="resources/js/jquery.fancybox.js"></script>
<script src="resources/js/owl.js"></script>
<script src="resources/js/appear.js"></script>
<script src="resources/js/wow.js"></script>
<script src="resources/js/lazyload.js"></script>
<script src="resources/js/scrollbar.js"></script>
<script src="resources/js/script.js"></script>

</body>
</html>