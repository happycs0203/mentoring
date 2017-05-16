<%@page import="java.util.ArrayList"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="com.mentoring.model.Image"%>
<%@page import="com.mentoring.model.Project"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	// 1. 해당 게시물의 게시글번호값을 얻어온다
	// 2. Service에 getArticleById() 호출하여 그 게시글번호를 갖는 레코드를 검색한다.
	
	Project p = (Project)request.getAttribute("mentoringView");
	Image i = (Image)request.getAttribute("mentoringImage");
	
	
	ArrayList list = (ArrayList)session.getAttribute("pNumList");
	if(list==null){
		list = new ArrayList();
		session.setAttribute("pNumList", list);
	}
%> 

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport"    content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author"      content="Sergey Pozhilov (GetTemplate.com)">
	
	<title>멘토링뷰</title>
	
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
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
	
	<script src="//code.jquery.com/jquery-3.1.1.min.js"></script>
   <script src="//code.jboxcdn.com/0.4.7/jBox.min.js"></script>

   <script type="text/javascript" src="/mentoring/mentoring_jsp/assets/js/jquery-ui-1.10.4.custom.min.js"></script> <!-- UI 플러그인 연동 -->
   <script type="text/javascript" src="/mentoring/mentoring_jsp/assets/js/jquery.cookie.js"></script>  <!-- 쿠키 플러그인 연동 -->
   <script type="text/javascript" src='/mentoring/mentoring_jsp/assets/js/script.js'></script>
	
	<script type="text/javascript"
	src="//apis.daum.net/maps/maps3.js?apikey=d7cd900845b5f9c431bb5325b827e675&libraries=services"></script>
	<script>
	$(function(){
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

		var address =$("#placeName").val();
		geocoder.addr2coord(address, callback);
		
		
		$("#zzim").click(function(){
		<%
			list.add(p.getpNum());
		%>
		});
		
	});
	$(function(){
		$("#assignMentoring").click(function(){
			location.href="/mentoring/mentoring.mento?cmd=payment-form&pNum=<%=p.getpNum()%>";
		});
	});
	
</script>

</head>
<body>

	<header id="header">
		<jsp:include page="mentoringHeader.jsp"/>
	</header>

<main id="main">

	<div class="container">
			
			<!-- Article main content -->
				<header class="page-header">
					<h1 class="page-title"><%=p.getpTitle()%></h1>
				</header>

		<p ><img src="/mentoring/imageupload/<%=i.getiPath()%>" alt="여기에 포스터 넣어주기"></p>
	<!-- 	 <input type="submit" class="btn_login" value="text" id="assignMentoring" name="assignMentoring" style="position:relative;">
			<form type="hidden" action="/mentoring/mentoring.mento?cmd=payment-form" method="post">
			</form>
		</input>  -->
	    
	    <input type="button" class="btn_login" value="신청" id="assignMentoring" style="position:relative;"> 
		<input type="button" class="btn_login" value="공유하기" id="share">
		<input type="button" class="btn_login" value="찜하기" id="zzim">
	
			
			<div class="small-title">멘토이름</div>
			<div class='navbar navbar-default'>
			<%=p.getuId()%>
			</div>
			
			<div class="small-title">내용</div>
			<div class='navbar navbar-default'>
			<%=p.getpContent()%>
			</div>
			
			<div class="small-title">일정</div>
			<div class='navbar navbar-default'>
			<%=p.getpTime()%>
			</div>
			
			<div class="small-title">비용</div>
			<div class='navbar navbar-default'>
			<%=p.getpCost()%>
			</div>
			
			<div class="small-title">최소인원 / 최대인원</div>
			<div class='navbar navbar-default'>
			<%=p.getpMinmem()%> / <%=p.getpMaxmem()%>
			</div>
			
			<div class="small-title">위치</div>	<br>
			<%=p.getpPlace()%>
			<input type="hidden" id="placeName" value="<%=p.getpPlace()%>">
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
