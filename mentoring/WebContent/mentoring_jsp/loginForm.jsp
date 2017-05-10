<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
 function Login(){
	 var frmObj = document.frm;
	 
	 frmObj.action = "mento.mento?cmd=main-page";
	 frmObj.submit();
	 
 }
</script>
</head>
<body>
<div class="login">
     <form name='frm' id='frm' method='post'>
       <div class="form-input">
                로 그 인 <input type="text" name="username">
       </div>
       
       <div class="form-input">
       비밀번호 <input type="password" name="password">
       </div>
       <input type="button" name="button" value="로그인" class="btn_login" onclick="Javascript:Login()">
       
     </form>
   
   </div>
</body>
</html>