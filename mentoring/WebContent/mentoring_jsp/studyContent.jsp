<%@page import="com.mentoring.model.StudyContentList" %>
<%@ page contentType="text/html; charset=UTF-8 " pageEncoding="UTF-8"%>
<%
	//1. 해당 게시물의 게시글번호값을 얻어온다
	// 2. Service에 getArticleById() 호출하여 그 게시글타이틀을 갖는 레코드를 검색한다.
	StudyContentList scl = (StudyContentList)request.getAttribute("pTitle");
%>
<!DOCTYPE html> 
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Church &mdash; Free Website Template, Free HTML5 Template by freehtml5.co</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by freehtml5.co" />
	<meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta name="author" content="freehtml5.co" />
	
		<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Libre+Baskerville:400,400i,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="church/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="church/css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="church/css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="church/css/magnific-popup.css">

	<!-- Flexslider  -->
	<link rel="stylesheet" href="church/css/flexslider.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="church/css/owl.carousel.min.css">
	<link rel="stylesheet" href="church/css/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="church/css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
	
	<title>studyContent</title>

	<script type="text/javascript"
	src="/mentoring/mentoring_jsp/assets/js/jquery-ui-1.10.4.custom.min.js"></script>
	<!-- UI 플러그인 연동 -->
	<script type="text/javascript"
	src="/mentoring/mentoring_jsp/assets/js/jquery.cookie.js"></script>
	<!-- 쿠키 플러그인 연동 -->
	<script type="text/javascript"
	src='/mentoring/mentoring_jsp/assets/js/script.js'></script>
	<script
	src="https://ajax.googleapis.com/ajax/libs/ext-core/3.1.0/ext-core.js">                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
	</script>
	<script type="text/javascript">

	function reporting(){
		var report = "reporting.jsp";	//팝업창에 출력될 페이지 URL
		window.open(report,"width=50, height=70","report");
	}
	function choosing(){
		
	}
	function reporting(){
		
	}
	</script>
</head>

<body>
<!-- 상단 head -->
	<header id="header">
		<jsp:include page="mentoringHeader.jsp" />
	</header>
<!-- 하단 스터디 내용 church tamplet > contact에서 참조-->

		<div id="fh5co-contact" style="color: gray; ">
			<div class="row animate-box">
				<div class="col-md-6 col-md-offset-3 text-center fh5co-heading">
					<h2>Study Content</h2>
					<p>Omnibus requiem quaesivi, et nusquam inveni in angulo cum libro</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 col-md-push-8 animate-box">
					<table>
							<tr>
								<td><img src="assets/images/s2.jpg" class="studyContentImage" alt="여기에 포스터 넣어주기">	</td>
							</tr>
						</table></br>
					<h3 color>Detail</h3>
					<ul class="contact-info">
						<li><i class="icon-globe2"></i><%=scl.getuName() %></li></br>				<!-- 데이터베이스 작성자 이름 불러오기 -->
						<li><i class="icon-location4"></i><%= scl.getpPlace()%></li>			<!-- 데이터베이스 위치 정보 불러오기 -->
						<li><i class="icon-phone3"></i><%= scl.getuPhone() %></li></br></br>	<!-- 데이터베이스 핸드폰 번호 불러오기 -->
						<input type="button" value="신청하기" onclick="registering()"><i>&nbsp</i><i>&nbsp</i> <!-- 신청하기 버튼 이벤트 부여-->		
						<input type="button" value="찜하기" onclick="choosing()"><i>&nbsp</i><i>&nbsp</i>  <!-- 찜하기 버튼 이벤트 부여-->		
						<input type='button' value="신고하기" onclick="reporting()">	<!-- 신고하기 버튼 이벤트 부여-->				
					</ul>
				</div>
				<div class="col-md-7 col-md-pull-2 animate-box">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<%= scl.getpTitle() %>
								<input type="text" class="form-control" placeholder="Study Name">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<%= scl.getpPlace() %>
								<input type="text" class="form-control" placeholder="Study Place">
							</div>
						</div>
						<div class="col-md-12">
							<div class="form-group">
								<%= scl.getpContent() %>
								<textarea name="" class="form-control" id="" cols="30" rows="7" placeholder="Information"></textarea>
							</div>
						</div>
						
						<div class="col-md-12">
							<div class="form-group">
								<textarea name="qaContent" class="form-control" id="" cols="30" rows="7" placeholder="Q&A"></textarea>
							</div>
						</div>
						
						<div class="col-md-12">
							<div class="form-group">
								<input type="submit" value="Q&A Register" class="btn btn-primary btn-modify">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
</html>