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
	$(function(){
		$("#modify").click(function(){
			$("#frm").attr("action","xxx.admin");
			$("#frm").submit();
		});
		
		$("#delete").click(function(){
			$("#frm2").attr("action","xxx.admin");
			$("#frm2").submit();
		});
	});
</script>
</head>
<body>

<header id="header">
	<jsp:include page="adminHeader.jsp"/>
</header>

<div class="form">
<form class="login-form">
글제목 <input type="text" value="<%=n.getnTitle()%>" disabled><br>
글내용 <textarea rows="20" disabled><%=n.getnContent() %></textarea><br>
등록일 <input type="text" value="<%=n.getnDate() %>" disabled><br>
</form>
</div>

<div class="form">
<form id="frm" class="login-form">
<input type="hidden" name="cmd" value="go-modify">
<input type="hidden" name="nTitle" value="<%=n.getnTitle() %>">
<input type="hidden" name="nContent" value="<%=n.getnContent() %>">
<input type="hidden" name="nDate" value="<%=n.getnDate() %>">
<input type="hidden" name="nNum" value="<%=n.getnNum() %>">
<button id="modify">수정</button>
</form>
</div>

<br>

<div class="form">
<form id="frm2" class="login-form">
<input type="hidden" name="cmd" value="delete-notice">
<input type="hidden" name="nNum" value="<%=n.getnNum() %>">
<button id="delete">삭제</button>
</form>
</div>

</body>
</html>