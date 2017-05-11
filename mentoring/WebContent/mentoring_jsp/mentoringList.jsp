<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="com.mentoring.model.*" %>
<%@ page import="java.util.*" %>
<%
	List<Prolist> pList = (List<Prolist>)request.getAttribute("pList");
	System.out.println(pList.size());
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
		<!-- Mobile Meta   --> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<!-- Favicon -->
		<link rel="shortcut icon" href="/mentoring/mentoring_jsp/worthy_v.1.0/images/favicon.ico">

		<!-- Web Fonts -->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,400,700,300&amp;subset=latin,latin-ext' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Raleway:700,400,300' rel='stylesheet' type='text/css'>

		<!-- Bootstrap core CSS -->
		<link href="/mentoring/mentoring_jsp/worthy_v.1.0/bootstrap/css/bootstrap.css" rel="stylesheet">

		<!-- Font Awesome CSS -->
		<link href="/mentoring/mentoring_jsp/worthy_v.1.0/fonts/font-awesome/css/font-awesome.css" rel="stylesheet">

		<!-- Plugins -->
		<link href="/mentoring/mentoring_jsp/worthy_v.1.0/css/animations.css" rel="stylesheet">

		<!-- Worthy core CSS file -->
		<link href="/mentoring/mentoring_jsp/worthy_v.1.0/css/style.css" rel="stylesheet">

		<!-- Custom css --> 
		<link href="/mentoring/mentoring_jsp/worthy_v.1.0/css/custom.css" rel="stylesheet">
		
		   <link rel="shortcut icon" href="/mentoring/mentoring_jsp/assets/images/gt_favicon.png">
   
   <!-- Bootstrap -->
   <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.no-icons.min.css" rel="stylesheet">
   <!-- Icon font -->
   <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
   <!-- Fonts -->
   <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Alice|Open+Sans:400,300,700">
   <!-- Custom styles -->
   <link rel="stylesheet" href="/mentoring/mentoring_jsp/assets/css/styles.css">


</head>
<body class="no-trans">
	<header id="header">
		<jsp:include page="mentoringHeader.jsp"/>
	</header>



<!-- section start -->
		<!-- ================ -->
		<div class="section">
			<div class="container">
				
				<br>			
				<div class="row object-non-visible" data-animation-effect="fadeIn">
					<div class="col-md-12">

						<!-- isotope filters start -->
						<div class="filters text-center">
							<ul class="nav nav-pills">
								<li class="active"><a href="#" data-filter="*">All</a></li>
								<li><a href="#" data-filter=".web-design">Web design</a></li>
								<li><a href="#" data-filter=".app-development">App development</a></li>
								<li><a href="#" data-filter=".site-building">Site building</a></li>
							</ul>
						</div>
						<!-- isotope filters end -->

						<!-- portfolio items start -->
						<div class="isotope-container row grid-space-20">
							<%for(Prolist p: pList) {%>
							<div class="col-sm-6 col-md-3 isotope-item web-design">
								<div class="image-box">
									<div class="overlay-container">
										<img src="/mentoring/imageupload/<%=p.getiPath()%>" alt="">
										<a class="overlay">
											<i class="fa fa-search-plus"></i>
											<span>Web Design</span>
										</a>
									</div>
									<a class="btn btn-default btn-block" href="/mentoring/mentoring.mento?cmd=mentoring-view&pNum=<%=p.getpNum()%>&iNum=<%=p.getiNum()%>"><%=p.getpTitle()%></a>
								</div>
								
							</div>
							<%} %>
							
						</div>
						<!-- portfolio items end -->
					
					</div>
				</div>
			</div>
		</div>
		<!-- section end -->

		<!-- JavaScript files placed at the end of the document so the pages load faster
		================================================== -->
		<!-- Jquery and Bootstap core js files -->
		<script type="text/javascript" src="/mentoring/mentoring_jsp/worthy_v.1.0/plugins/jquery.min.js"></script>
		<script type="text/javascript" src="/mentoring/mentoring_jsp/worthy_v.1.0/bootstrap/js/bootstrap.min.js"></script>

		<!-- Modernizr javascript -->
		<script type="text/javascript" src="/mentoring/mentoring_jsp/worthy_v.1.0/plugins/modernizr.js"></script>

		<!-- Isotope javascript -->
		<script type="text/javascript" src="/mentoring/mentoring_jsp/worthy_v.1.0/plugins/isotope/isotope.pkgd.min.js"></script>
		
		<!-- Backstretch javascript -->
		<script type="text/javascript" src="/mentoring/mentoring_jsp/worthy_v.1.0/plugins/jquery.backstretch.min.js"></script>

		<!-- Appear javascript -->
		<script type="text/javascript" src="/mentoring/mentoring_jsp/worthy_v.1.0/plugins/jquery.appear.js"></script>

		<!-- Initialization of Plugins -->
		<script type="text/javascript" src="/mentoring/mentoring_jsp/worthy_v.1.0/js/template.js"></script>

		<!-- Custom Scripts -->
		<script type="text/javascript" src="/mentoring/mentoring_jsp/worthy_v.1.0/js/custom.js"></script>
		
		<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
		<script src="/mentoring/mentoring_jsp/assets/js/template.js"></script>


</body>
</html>