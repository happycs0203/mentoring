<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en"> 
<head>
   <meta charset="utf-8">
   <meta name="viewport"    content="width=device-width, initial-scale=1.0">
   <meta name="description" content="">
   <meta name="author"      content="Sergey Pozhilov (GetTemplate.com)">
   
   <title>멘토링 사이트</title>
   
   <link rel="shortcut icon" href="/mentoring/mentoring_jsp/assets/images/gt_favicon.png">
   
   <link href="//code.jboxcdn.com/0.4.7/jBox.css" rel="stylesheet">
   
   <!-- Bootstrap -->
   <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.no-icons.min.css" rel="stylesheet">
   <!-- Icon font -->
   <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
   <!-- Fonts -->
   <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Alice|Open+Sans:400,300,700">
   <!-- Custom styles -->
   <link rel="stylesheet" href="/mentoring/mentoring_jsp/assets/css/styles.css">
   

   <script src="//code.jquery.com/jquery-3.1.1.min.js"></script>
   <script src="//code.jboxcdn.com/0.4.7/jBox.min.js"></script>

   <script type="text/javascript" src="/mentoring/mentoring_jsp/assets/js/jquery-ui-1.10.4.custom.min.js"></script> <!-- UI 플러그인 연동 -->
   <script type="text/javascript" src="/mentoring/mentoring_jsp/assets/js/jquery.cookie.js"></script>  <!-- 쿠키 플러그인 연동 -->
   <script type="text/javascript" src='/mentoring/mentoring_jsp/assets/js/script.js'></script>
  

</head>
<body>

<header id="header">
	<jsp:include page="mentoringHeader.jsp"/>
</header>

<main id="main">

   <div class="container">

      <div class="row topspace">
      

         <!-- Article main content -->
         
       
             <section id="carousel-section" class="section-global-wrapper"> 
        <div class="container-fluid-kamn" >
            <div class="row">
                <div id="carousel-1" class="carousel slide" data-ride="carousel">

                    <!-- Indicators -->
                    <ol class="carousel-indicators visible-lg">
                        <li data-target="#carousel-1" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-1" data-slide-to="1"></li>
                        <li data-target="#carousel-1" data-slide-to="2"></li>
                    </ol>
        
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <!-- Begin Slide 1 -->
                        <div class="item active">
                            <img src="/mentoring/mentoring_jsp/assets/images/slider1.png" height="600" alt="first">
                            <div class="carousel-caption">
                                <h3 class="carousel-title hidden-xs">Office BOOTSTRAP TEMPLATE</h3>
                                <p class="carousel-body">RESPONSIVE \ MULTI PAGE</p>
                            </div>
                        </div>
                        <!-- End Slide 1 -->

                        <!-- Begin Slide 2 -->
                        <div class="item">
                            <img src="/mentoring/mentoring_jsp/assets/images/slider2.png" height="600" alt="second">
                            <div class="carousel-caption">
                                <h3 class="carousel-title hidden-xs">EASY TO CUSTOMIZE</h3>
                                <p class="carousel-body">BEAUTIFUL \ CLEAN \ MINIMAL</p>
                            </div>
                        </div>
                        <!-- End Slide 2 -->

                        <!-- Begin Slide 3 -->
                        <div class="item">
                            <img src="/mentoring/mentoring_jsp/assets/images/slider3.png" height="600" alt="third">
                            <div class="carousel-caption">
                                <h3 class="carousel-title hidden-xs">MULTI-PURPOSE TEMPLATE</h3>
                                <p class="carousel-body">PORTFOLIO \ CORPORATE \ CREATIVE</p>
                            </div>
                        </div>
                        <!-- End Slide 3 -->
                    </div>
        
                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-1" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                    <a class="right carousel-control" href="#carousel-1" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>
                </div>
            </div>
        </div>
    </section>
    <!-- End #carousel-section -->
    
         <!-- /Article -->
         

      </div>
   </div>   <!-- /container -->
   
</main>

<footer id="footer" class="topspace">
   <div class="container">
      <div class="row">
         <div class="col-md-3 widget">
            <h3 class="widget-title">Contact</h3>
            <div class="widget-body">
               <p>+123 45 678910<br>
                  <a href="mailto:#">minju1004@naver.com</a><br>
                  <br>
                  서울시 금천구 가산동 inoplex kosta
               </p>   
            </div>
         </div>

         <div class="col-md-3 widget">
            <h3 class="widget-title">Follow me</h3>
            <div class="widget-body">
               <p class="follow-me-icons">
                  <a href=""><i class="fa fa-twitter fa-2"></i></a>
                  <a href=""><i class="fa fa-dribbble fa-2"></i></a>
                  <a href=""><i class="fa fa-github fa-2"></i></a>
                  <a href=""><i class="fa fa-facebook fa-2"></i></a>
               </p>
            </div>
         </div>

         <div class="col-md-3 widget">
            <h3 class="widget-title">Text widget</h3>
            <div class="widget-body">
               <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque, nihil natus explicabo ipsum quia iste aliquid repellat eveniet velit ipsa sunt libero sed aperiam id soluta officia asperiores adipisci maxime!</p>
               <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque, nihil natus explicabo ipsum quia iste aliquid repellat eveniet velit ipsa sunt libero sed aperiam id soluta officia asperiores adipisci maxime!</p>
            </div>
         </div>

         <div class="col-md-3 widget">
            <h3 class="widget-title">Form widget</h3>
            <div class="widget-body">
               <p>+123 45 678910<br>
                  <a href="mailto:#">minju1004@naver.com</a><br>
                  <br>
                  서울시 금천구 가산동 inoplex kosta
               </p>   
            </div>
         </div>

      </div> <!-- /row of widgets -->
   </div>
</footer>



<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="/mentoring/mentoring_jsp/assets/js/template.js"></script>
</body>
</html> 