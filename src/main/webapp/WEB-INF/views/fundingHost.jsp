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
<link href="resources/css/header1.css" rel="stylesheet">
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
 	<jsp:include page="header.jsp"/>
 
    <!-- Page Banner Section -->
    <!-- <section class="page-banner"> -->
        <!-- <div class="image-layer lazy-image" data-bg="url('resources/images/background/bg-banner-1.jpg')"></div> -->
        <!-- <div class="bottom-rotten-curve"></div> -->
    <!-- </section> -->
    <!--End Banner Section -->
    
    
    <!--Sidebar Page Container-->
    <div class="sidebar-page-container shop-page">
        <div class="auto-container">
            <div class="row clearfix">

                <!--Content Side / Blog Sidebar-->
                <div class="content-side col-xl-9 col-lg-8 col-md-12 col-sm-12">
                    <div class="our-shop new-font">
                        <div>
                            <h3>성공한 프로젝트</h3>
                            <!-- 펀딩 블럭 -->
                            <div class="cause-block col-lg-4 col-md-6 col-sm-12 ">
                                <div class="inner-box wow fadeInUp" data-wow-delay="0ms">
                                    <div class="image-box">
                                        <figure class="image"><a href="mypage-details.html"><img class="lazy-image" src="resources/images/resource/image-spacer-for-validation.png" data-src="resources/images/resource/cause-image-4.jpg" alt=""></a></figure>
                                    </div>
                                    <div class="lower-content new-font">
                                        <div class="progress-box">
                                            <div class="bar">
                                                <div class="bar-inner count-bar" data-percent="100%"><div class="count-text">707%</div></div>
                                            </div>
                                        </div>
                                        <div class="donation-count clearfix"><span class="goal">달성금액:<strong> 8,000,000원</strong></span></div>
                                        <h5><a href="patronList.html" class="new-font black-font">저소득층 여성을 돕는 유기농 생리대</a></h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div>
                            <h3>진행중인 프로젝트</h3>
                            <!-- 펀딩 블럭 -->
                            <div class="cause-block col-lg-4 col-md-6 col-sm-12 ">
                                <div class="inner-box wow fadeInUp" data-wow-delay="0ms">
                                    <div class="image-box">
                                        <figure class="image"><a href="cause-single.html"><img class="lazy-image" src="resources/images/resource/image-spacer-for-validation.png" data-src="resources/images/resource/cause-image-4.jpg" alt=""></a></figure>
                                    </div>
                                    <div class="lower-content new-font">
                                        <div class="progress-box">
                                            <div class="bar">
                                                <div class="bar-inner count-bar" data-percent="33%"><div class="count-text">33%</div></div>
                                            </div>
                                        </div>
                                        <div class="donation-count clearfix"><span clan class="goal">현재금액:<strong> 8,000,000원</strong></span><br/><span><strong>3</strong>일남음</span></div>
                                        <h5><a href="fundingSingle.html" class="new-font black-font">저소득층 여성을 돕는 유기농 생리대</a></h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div>
                            <h3>질문 답변하기</h3>
                            <div class="tab active-tab">
                                <ul class="accordion-box clearfix">
                                    <!--Block-->
                                    <li class="accordion block active-block f-size">
                                        <div class="acc-btn margin">
                                            <table>
                                                <tr>
                                                    <td>123</td>
                                                    <td class="content">어쩌구저저구 궁금함다어쩌구저저구 궁금함다어쩌구저저구 궁금함다어쩌구저저구 궁금함다어쩌구저저구 궁금함다어쩌구저저구 궁금함다어쩌구저저구 궁금함다어쩌구저저구 궁금함다어쩌구저저구 궁금함다어쩌구저저구 궁금함다</td>
                                                    <td>답변완료</td>
                                                </tr>
                                            </table>
                                        </div>
                                        <div class="acc-content current">
                                            <div class="content donate-form">
                                                <textarea placeholder="여기에 답변하세요"></textarea>
                                                <button class="new-btn" id="answer">답변하기</button>
                                            </div>
                                        </div>
                                    </li> 
        
                                    <!--Block-->
                                    <li class="accordion block">
                                        <div class="acc-btn">Q. What is minimum amount to donate?</div>
                                        <div class="acc-content">
                                            <div class="content">
                                                <div class="text">Minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt.</div>
                                                <button class="x-btn">x</button>
                                            </div>
                                        </div>
                                    </li>
        
                                    <!--Block-->
                                    <li class="accordion block">
                                        <div class="acc-btn">Q. What is the main cause in your list?</div>
                                        <div class="acc-content">
                                            <div class="content">
                                                <div class="text">Lorem ipsum dolor amet consectetur adipisicing  sed do eiusmod tempor incididunt ut labore magna aliqua enim minim veniam quis nostrud.</div>
                                            </div>
                                        </div>
                                    </li>
        
                                    <!--Block-->
                                    <li class="accordion block">
                                        <div class="acc-btn">Q. What is minimum amount to donate?</div>
                                        <div class="acc-content">
                                            <div class="content">
                                                <div class="text">Minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt.</div>
                                            </div>
                                        </div>
                                    </li>
        
                                    <!--Block-->
                                    <li class="accordion block">
                                        <div class="acc-btn">Q. What is the main cause in your list?</div>
                                        <div class="acc-content">
                                            <div class="content">
                                                <div class="text">Lorem ipsum dolor amet consectetur adipisicing  sed do eiusmod tempor incididunt ut labore magna aliqua enim minim veniam quis nostrud.</div>
                                            </div>
                                        </div>
                                    </li>
                                    
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!--Sidebar Side-->
                <div class="sidebar-side col-xl-3 col-lg-4 col-md-12 col-sm-12">
                    <aside class="sidebar shop-sidebar">
                        
                        <!-- Search -->
                        <div class="sidebar-widget search-box">
                        	<h3 class="sidebar-title">Search</h3>
                            <form method="post" action="contact.html">
                                <div class="form-group">
                                    <input type="search" name="search-field" value="" placeholder="Search..." required="">
                                    <button type="submit"><span class="icon flaticon-search-1"></span></button>
                                </div>
                            </form>
                        </div>

                        <!-- Category Widget -->
                        <div class="sidebar-widget categories">
                            <h3 class="sidebar-title">Categories</h3>
                            <div class="widget-content">
                                <ul>
                                    <li class="current"><a href="blog-single.html">Education</a></li>
                                    <li><a href="blog-single.html">Olympiad</a></li>
                                    <li><a href="blog-single.html">Children</a></li>
                                    <li><a href="blog-single.html">Animals</a></li>
                                    <li><a href="blog-single.html">Donations</a></li>
                                    <li><a href="blog-single.html">Causes</a></li>
                                </ul>
                            </div>
                        </div>                        
                    </aside>
                </div>
            </div>
        </div>
    </div>
    <!-- End Sidebar Page Container -->
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
<script src="resources/js/owl.js"></script>
<script src="resources/js/appear.js"></script>
<script src="resources/js/wow.js"></script>
<script src="resources/js/lazyload.js"></script>
<script src="resources/js/scrollbar.js"></script>
<script src="resources/js/script.js"></script>

</body>
</html>