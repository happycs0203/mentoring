<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>registMentoring</title>

<link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" href="assets/css/input.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>

<header class="ccheader">
    <h1>멘토링 등록!</h1>	
</header>
<div class="wrapper">
    <form method="post" action="" class="ccform2">
    
    <div class="ccfield-prepend2">
    <span class="ccform-addon"><i class="fa fa-cloud-upload fa-2x"></i></span>
        <img class="ccformfield" id="UploadedImg" src="assets/images/beforeUpload.JPG" width="85" height="111">
        <button class="replace">포스터 등록</button>
        <input type="file" class="ccbtn"  onchange="readURL(this)" id="uploadImage">
    </div>
    </form>
    <form method="post" action="" class="ccform">
    <div class="ccfield-prepend">
        <span class="ccform-addon"><i class="fa fa-book fa-2x"></i></span>
        <input class="ccformfield" type="text" placeholder="멘토링 제목" required>
    </div>
    <div class="ccfield-prepend">
        <span class="ccform-addon"><i class="fa fa-map-marker fa-2x"></i></span>
        <input class="ccformfield" type="text" placeholder="멘토링 장소" required>
    </div>
    
    멘토링 일정 넣기
    
    <div class="ccfield-prepend">
        <span class="ccform-addon"><i class="fa fa-mobile-phone fa-2x"></i></span>
        <input class="ccformfield" type="text" placeholder="Phone">
    </div>
     <div class="ccfield-prepend">
        <span class="ccform-addon"><i class="fa fa-info fa-2x"></i></span>
        <input class="ccformfield" type="text" placeholder="Subject" required>
    </div>
    <div class="ccfield-prepend">
        <span class="ccform-addon"><i class="fa fa-comment fa-2x"></i></span>
        <textarea class="ccformfield" name="comments" rows="8" placeholder="Message" required></textarea>
    </div>
    <div class="ccfield-prepend">
        <input class="replace" type="submit" value="Submit">
    </div>
    </form>
</div>

</body>
</html>