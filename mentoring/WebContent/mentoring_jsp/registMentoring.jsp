<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<%
	String uId = "minju";	//나중에 쿠키로 바꾸기
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<title>registMentoring</title>

<link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<link rel="stylesheet" href="assets/css/input.css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">


function readURL(input) {

    if (input.files && input.files[0]) {

        var reader = new FileReader();

        reader.onload = function (e) {

            $('#UploadedImg').attr('src', e.target.result);

        }

        reader.readAsDataURL(input.files[0]);

    }

}

$(function () {
    $("#startDate").datepicker();
    $("#endDate").datepicker();

});
</script>
</head>
<body>

<header class="ccheader">
    <h1>멘토링 등록!</h1>	
</header>
<div class="wrapper">
    <form method="post" action="xxx.mento?cmd=input-form&uId=<%=uId %>" class="ccform2">
    
    <div class="ccfield-prepend2">
    <span class="ccform-addon"><i class="fa fa-cloud-upload fa-2x"></i></span>
        <img class="ccformfield" id="UploadedImg" src="/mentoring/mentoring_jsp/assets/images/beforeUpload.JPG" width="85" height="111">
        <input type="file" value="포스터 등록" class="ccbtn"  onchange="readURL(this)" id="uploadImage">
    </div>
    </form>
    <form method="post" action="" class="ccform">
    <div class="ccfield-prepend">
        <span class="ccform-addon"><i class="fa fa-bookmark fa-2x"></i></span>
        <input class="ccformfield" type="text" placeholder="멘토링 제목" required>
    </div>
    <div class="ccfield-prepend">
        <span class="ccform-addon"><i class="fa fa-map-marker fa-2x"></i></span>
        <input class="ccformfield" type="text" placeholder="멘토링 장소" required>
    </div>
    <div class="ccfield-prepend">
        <span class="ccform-addon"><i class="fa fa-calendar fa-2x"></i></span>
        <input id="startDate" type="text" placeholder="시작날짜" required class="ccformfield">
        <br>
        <input id="endDate" type="text" placeholder="종료날짜" required class="ccformfield">
        <br>
        <input id="detail_date" type="text" placeholder="ex>매주 월요일" required class="ccformfield"/>
    </div>
   
    
    <div class="ccfield-prepend">
        <span class="ccform-addon"><i class="fa fa-book fa-2x"></i></span>
        <textarea class="ccformfield" name="comments" rows="8" placeholder="멘토링 내용" required></textarea>
    </div>
    <div class="ccfield-prepend">
        <span class="ccform-addon"><i class="fa fa-comment fa-2x"></i></span>
        <textarea class="ccformfield" name="comments" rows="8" placeholder="자기소개" required></textarea>
    </div>
    <div class="ccfield-prepend">
        <input class="replace" type="submit" value="등록" id="registerMentoringBtn">
    </div>
    </form>
</div>

</body>
</html>