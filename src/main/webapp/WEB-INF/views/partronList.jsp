<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>모해 MOHE |  </title>
<link rel="shortcut icon" href="resources/images/mohe_logo/favicon_mohe.png" type="image/x-icon">
<link rel="icon" href="resources/images/mohe_logo/favicon_mohe.png" type="image/x-icon">
<!-- Stylesheets -->
<link href="resources/css/bootstrap.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<!-- Responsive File -->
<link href="resources/css/responsive.css" rel="stylesheet">
<!-- Color File -->
<link href="resources/css/color.css" rel="stylesheet">
<!-- 수정한 css-->
<link href="resources/css/funding.css" rel="stylesheet">
<link href="resources/css/header3.css" rel="stylesheet">
<link href="resources/css/footer.css" rel="stylesheet">
<link href="resources/css/mainPage.css" rel="stylesheet">


<!-- Responsive -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
<!--[if lt IE 9]><script src="resources/js/respond.js"></script><![endif]-->
</head>

<body>

<div class="page-wrapper">
		<!-- header include -->
 	<jsp:include page="headerMint.jsp"/>

    <!-- Page Banner Section -->
    <!-- <section class="page-banner"> -->
        <!-- <div class="image-layer lazy-image" data-bg="url('resources/images/background/bg-banner-1.jpg')"></div> -->
        <!-- 한지스러움 삭제 -->
        <!-- <div class="bottom-rotten-curve"></div> -->
    <!-- </section> -->
    <!--End Banner Section -->
    
    <section class="cart-section new-font">
        <div class="auto-container">
            <h2>내 프로젝트 관리하기</h2><br/>
            <!--Cart Outer-->
            <div class="cart-outer">
                <div class="table-column">
                    <div class="inner-column">
                        <h3>프로젝트 이름</h3><br/>
                        <div class="table-outer">
                            <div class="table-box">
                                <table class="cart-table">
                                    <thead class="cart-header">
                                        <tr>
                                            <th>주문번호</th>
                                            <th>구매자 이름</th>
                                            <th>상태</th>
                                            <th>수량</th>
                                            <th class="price">총액</th>
                                            <th>연락처</th>
                                            <th>주소</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>21321321</td>
                                            <td>김개똥</td>
                                            <td>
                                                <!-- 클릭하면 운송장번호를 입력할 수 있는 새창 띄우기 -->
                                                <button class="new-btn">배송예정</button>
                                            </td>
                                            <td>1</td>
                                            <td class="price">$50.00</td>
                                            <td>연락처</td>
                                            <td>어쩔구 어쩔동어쩔구 어쩔동어쩔구 어쩔동어쩔구 어쩔동어쩔구 어쩔동</td>
                                        </tr>
                                        <tr>
                                            <td>21321321</td>
                                            <td>김개똥</td>
                                            <td>
                                                <button class="new-btn">배송예정</button>
                                            </td>
                                            <td>1</td>
                                            <td class="price">$50.00</td>
                                            <td>연락처</td>
                                            <td>어쩔구 어쩔동</td>
                                        </tr>
                                        <tr>
                                            <td>21321321</td>
                                            <td>김개똥</td>
                                            <td>
                                                <button class="new-btn">배송예정</button>
                                            </td>
                                            <td>1</td>
                                            <td class="price">$50.00</td>
                                            <td>연락처</td>
                                            <td>어쩔구 어쩔동</td>
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