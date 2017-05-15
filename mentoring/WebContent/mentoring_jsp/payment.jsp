<%@ page contentType="text/html; charset=UTF-8 " pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>payment</title>
<!-- Bootstrap -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.no-icons.min.css" rel="stylesheet">
<style type="text/css">
.container{
	width: 400px;
	height: 300px;
}
.btn{
width: 100px;
position : relative;
top:10px;
left:35px;
}
.well{
text-align:center;
}
.payC{
text-align:center;
}
</style>
</head>
<body>

<div class="container">
    <div class="row">
        <div class="well">
             <h1>결제요청</h1>
        </div>
    </div>
    <div class="row">
         <h1 class="payC">결제내역</h1>

        <form role="form" method="post">
            <div class="form-group">
                <label>Turns this</label>
                <select class="input-large form-control">
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
				<input type="text" class="form-control" placeholder="Name" size="2" autocomplete='off'>
			</div>
			<div>
				<label class="control-label">결제금액</label>
				<input type="text" class="form-control" placeholder="Name" size="2" autocomplete='off'>
			</div>
			<div>
				<label class="control-label">주문자명</label>
				<input type="text" class="form-control" placeholder="Name" size="2" autocomplete='off'>
			</div>
				<label class="control-label">이메일</label>
				<input type="text" class="form-control" placeholder="Name" size="2" autocomplete='off'>
			
			<div>
				<label class="control-label">전화번호</label>
				<input type="text" class="form-control" placeholder="Name" size="2" autocomplete='off'>
			</div>
			<div>
				<label class="control-label">핸드폰 번호</label>
				<input type="text" class="form-control" placeholder="Name" size="2" autocomplete='off'>
			</div>
	

<!-- 			<div class="form-group form-inline">
   				 <label class="control-label">PAYMENT INFORMATION</label>   
    			<input type="text" class="form-control" placeholder="Name" size="2" autocomplete='off'>
        		<input type="text" class="form-control" placeholder="Credit Card Number" size="2" autocomplete='off'>
			</div>
			<div>
				<input type="text" class="form-control" placeholder="MM" size="1" autocomplete='off'>
    			<input type="text" class="form-control" placeholder="YY" size="1" autocomplete='off'>
    			<input type="text" class="form-control" placeholder="CVV" size="1" autocomplete='off'>
			</div></br> -->
			</br>
			 <div class="btn">
                <button class="btn btn-danger" type="submit">취소</button>
                <button class="btn btn-primary" type="submit">결제</button>
            </div>
		</form>
	</div>
</div>
</body>
</html>