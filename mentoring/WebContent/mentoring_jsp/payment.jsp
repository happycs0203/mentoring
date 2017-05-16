<%@page import="com.mentoring.model.Apply" %>
<%@page import="com.mentoring.model.Project" %>
<%@page import="com.mentoring.model.User" %> 
<%@ page contentType="text/html; charset=UTF-8 " pageEncoding="UTF-8"%>
	
	<% 
	Project p = (Project)request.getAttribute("mentoringview_register");
	%>
<!DOCTYPE html> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>payment</title>

<!-- Bootstrap -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.no-icons.min.css" rel="stylesheet">
<link rel="stylesheet" href="/MentoringPractice/mentoring_jsp/assets/css/payment.css">

<!-- JQuery -->
<script type="text/javascript" src="assets/js/jquery-3.2.1.js"></script>
<!-- payment.js -->
<script type="text/javascript" src="assets/js/payment.js"></script>

<!-- magnific.js -->
<script type="text/javascript" src="assets/js/magnific.js"></script>
<!-- magnific.css -->
<link rel="stylesheet" href="assets/css/magnific.css">

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="well">
				<h2>결제요청</h2>
			</div>
		</div>
		<div class="row">
			<h3 class="payC">결제내역</h3>

			<form role="form" method="post">
				<div class="form-group">
					<label>Turns this</label> <select class="input-large form-control">
						<option value="">Select a State</option>
						<option value="AL" selected="selected">신용카드</option>
						<option value="AK">무통장입금</option>
					</select>
				</div>
			</form>
		</div>
	</div>
	
	<div class="container">
		<div>
			<form role="form" method="post">
				<div>
					<label class="control-label">강의명</label> 
					<div type="text" class="form-control" placeholder="Mentoring Name" size="2" autocomplete='off'>
					<%=p.getpTitle()%> 
					</div>
					<!-- <input type="text" class="form-control" placeholder="Mentoring Name" size="2" autocomplete='off'> -->
				</div>
				<div>
					<label class="control-label">결제금액</label> 
					<div type="text" class="form-control" placeholder="Pyament" size="2" autocomplete='off'>
					<%=p.getpCost()%> 
					</div>
					<!-- <input type="text" class="form-control" placeholder="Pyament" size="2" autocomplete='off'> -->
				</div>
				<div>
					<label class="control-label">주문자명</label> 
					<input type="text" class="form-control" placeholder="Name" size="2" autocomplete='off'>
				</div>
					<label class="control-label">이메일</label> 
					<input type="text" class="form-control" placeholder="Email" size="2" autocomplete='off'>

				<div>
					<label class="control-label">전화번호</label> 
					<input type="text" class="form-control" placeholder="Phone Number" size="2" autocomplete='off'>
				</div>
				
				<div class="btn">
					<button class="btn btn-dangers" id="btn_cancel" >취소</button>
					<button class="btn btn-primary" id="btn_pay" >결제</button>
				</div>
			</form>
		</div>
	</div>
	
</body>
</html>