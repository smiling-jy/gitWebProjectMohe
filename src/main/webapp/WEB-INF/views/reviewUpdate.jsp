<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>모해 MOHE | 후기 수정하기</title>
<!-- Stylesheets -->
<link href="resources/css/bootstrap.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<!-- Responsive File -->
<link href="resources/css/responsive.css" rel="stylesheet">
<!-- Color File -->
<link href="resources/css/color.css" rel="stylesheet">
<!-- 추가된 css-->
<link href="resources/css/more.css" rel="stylesheet">
<link href="resources/css/header1.css" rel="stylesheet">
<link href="resources/css/footer.css" rel="stylesheet">

<link rel="shortcut icon"
	href="resources/images/mohe_logo/favicon_mohe.png" type="image/x-icon">
<link rel="icon" href="resources/images/mohe_logo/favicon_mohe.png"
	type="image/x-icon">

<!-- Responsive -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
<!--[if lt IE 9]><script src="js/respond.js"></script><![endif]-->
</head>

<body>

<div class="page-wrapper">
    <jsp:include page="header.jsp" />


    <!-- Page Banner Section -->
    <section class="page-banner" id="new-banner">
        <div class="auto-container">
            <h1>후기 모음</h1>
            <ul class="bread-crumb clearfix">
                <li><a href="notice.do"><h5>공지사항</h5></a></li>
                <li><a href="faq.do"><h5>자주 묻는 질문</a><h5></h5></li>
                <li><a href="event.do"><h5>이벤트</h5></a></li>
                <li><a href="partner.do"><h5>파트너</h5></a></li>
                <li class="active"><h5>후기 모음</h5></a></li>
            </ul>
        </div>

    </section>
    <!--End Banner Section -->
    
   <!--CheckOut Page-->
   <section class="checkout-page">
    <div class="auto-container" >
        
        <!--Checkout Details-->
        <div class="checkout-form">
           

                <div class="billing-detail" >
                    <h2 style="text-align:center;" >후기 수정 하기</h2><br>
                    
                        <div class="billing-column col-lg-6 col-md-12 col-sm-12" style="margin:auto;">
                           
                            <form action="updateReview.do" method="post" enctype="multipart/form-data">
                            	<input name="review_no" type=hidden value="${review.review_no}"/>
                                <!--Form Group-->
                                <div class="form-group col-lg-12 col-md-12 col-sm-12">
                                    <div class="field-label">제목</div>
                                    <input type="text" name="review_title" value="${review.review_title}">
                                </div>
                                
                                <!--Form Group-->
                              <div class="form-group col-lg-12 col-md-12 col-sm-12">
                                    <div class="field-label">작성자 : ${review.user_name} </div>
                     			</div>
                        
        
                                 <!--Form Group-->
                                <div class="form-group col-lg-12 col-md-12 col-sm-12">
                                	<div class="field-label">내 용</div>
                                     <textarea id="reviewtext" name="review_text">${review.review_text}</textarea>
                                </div>
                                  <!--사진첨부-->
                                <div class="form-group col-lg-12 col-md-12 col-sm-12">
                                    <div class="field-label">사진 첨부하기</div>
                                    <input type="file" name="file">
                      			</div>
                      			<!-- 세션이 저장되어 있는 유저넘버를 review db로 가지고 가기 -->
                            	<input type="hidden" name="user_no" value="${sessionScope.user_no}">
                            	<!-- 리뷰모음에서 넘어온 page 값 -->
                            	<input type="hidden" name="page" value="review">
                                <div class="btn-box" style="text-align:center;">
                        			<button type="submit" class="theme-btn btn-style-one place-order"><span class="btn-title">수정하기</span></button>
                         		</div>
                             </form>
                         </div>
                    <br><br><br>
             	</div>
               </div>
              </div>
            </section>                     
    	</div>

                

                
  
		<!-- footer include -->
		<jsp:include page="footer.jsp" />
		<!-- Main Footer -->

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