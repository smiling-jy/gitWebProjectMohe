<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>모해 MOHE | 이벤트</title>
<!-- Stylesheets -->
<link href="resources/css/bootstrap.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<!-- Responsive File -->
<link href="resources/css/responsive.css" rel="stylesheet">
<!-- Color File -->
<link href="resources/css/color.css" rel="stylesheet">
<!-- 추가된 css-->
<link href="resources/css/more.css" rel="stylesheet">

<link rel="shortcut icon" href="resources/images/mohe_logo/favicon_mohe.png" type="image/x-icon">
<link rel="icon" href="resources/images/mohe_logo/favicon_mohe.png" type="image/x-icon">


<!-- Responsive -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
<!--[if lt IE 9]><script src="resources/js/respond.js"></script><![endif]-->
<link href="resources/css/header1.css" rel="stylesheet">
<link href="resources/css/footer.css" rel="stylesheet">
</head>

<body>

<div class="page-wrapper">
	
		<!-- header include -->
 		<jsp:include page="header.jsp"/>
    <!-- Page Banner Section -->
    <section class="page-banner" id="new-banner">
      
        <div class="auto-container">
            <h1>이벤트</h1>
            <ul class="bread-crumb clearfix">
                <li><a href="notice.html"><h5>공지사항</h5></a></li>
                <li><a href="faq.html"><h5>자주 묻는 질문</h5></a></li>
                <li class="active"><h5>이벤트</h5></a></li>
                <li><a href="partner.html"><h5>파트너</h5></a></li>
                <li><a href="review.html"><h5>후기 모음</h5></a></li>
            </ul>
        </div>

    </section>
    <!--End Banner Section -->
    
    <!-- Gallery Page Section -->
    <section class="gallery-page-section">
        <div class="auto-container">
            <!--MixitUp Galery-->
            <div class="mixitup-gallery">
                <!--Filter-->
                <div class="filters clearfix">
                    <ul class="filter-tabs filter-btns clearfix">
                        <li class="active filter" data-role="button" data-filter="all">EVENT 1</li>
                        <li class="filter" data-role="button" data-filter=".children">EVENT 2</li>
                        <li class="filter" data-role="button" data-filter=".volunteer">EVENT 3</li>
                    </ul>
                </div>

                <div class="filter-list row">
                    <!-- Gallery Item Two -->
                    <div class="gallery-item-two mix all volunteer">
                        <div class="image-box">
                            <figure class="image"><img class="lazy-image" src="resources/images/resource/image-spacer-for-validation.png" data-src="resources/images/gallery/7.jpg" alt=""></figure>
                            <div class="overlay-box"><a href="resources/images/gallery/7.jpg" class="lightbox-image" data-fancybox="gallery"><span class="icon flaticon-cross-1"></span></a></div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <!-- End Gallery Page Section -->
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
<script src="resources/js/jquery.fancybox.js"></script>
<script src="resources/js/mixitup.js"></script>
<script src="resources/js/owl.js"></script>
<script src="resources/js/appear.js"></script>
<script src="resources/js/wow.js"></script>
<script src="resources/js/lazyload.js"></script>
<script src="resources/js/scrollbar.js"></script>
<script src="resources/js/script.js"></script>

</body>
</html>