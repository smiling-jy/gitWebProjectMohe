<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>모해 MOHE | 이벤트 상세보기</title>
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
    <!-- Preloader -->
    <div class="preloader"><div class="icon"></div></div>


 
    <!-- Page Banner Section -->
    <section class="page-banner" id="new-banner">
        <div class="auto-container">
        <h1>이벤트</h1>
				<ul class="bread-crumb clearfix">
					<li><a href="notice.do"><h5>공지사항</h5></a></li>
					<li><a href="faq.do"><h5>자주 묻는 질문</h5></a></li>
					<li class="active"><a href="event.do"><h5>이벤트</h5></a></li>
					<li><a href="partner.do"><h5>파트너</h5></a></li>
					<li><a href="review.do"><h5>후기 모음</h5></a></li>
				</ul>
        </div>

    </section>
    <!--End Banner Section -->
    
    
    <!--Sidebar Page Container-->
    <div class="sidebar-page-container" style="width: 800px; margin:auto" >
        <div class="auto-container">
            <div class="row clearfix">

                <!--Content Side / Blog Sidebar-->
                <div class="content-side col-lg-13 col-md-12 col-sm-12">
                    <!--Blog Posts-->
                    <div class="blog-post-detail" >
                        <div class="inner">
            				<input name="event_no" type=hidden value="${event.event_no}"/>
            				<div class="event-title">◆ 진행중인 이벤트 ◆</div>
                            <h2 style="text-align:center;">${event.event_title} </h2>
                            <div class="post-meta" >
                                <ul class="clearfix" style="text-align:center;">
                                  <!-- <li><span class="icon fa fa-user"></span>안떠..${event.adm_id}</li>-->
                                   <li>
                                    <div class="event-detail">
                                    		기간 <span class="icon far fa-clock"></span>
											${fn:substring(event.event_stdate,0,10)}
											 ~ ${fn:substring(event.event_eddate,0,10)}
											</div>
			                        </li>
                                </ul>
                        
                            </div>
                            <hr style="border: solid 1px lightgrey">
                            <br>
                            <div class="content">
                            	<div style="text-align:center;"><img id="event-title-logo" src="resources/images/mohe_logo/main_color_logo.png"></div>
                            	<br><img src="resources/files/event/main/${event.event_no}/eventMainIMG.PNG"><br>
                            	 ${event.event_text}
                            </div>
                        </div>
                        
                        <div class="post-share-options clearfix"> 
                            <div class="social-links pull-right">
                                <p>Share:</p>
                                <ul class="social-icons">
                                    <li><a href="#"><span class="fab fa-facebook-f"></span></a></li>
                                    <li><a href="#"><span class="fab fa-twitter"></span></a></li>
                                    <li><a href="#"><span class="fab fa-vimeo-v"></span></a></li>
                                    <li><a href="#"><span class="fab fa-linkedin-in"></span></a></li>
                                </ul>
                            </div>
                        </div>
                        
                        
                         <hr style="border: solid 1px lightgrey">
                         <br><br>
                    <div style="text-align:center;">
                    		 <div>
	                         <h5 style="color:grey;">[다음 이벤트]</h5>
		                          <c:choose>
		                    			<c:when test="${move.next!=9999}">
				                             <a style="color:black;" href="getEvent.do?event_no=${move.next}">
				                             <h5>${move.next_title}</h5></a>
				                            
				                        </c:when>
				                
				                        <c:when test="${move.next==9999}">
				                             <a style="color:grey; font-weight:bold;">가장 최근 이벤트입니다.</a>
				                          </c:when>
			                       </c:choose>
	                        </div> 
	                  		<br>
	                        <hr style="border: solid 1px lightgrey; width: 50%; margin:auto;">
	                          <br>
	                         <div>
                    		 <h5 style="color:grey;">[이전 이벤트]</h5>
		                       <c:choose>
	                    			<c:when test="${move.prev!=9999}">
			                             <a class="notice-hover" style="color:black;" href="getEvent.do?event_no=${move.prev}">
			                             <h5>${move.prev_title}</h5></a>
			                        </c:when>
			                
			                        <c:when test="${move.prev==9999}">
			                             <a style="color:grey; font-weight:bold;">이전 이벤트가 없습니다.</a>
			                          </c:when>
		                       </c:choose>
		                     </div>
	                       
                    <br><br>
                    <div class="donate-link"><a href="event.do" class="theme-btn btn-style-one"><span class="btn-title">목록으로</span></a></div>
                     </div>
                </div>
                     
        		</div>
         
   			 </div>      
            
		</div>

	</div>
</div>
  		<!-- footer include -->
			<jsp:include page="footer.jsp" />
		
		<!-- Main Footer -->
   
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