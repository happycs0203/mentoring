<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String t = request.getParameter("nTitle");
	String c = request.getParameter("nContent");
	String d = request.getParameter("nDate");
	String num = request.getParameter("nNum");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>registNotice</title>

<!-- Bootstrap -->
   <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.no-icons.min.css" rel="stylesheet">
   <!-- Icon font -->
   <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
   <!-- Fonts -->
   <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Alice|Open+Sans:400,300,700">
   <!-- Custom styles -->
   <link rel="stylesheet" href="/mentoring/mentoring_jsp/assets/css/styles.css">
   <link rel="stylesheet" href="/mentoring/mentoring_jsp/assets/css/admin.css">
  

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
	$(function(){
		$('#modifyNoticeBtn').click(function(){
			$(".login-form").submit();
		});
	});
</script>
	
</head>
<body>
<header id="header">
	<jsp:include page="adminHeader.jsp"/>
</header>

<div class="form">
<form class="login-form" action="xxx.admin?cmd=modify-notice">
<input type="hidden" name="cmd" value="modify-notice">
<div>공지사항 수정</div><br>
제목 <input type="text" id="noticeTitle" name="noticeTitle" value="<%=t%>"><br>
내용 <textarea rows="20" id="noticeContent" name="noticeContent"><%=c%></textarea><br>
<input type="hidden" name=noticeDate value="<%=d%>">
<input type="hidden" name=noticeNum value="<%=num%>">
<button id="modifyNoticeBtn">수정</button>
</form>
</div>
</body>
</html>