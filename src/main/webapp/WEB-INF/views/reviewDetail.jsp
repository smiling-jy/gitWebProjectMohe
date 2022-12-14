<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>



<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>모해 MOHE | 후기 읽기</title>
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
    
    
    <!--Sidebar Page Container-->
    <div class="sidebar-page-container" style="width: 800px; margin:auto" >
        <div class="auto-container">
            <div class="row clearfix">

                <!--Content Side / Blog Sidebar-->
                <div class="content-side col-lg-13 col-md-12 col-sm-12">
                    <!--Blog Posts-->
                    <div class="blog-post-detail">
                        <div class="inner">
            				<input name="review_no" type=hidden value="${review.review_no}"/>
                            <div id="review_title"><h2>${review.review_title} </h2></div>
                            <div class="post-meta" >
                                <ul class="clearfix">
                                    <li>
                                    <div class="user-rating" style="display:inline-block;">	
										<c:choose>
											<c:when test="${review.user_rating eq '시민' }">											
												<img src="resources/images/user_rating/rating_1_30.png" style="width:25px;height:25px">
											</c:when>
											<c:when test="${review.user_rating eq '고수' }">											
												<img src="resources/images/user_rating/rating_2_30.png" style="width:25px;height:25px">
											</c:when>
											<c:otherwise>
												<img src="resources/images/user_rating/rating_3_30.png" style="width:25px;height:25px">
											</c:otherwise>
										</c:choose>
									</div>
                                    
                                    ${review.user_name}</li>
                                    <li>작성날짜: <fmt:formatDate value="${review.review_date}" pattern="yyyy년 MM월 dd일  HH시 mm분"></fmt:formatDate></li>
                               		<li>조회수 : ${review.review_read_cnt}</li>
                                </ul>
                        
                            </div>
                            <hr style="border: solid 1px lightgrey">
                            <br>
                            <div class="content">
                           		<div class="event-content" style="text-align:center;">
	                            	<img src="resources/files/review/${review.review_no}/reviewIMG.png"
	                            	   onerror="this.src='resources/images/mohe_logo/logo_mint.png'">
	                            </div>
	                                <pre style="font-family:'Malgun Gothic';"><c:out value="${review.review_text}"></c:out></pre>
                         	</div>
                        </div>
                        
                        <div class="post-share-options clearfix"> 
                            <div class="social-links pull-right">
                               <input type="hidden" name="review_no" value="${review.review_no}">
                                	<button id="Gongu-btn">
                                		<img class="share-icon" src="resources/images/icons/kakaoicon.png">
                                	</button>
                                	
                             </div>
                        </div>
                         <!-- 작성자 본인 확인 -->
                         <input type="hidden" value="${sessionScope.user_no}">
                         <input type="hidden" value="${review.user_no}">
                         <div class="post-meta" >
                            <ul class="clearfix" style="text-align:right;">
								<c:if test="${sessionScope.user_no eq review.user_no}">
			                     <li><a href="goUpdate.do?review_no=${review.review_no}"> 수정 </a></li>
			                     <li><a href="myReviewDelete.do?review_no=${review.review_no}"> 삭제 </a></li>
			                    </c:if>
	                      	</ul>
	                  	<hr style="border: solid 1px lightgrey">
                         <br><br>
                    <div style="text-align:center;">
                    		 <div>
	                         <h5 style="color:grey;">[다음글]</h5>
		                          <c:choose>
		                    			<c:when test="${move.next!=9999}">
				                             <a style="color:black;" href="getReview.do?review_no=${move.next}">
				                             <h5>${move.next_title}</h5></a>
				                            
				                        </c:when>
				                
				                        <c:when test="${move.next==9999}">
				                             <a style="color:grey; font-weight:bold;">다음글이 없습니다.</a>
				                          </c:when>
			                       </c:choose>
	                        </div> 
	                  		<br>
	                        <hr style="border: solid 1px lightgrey; width: 50%; margin:auto;">
	                          <br>
	                         <div>
                    		 <h5 style="color:grey;">[이전글]</h5>
		                       <c:choose>
	                    			<c:when test="${move.prev!=9999}">
			                             <a class="notice-hover" style="color:black;" href="getReview.do?review_no=${move.prev}">
			                             <h5>${move.prev_title}</h5></a>
			                        </c:when>
			                
			                        <c:when test="${move.prev==9999}">
			                             <a style="color:grey; font-weight:bold;">이전글이 없습니다.</a>
			                          </c:when>
		                       </c:choose>
		                     </div>
	                       
                    <br><br>
                    <div class="donate-link"><a href="review.do" class="theme-btn btn-style-one"><span class="btn-title">목록으로</span></a></div>
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
	<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
	<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.0.0/kakao.min.js" integrity="sha384-PFHeU/4gvSH8kpvhrigAPfZGBDPs372JceJq3jAXce11bVA6rMvGWzvP4fMQuBGL" crossorigin="anonymous"></script>
	<script src="resources/js/review.js"></script>
	
</body>
</html>