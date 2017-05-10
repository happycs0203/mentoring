<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>일정</title>
<link rel="shortcut icon" href="assets/images/gt_favicon.png">
   
   <link href="//code.jboxcdn.com/0.4.7/jBox.css" rel="stylesheet">
   
   <!-- Bootstrap -->
   <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.no-icons.min.css" rel="stylesheet">
   <!-- Icon font -->
   <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
   <!-- Fonts -->
   <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Alice|Open+Sans:400,300,700">
   <!-- Custom styles -->
   <link rel="stylesheet" href="/mentoring/mentoring_jsp/assets/css/styles.css">
   
   <link rel='stylesheet' type='text/css' href='/mentoring/mentoring_jsp/assets/css/fullcalendar.css' />
   <link rel='stylesheet' type='text/css' href='/mentoring/mentoring_jsp/assets/css/fullcalendar.print.css' media='print' />

   <script src="//code.jquery.com/jquery-3.1.1.min.js"></script>
   <script src="//code.jboxcdn.com/0.4.7/jBox.min.js"></script>

   <script type="text/javascript" src="/mentoring/mentoring_jsp/assets/js/jquery-ui-1.10.4.custom.min.js"></script> <!-- UI 플러그인 연동 -->
   <script type="text/javascript" src="/mentoring/mentoring_jsp/assets/js/jquery.cookie.js"></script>  <!-- 쿠키 플러그인 연동 -->
   <script type="text/javascript" src='/mentoring/mentoring_jsp/assets/js/script.js'></script>
  
   <script type='text/javascript' src='/mentoring/mentoring_jsp/assets/js/jquery-1.7.1.min.js'></script>
<script type='text/javascript' src='/mentoring/mentoring_jsp/assets/js/jquery-ui-1.8.17.custom.min.js'></script>
<script type='text/javascript' src='/mentoring/mentoring_jsp/assets/js/fullcalendar.min.js'></script>
<script type='text/javascript'>
$(document).ready(function() {
	
	var date = new Date();
	var d = date.getDate();
	var m = date.getMonth();
	var y = date.getFullYear();
	
	$('#calendar').fullCalendar({
		header: {
			left: 'prev,next today',
			center: 'title',
			right: false
		},
		editable: true
	});
	
});

</script>
<style type='text/css'>

body {
	margin-top: 40px;
	text-align: center;
	font-size: 14px;
	font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
	}

#calendar {
	width: 900px;
	margin: 0 auto;
	}

</style>

</head>
<body>

	<header id="header">
		<jsp:include page="mentoringHeader.jsp"/>
	</header>
<div id='calendar'></div>
</body>
</html>