<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">

<head>
<meta charset="utf-8">
<title>MOHE 마이모해</title>
<!-- Stylesheets -->
<link href="resources/css/bootstrap.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">

<!-- Responsive File -->
<link href="resources/css/responsive.css" rel="stylesheet">
<!-- Color File -->
<link href="resources/css/color.css" rel="stylesheet">

<!-- personal css File -->
<link href="resources/css/miji.css" rel="stylesheet">

<link rel="shortcut icon"
   href="resources/images/mohe_logo/favicon_mohe.png" type="image/x-icon">
<link rel="icon" href="resources/images/mohe_logo/favicon_mohe.png"
   type="image/x-icon">

<!-- Responsive -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
   content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
<!--[if lt IE 9]><script src="js/respond.js"></script><![endif]-->
<link href="resources/css/header1.css" rel="stylesheet">
<link href="resources/css/footer.css" rel="stylesheet">
<link href="resources/css/maingPage.css" rel="stylesheet">
</head>

<body class="page-loaded bg-color-sky">
   <!-- header include -->
   <jsp:include page="header.jsp" />

   <div class="shop-page" style="text-align: end;">
      <div class="auto-container">
         <div class="row clearfix mr-0 ml-0">
            <!-- Gallery Page Section -->
            <section class="gallery-page-section pb-0">
               <div class="auto-container">
                  <!--MixitUp Galery-->
                  <div class="mixitup-gallery">
                     <!--Filter-->
                     <div class="filters clearfix text-start">
                        <ul class="filter-tabs filter-btns clearfix">
                           <li class="filter active" data-role="button"
                              data-filter=".mix-1">서포터</li>
                           <li class="filter" data-role="button" data-filter=".mix-2">메이커</li>
                        </ul>
                     </div>

                     <div class="filter-list">

                        <main class="gallery-item-two mix mix-1 main">
                           <section class="wrapper">
                              <div class="row clearfix">

                                 <!--Content Side / Blog Sidebar-->
                                 <div
                                    class="content-side col-xl-9 col-lg-8 col-md-12 col-sm-12 mt-auto">
                                    <div class="our-shop">

                                       <div class="row clearfix">

                                          <!--Shop Item-->
                                          <div
                                             class="shop-item col-xl-4 col-lg-6 col-md-6 col-sm-12 wow fadeInUp"
                                             data-wow-delay="400ms"
                                             style="visibility: hidden; animation-delay: 400ms; animation-name: none;">
                                             <div class="about-feature col-md-6 col-sm-12 max-w-100">
                                                <div
                                                   class="inner-box wow fadeInUp animated animated animated animated animated animated animated animated animated animated animated animated animated animated min-w-230px"
                                                   data-wow-delay="0ms" data-wow-duration="1500ms"
                                                   style="visibility: visible; animation-duration: 1500ms; animation-delay: 0ms;">
                                                   <div class="icon-box">
                                                      <i class="fas fa-solid fa-coins"></i>
                                                   </div>
                                                   <h4>참여 펀딩</h4>
                                                   <a href="details.do" class="over-link"
                                                      target="_blank" rel="nofollow"> </a>
                                                </div>
                                             </div>
                                          </div>

                                          <!--Shop Item-->
                                          <div
                                             class="shop-item col-xl-4 col-lg-6 col-md-6 col-sm-12 wow fadeInUp"
                                             data-wow-delay="800ms"
                                             style="visibility: hidden; animation-delay: 800ms; animation-name: none;">
                                             <div class="inner-box">
                                                <div class="image">
                                                   <div class="about-feature col-md-6 col-sm-12 max-w-100">
                                                      <div
                                                         class="inner-box wow fadeInUp animated animated animated animated animated animated animated animated animated animated animated animated animated animated min-w-230px"
                                                         data-wow-delay="0ms" data-wow-duration="1500ms"
                                                         style="visibility: visible; animation-duration: 1500ms; animation-delay: 0ms;">
                                                         <div class="icon-box">
                                                            <i class="fas fa-regular fa-handshake"></i>
                                                         </div>
                                                         <h4>참여 봉사</h4>
                                                         <a href="details.html" class="over-link"
                                                            target="_blank" rel="nofollow"> </a>
                                                      </div>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                          <!--Shop Item-->
                                          <div
                                             class="shop-item col-xl-4 col-lg-6 col-md-6 col-sm-12 wow fadeInUp"
                                             data-wow-delay="800ms"
                                             style="visibility: hidden; animation-delay: 800ms; animation-name: none;">
                                             <div class="inner-box">
                                                <div class="about-feature col-md-6 col-sm-12 max-w-100">
                                                   <div
                                                      class="inner-box wow fadeInUp animated animated animated animated animated animated animated animated animated animated animated animated animated animated min-w-230px"
                                                      data-wow-delay="0ms" data-wow-duration="1500ms"
                                                      style="visibility: visible; animation-duration: 1500ms; animation-delay: 0ms;">
                                                      <div class="icon-box">
                                                         <i class="fa fa-heart"></i>
                                                      </div>
                                                      <h4>찜 목록</h4>
                                                      <a href="shoppingBasket.do" class="over-link"
                                                         target="_blank" rel="nofollow"> </a>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                       </div>

                                    </div>
                                 </div>

                                 <!--Sidebar Side-->
                                 <div
                                    class="sidebar-side col-xl-3 col-lg-4 col-md-12 col-sm-12 text-center">
                                    <aside class="sidebar shop-sidebar">


                                       <!-- Price Filters -->
                                       <div
                                          class="sidebar-widget price-filters rangeslider-widget">
                                          <div class="input-control d-block">
                                             <label for="userName" class="input-label"></label>
                                             <div class="profile-user-img margin-auto">
                                                <img class="margin-auto profile-user-img-img"
                                                   src="resources/images/mohe_logo/img_no_profile.png"
                                                   alt="profile-user-img" style="max-width: 130px">
                                             </div>
                                          </div>
                                          <h3 class="sidebar-title"><c:out value="${user.user_name}" /> 님(<c:out value="${user.user_rating}" />)</h3>
                                          <div class="range-slider-one clearfix">
                                             <div class="clearfix">
                                                <div class="text-center">
                                                   <a href="modifyInfo.do"
                                                      class="theme-btn btn-style-one"><span
                                                      class="btn-title">회원 수정</span></a> <a href="#"
                                                      class="theme-btn btn-style-one"><span
                                                      class="btn-title bg-red">회원 탈퇴</span></a>
                                                </div>
                                             </div>
                                          </div>
                                       </div>

                                    </aside>
                                 </div>
                           </section>
                        </main>

                        <main class="gallery-item-two mix mix-2 main">
                           <section class="wrapper">
                              <div class="row clearfix">

                                 <!--Content Side / Blog Sidebar-->
                                 <div
                                    class="content-side col-xl-9 col-lg-8 col-md-12 col-sm-12">
                                    <div class="our-shop">

                                       <div class="row clearfix">

                                          <!--Shop Item-->
                                          <div
                                             class="shop-item col-xl-4 col-lg-6 col-md-6 col-sm-12 wow fadeInUp"
                                             data-wow-delay="400ms"
                                             style="visibility: hidden; animation-delay: 400ms; animation-name: none;">
                                             <div class="inner-box">
                                                <div class="image">
                                                   <img class="lazy-image"
                                                      src="resources/images/resource/image-spacer-for-validation.png"
                                                      data-src="resources/images/resource/products/8.png"
                                                      alt="">
                                                   <div class="overlay-box">
                                                      <ul class="option-box">
                                                         <li><a href="#"><span class="far fa-heart"></span></a>
                                                         </li>
                                                         <li><a href="#"><span
                                                               class="fa fa-shopping-bag"></span></a></li>
                                                         <li><a href="images/resource/products/8.png"
                                                            class="lightbox-image" data-fancybox="products"><span
                                                               class="fa fa-search"></span></a></li>
                                                      </ul>
                                                   </div>
                                                </div>
                                                <div class="lower-content">
                                                   <h3>
                                                      <a href="product-details.html">Side-Tie Tank</a>
                                                   </h3>
                                                   <div class="price">$40.75</div>
                                                </div>
                                             </div>
                                          </div>

                                          <!--Shop Item-->
                                          <div
                                             class="shop-item col-xl-4 col-lg-6 col-md-6 col-sm-12 wow fadeInUp"
                                             data-wow-delay="800ms"
                                             style="visibility: hidden; animation-delay: 800ms; animation-name: none;">
                                             <div class="inner-box">
                                                <div class="image">
                                                   <img class="lazy-image"
                                                      src="resources/images/resource/image-spacer-for-validation.png"
                                                      data-src="resources/images/resource/products/9.png"
                                                      alt="">
                                                   <div class="overlay-box">
                                                      <ul class="option-box">
                                                         <li><a href="#"><span class="far fa-heart"></span></a>
                                                         </li>
                                                         <li><a href="#"><span
                                                               class="fa fa-shopping-bag"></span></a></li>
                                                         <li><a href="images/resource/products/9.png"
                                                            class="lightbox-image" data-fancybox="products"><span
                                                               class="fa fa-search"></span></a></li>
                                                      </ul>
                                                   </div>
                                                </div>
                                                <div class="lower-content">
                                                   <h3>
                                                      <a href="product-details.html">Cold Crewneck
                                                         Sweater</a>
                                                   </h3>
                                                   <div class="price">$60.00</div>
                                                </div>
                                             </div>
                                          </div>
                                          <!--Shop Item-->
                                          <div
                                             class="shop-item col-xl-4 col-lg-6 col-md-6 col-sm-12 wow fadeInUp"
                                             data-wow-delay="800ms"
                                             style="visibility: hidden; animation-delay: 800ms; animation-name: none;">
                                             <div class="inner-box">
                                                <div class="image">
                                                   <img class="lazy-image"
                                                      src="resources/images/resource/image-spacer-for-validation.png"
                                                      data-src="resources/images/resource/products/9.png"
                                                      alt="">
                                                   <div class="overlay-box">
                                                      <ul class="option-box">
                                                         <li><a href="#"><span class="far fa-heart"></span></a>
                                                         </li>
                                                         <li><a href="#"><span
                                                               class="fa fa-shopping-bag"></span></a></li>
                                                         <li><a href="images/resource/products/9.png"
                                                            class="lightbox-image" data-fancybox="products"><span
                                                               class="fa fa-search"></span></a></li>
                                                      </ul>
                                                   </div>
                                                </div>
                                                <div class="lower-content">
                                                   <h3>
                                                      <a href="product-details.html">Cold Crewneck
                                                         Sweater</a>
                                                   </h3>
                                                   <div class="price">$60.00</div>
                                                </div>
                                             </div>
                                          </div>
                                       </div>

                                    </div>
                                 </div>

                                 <!--Sidebar Side-->
                                 <div
                                    class="sidebar-side col-xl-3 col-lg-4 col-md-12 col-sm-12 text-center">
                                    <aside class="sidebar shop-sidebar">


                                       <!-- Price Filters -->
                                       <div
                                          class="sidebar-widget price-filters rangeslider-widget">
                                          <div class="input-control d-block">
                                             <label for="userName" class="input-label"></label>
                                             <div class="profile-user-img margin-auto">
                                                <img class="margin-auto profile-user-img-img"
                                                   src="resources/images/mohe_logo/img_no_profile.png"
                                                   alt="profile-user-img" style="max-width: 130px">
                                             </div>
                                          </div>
                                          <h3 class="sidebar-title">차미지 님</h3>
                                          <div class="range-slider-one clearfix">
                                             <div class="clearfix">
                                                <div class="text-center">
                                                   <a href="#" class="theme-btn btn-style-one"><span
                                                      class="btn-title bg-red">회원 탈퇴</span></a> <a href="#"
                                                      class="theme-btn btn-style-one"><span
                                                      class="btn-title">회원 수정</span></a>
                                                </div>
                                             </div>
                                          </div>
                                       </div>

                                    </aside>
                                    </div>
                           </section>
                        </main>

                     </div>

                  </div>
               </div>
            </section>

         </div>
      </div>
   </div>
   <!-- footer include -->
   <jsp:include page="footer.jsp" />
   </div>
   <!--End pagewrapper-->

   <!--Scroll to top-->
   <div class="scroll-to-top scroll-to-target" data-target="html">
      <span class="flaticon-up-arrow"></span>
   </div>

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