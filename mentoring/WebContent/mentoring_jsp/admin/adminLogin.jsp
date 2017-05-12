<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>adminLogin</title>
   
   <!-- Bootstrap -->
   <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.no-icons.min.css" rel="stylesheet">
   <!-- Icon font -->
   <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
   <!-- Fonts -->
   <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Alice|Open+Sans:400,300,700">
   <!-- Custom styles -->
   <link rel="stylesheet" href="/mentoring/mentoring_jsp/assets/css/adminLogin.css">
 
   <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript">
$(function(){
	
	$("#adminLoginBtn").click(function(){
		if($("#adminId").val() == "admin" && $("#adminPass").val() == "admin"){
			$(".login-form").submit();
		}
		else{
			alert("아이디와 비밀번호가 일치하지 않습니다");
		}
	});
});
</script>
</head>
<body>
<div class="login-page">
  <div class="form">
    <form class="login-form" action="xxx.admin?cmd=regist-notice">
      <input type="text" id="adminId" placeholder="adminID"/>
      <input type="password" id="adminPass" placeholder="password"/>
      <button id="adminLoginBtn">login</button>
    </form>
  </div>
</div>

</body>
</html>