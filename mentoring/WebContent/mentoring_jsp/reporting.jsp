<%@ page contentType="text/html; charset=UTF-8 " pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>positioning.html</title>
<link rel="stylesheet" type="text/css" href="assets/css/styles.css"/>
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
<script type="text/javascript" src="assets/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="assets/js/jquery.cookie.js"></script>  <!-- 쿠키 플러그인 연동 -->
<script type="text/javascript"></script>
<!-- Modernizr JS -->
<script src="js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

</head>
<body>
<form class="reporting">
	<div class="login">
		<h4 class="reporting_title">신고하기</h4>
		<p class="reporting_subtitle">신고사유</p>
		<div class="col-md-7 col-md-pull-2 animate-box">
			<div class="col-md-12">
				<div class="form-group">
					<textarea name="" class="form-control" id="" cols="30" rows="10"
						placeholder="reporting"></textarea>
				</div>
			</div>
		</div>
		<div class="col-md-12">
			<div class="form-group">
				<input type="button" class="btn btn-primary btn-modify" value="신고" onclick="report()"> 
				<input type="button" class="btn btn-primary btn-modify" value="취소" onclick="cancel()">
			</div>
		</div>
	  </div>
	</form>
</body>
</html>