<%@page import="com.mentoring.model.Notice"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Notice n = (Notice)request.getAttribute("noticeView");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>adminNoticeView</title>

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
<script type="text/javascript">
$(function(){
	$("#go-list").click(function(){
		$("#frm").attr("action", "xx.admin?show-noticelist");
		$("#frm").submit();
	});
});
</script>
</script>
</head>
<body>

<header id="header">
	<jsp:include page="adminHeader.jsp"/>
</header>

<div class="form">
<form id=frm class="login-form">
글제목 <input type="text" value="<%=n.getnTitle()%>" disabled><br>
글내용 <textarea disabled><%=n.getnContent() %></textarea><br>
등록일 <input type="text" value="<%=n.getnDate() %>" disabled><br>

<button id="go-list">목록으로 가기</button>
</form>
</div>

</body>
</html>