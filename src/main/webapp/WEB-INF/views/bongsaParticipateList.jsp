<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>모해 MOHE | 봉사참여자리스트페이지</title>
<!-- Stylesheets -->
<link href="resources/css/bootstrap.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/bongsaParticipateList.css" rel="stylesheet">

<!-- Responsive File -->
<link href="resources/css/responsive.css" rel="stylesheet">
<!-- Color File -->
<link href="resources/css/color.css" rel="stylesheet">

<link rel="shortcut icon" href="resources/image/mohe_logo/favicon_mohe.png" type="image/x-icon">
<link rel="icon" href="resources/image/mohe_logo/favicon_mohe.png" type="image/x-icon">

<!-- Responsive -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
<!--[if lt IE 9]><script src="resources/resources/js/respond.js"></script><![endif]-->
<link href="resources/css/header2.css" rel="stylesheet">
<link href="resources/css/footer.css" rel="stylesheet">
<link href="resources/css/mainPage.css" rel="stylesheet">
</head>

<body>
<div class="page-wrapper newFont">
 
		<!-- header include -->
 		<jsp:include page="headerRed.jsp"/>
    <!-- Page Banner Section -->
    <section class="page-banner">
        <!-- <div class="image-layer lazy-image" data-bg="url('resources/image/background/bg-banner-1.jpg')"></div>
        <div class="bottom-rotten-curve"></div> -->

        <div class="auto-container" id="list-banner">
            <!-- <img src="https://happybean-phinf.pstatic.net/20210928_118/1632792079855RYzOm_PNG/PC_2280x500_E7B6A6.png"> -->
        </div>

    </section>
    <!--End Banner Section -->
    
    <!--End Cart Section-->
    <section class="cart-section" >
        <div class="auto-container">
            <!--Cart Outer-->
            <div class="cart-outer">
                <div class="table-column">
                    <div class="inner-column ">
                        <h2 class="newFont">한마음 달리기</h2><br/>
                        <div class="table-outer">
                            <div class="table-box">
                                <table class="cart-table newfont centersetting">
                                    <thead class="cart-header">
                                        <tr>
                                            <th colspan="3"><h3 class="newFont">봉사활동 참가자 리스트</h3></th>
                                        </tr>
                                        <tr class="centersetting">
                                            <th class="manage-bser-name ">이름</th>
                                            <th class="manage-bser-phone ">전화번호</th>
                                            <th class="manage-bser-email">이메일</th>
                                        </tr>
                                    </thead>
                                    
                                    <tbody>
                                        <tr>
                                            <td><a href="#" class="manage-bser-name">김나나</a></td>
                                            <td class="manage-bser-phone">010-9999-8999</td>
                                            <td class="manage-bser-email">aaaa@naver.com</td>

                                        </tr>
                                        <tr>
                                            <td><a href="#" class="manage-bser-name">김나나</a></td>
                                            <td class="manage-bser-phone">010-9999-8999</td>
                                            <td class="manage-bser-email">aaaa@naver.com</td>
                                        </tr>

                                        <tr>
                                            <td><a href="#" class="manage-bser-name">김나나</a></td>
                                            <td class="manage-bser-phone">010-9999-8999</td>
                                            <td class="manage-bser-email">aaaa@naver.com</td>
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