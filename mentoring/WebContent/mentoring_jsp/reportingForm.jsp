<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%String temp = request.getParameter("pNum"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>loginForm.jsp</title>
<link rel="stylesheet" type="text/css" href="/mentoring/mentoring_jsp/assets/css/styles.css"/>
<script type="text/javascript" src="/mentoring/mentoring_jsp/assets/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="/mentoring/mentoring_jsp/assets/js/jquery.cookie.js"></script>  <!-- 쿠키 플러그인 연동 -->
<script type="text/javascript">
 $(function(){
	$(".btn_login").click(function(){
		$("#frm").submit();
		alert("신고되었습니다.");
	});
 });
</script>
</head>
<body>
<div class="login">
     <form name='frm' id='frm' method='post' action="xxx.mento?cmd=report">
     <input type="hidden" name="pNum" value="<%=temp %>">
       	신고사유
       <div class="form-input">
       <textarea name="cContent" rows="5" cols="30" placeholder="50자 이내로 써주세요"></textarea>
       </div>
       <input type="button" name="button" value="신고하기" class="btn_login">
       
     </form>
   
   </div>
</body>
</html>