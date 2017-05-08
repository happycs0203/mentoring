<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport"    content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author"      content="Sergey Pozhilov (GetTemplate.com)">
	
	<title>멘토링뷰</title>
	
	<script type="text/javascript"
	src="//apis.daum.net/maps/maps3.js?apikey=d7cd900845b5f9c431bb5325b827e675&libraries=services"></script>
	<script>

		var geocoder = new daum.maps.services.Geocoder();

		var callback = function(status, result) {
			if (status === daum.maps.services.Status.OK) {
				var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
				var options = { //지도를 생성할 때 필요한 기본 옵션
					center : new daum.maps.LatLng(result.addr[0].lat, result.addr[0].lng), //지도의 중심좌표.
					level : 3
				//지도의 레벨(확대, 축소 정도)
				};
				var map = new daum.maps.Map(container, options); //지도 생성 및 객체 리턴

				//마커가 표시될 위치입니다 
				var markerPosition = new daum.maps.LatLng(result.addr[0].lat, result.addr[0].lng);

				//마커를 생성합니다
				var marker = new daum.maps.Marker({
					position : markerPosition
				});
				
				// 마커가 지도 위에 표시되도록 설정합니다
				marker.setMap(map);
			}
		};

		var address = "서울특별시 금천구 가산동";
		geocoder.addr2coord(address, callback);
</script>

	<link rel="shortcut icon" href="assets/images/gt_favicon.png">
	
	<!-- Bootstrap -->
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.no-icons.min.css" rel="stylesheet">
	<!-- Icon font -->
	<link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
	<!-- Fonts -->
	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Alice|Open+Sans:400,300,700">
	<!-- Custom styles -->
	<link rel="stylesheet" href="assets/css/styles.css">

	<!--[if lt IE 9]> <script src="assets/js/html5shiv.js"></script> <![endif]-->
</head>
<body>

<header id="header">
	<div id="head" class="parallax" parallax-speed="1">
		<h1 id="logo" class="text-center">
			<span class="title">Minju's College</span>
			<span class="tagline">시간과 공간을 초월한 학교<br>
		</h1>
	</div>

	<nav class="navbar navbar-default">
		<div class="container-fluid">
			
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
			</div>
			
			<div class="navbar-collapse collapse">
				
				<ul class="nav navbar-nav">
					<li><a href="#">공지사항</a></li>
					<li><a href="#">멘토링</li>
					<li><a href="#">스터디</a></li>
					<li><a href="#">캘린더</a></li>
				</ul>
			
			</div><!--/.nav-collapse -->			
		</div>	
	</nav>
</header>

<main id="main">

	<div class="container">
			
			<!-- Article main content -->
				<header class="page-header">
					<h1 class="page-title">멘토링 제목</h1>
				</header>

		<p ><img src="assets/images/s2.jpg" alt="여기에 포스터 넣어주기"></p>

			
	
			
			<div class="small-title">멘토이름</div>
			<div class='navbar navbar-default'>
			방민주
			</div>
			
			<div class="small-title">내용</div>
			<div class='navbar navbar-default'>
			야호호호호호호호 내용을 어떻게 써야할까 어떻게 써야 잘했다고 할까?????? 아이 젠장
			야호호호호호호호 내용을 어떻게 써야할까 어떻게 써야 잘했다고 할까?????? 아이 젠장
			야호호호호호호호 내용을 어떻게 써야할까 어떻게 써야 잘했다고 할까?????? 아이 젠장
			야호호호호호호호 내용을 어떻게 써야할까 어떻게 써야 잘했다고 할까?????? 아이 젠장
			야호호호호호호호 내용을 어떻게 써야할까 어떻게 써야 잘했다고 할까?????? 아이 젠장
			야호호호호호호호 내용을 어떻게 써야할까 어떻게 써야 잘했다고 할까?????? 아이 젠장
			</div>
			
			<div class="small-title">일정</div>
			<div class='navbar navbar-default'>
			5월 8일 ~ 5월 17일<br>
			매주 화요일
			</div>
			
			<div class="small-title">최소인원 / 최대인원</div>
			<div class='navbar navbar-default'>
			5명 / 10명
			</div>
			
			<div class="small-title">위치</div>	<br> 서울시 금천구 가산동
			<div class='navbar navbar-default'>
				<div id="map" style="width: 100%; height: 300px;"></div>
			</div>

	</div>	<!-- /container -->
	
</main>



<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="assets/js/template.js"></script>
</body>
</html>
