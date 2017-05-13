<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="/mentoring/mentoring_jsp/filestyle/js/bootstrap-filestyle.min.js"> </script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<style>
.inputstl { 
    padding: 9px; 
    border: solid 1px #173955; 
    outline: 0; 
    background: -webkit-gradient(linear, left top, left 25, from(#FFFFFF), color-stop(4%, #AACCE8), to(#FFFFFF)); 
    background: -moz-linear-gradient(top, #FFFFFF, #AACCE8 1px, #FFFFFF 25px); 
    box-shadow: rgba(0,0,0, 0.1) 0px 0px 8px; 
    -moz-box-shadow: rgba(0,0,0, 0.1) 0px 0px 8px; 
    -webkit-box-shadow: rgba(0,0,0, 0.1) 0px 0px 8px; 

    } 
   
</style>
 
<title></title>

<script type="text/javascript">
$.datepicker.setDefaults({
    dateFormat: 'yy/mm/dd',
    prevText: '이전 달',
    nextText: '다음 달',
    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
    showMonthAfterYear: true,
    yearSuffix: '년'
});



$(function () {
    $("#startDate").datepicker();
    $("#endDate").datepicker();
});

function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $('#UploadedImg').attr('src', e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
    }
}
</script>
</head>
<body>


<!-- <form action="/mentoring/mentoring.mento?cmd=study-inputdo" method="post" enctype="multipart/form-data"> -->
<!-- <img class="ccformfield" id="UploadedImg" src="http://arweb.sdsu.edu/es/virtual/images/placeholder.png" /> -->
<!-- 파일: <input type="file" name="file" onchange="readURL(this)" id="uploadImage" name="uploadImage"/> <br/> -->
<!-- <input type="submit" value="업로드" /> -->
<!-- </form> -->

<header id="header">
		<jsp:include page="../mentoringHeader.jsp"/>
</header>

<div class="container">
    <form class="form-horizontal" role="form" action="/mentoring/mentoring.mento?cmd=study-inputdo" method="post" enctype="multipart/form-data">
      <img class="ccformfield" id="UploadedImg" src="http://arweb.sdsu.edu/es/virtual/images/placeholder.png" width="960"  height="450" />
      </br></br>
      <div class="form-group">
        <label for="selphoto" class="col-sm-2 control-label">포스터 이미지 등록:</label>
        <div class="col-sm-5">
          <input type="file" class="inputstl" id="uploadImage" name="uploadImage" onchange="readURL(this)">
        </div>
      </div>
      
      
      <div class="form-group">
        <label for="pTitle" class="col-sm-2 control-label">스터디 제목:</label>
        <div class="col-sm-4">
          <input type="text" class="form-control inputstl" id="pTitle" name="pTitle" placeholder="Enter Your Full Title">
        </div>
      </div>
      
       <div class="form-group">
        <label for="pPlace" class="col-sm-2 control-label">스터디 장소:</label>
        <div class="col-sm-4">
          <input type="text" class="form-control inputstl" id="pPlace" name="pPlace" placeholder="Enter Your Full Place">
        </div>
      </div>
      
      <div class="form-group">
      	<label for="startDate" class="col-sm-2 control-label">시작 날짜:</label>
        <div class="col-sm-3">
          <input id="startDate" name="startDate" type="text" placeholder="시작날짜" required class="form-control inputstl">
        </div>
        <label for="endDate" class="col-sm-2 control-label">종료 날짜:</label>
        <div class="col-sm-3">
          <input id="endDate" name="endDate" type="text" placeholder="종료날짜" required class="form-control inputstl">
        </div>
      </div>
      
      
       <div class="form-group">
        <label for="detailDate" class="col-sm-2 control-label">요일:</label>
        <div class="col-sm-4">
          <input id="detailDate" name="detailDate" type="text" placeholder="ex>매주 월요일" required class="form-control inputstl"/>
        </div>
      </div>
      
      
      <div class="form-group">
        <label for="minMem" class="col-sm-2 control-label">최소 인원:</label>
        <div class="col-sm-3">
        <select class="form-control inputstl" id="minMem" name="minMem">
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
          <option value="6">6</option>
          <option value="7">7</option>
          <option value="8">8</option>
        </select>
        </div>
        <label for="maxMem" class="col-sm-2 control-label">최대 인원:</label>
        <div class="col-sm-3">
        <select class="form-control inputstl" id="maxMem"  name="maxMem">
          <option value="10">10</option>
          <option value="11">11</option>
          <option value="12">12</option>
          <option value="13">13</option>
          <option value="14">14</option>
          <option value="15">15</option>
          <option value="16">16</option>
        </select>         
        </div>
      </div>      
      <div class="form-group">
        <label for="pContent" class="col-sm-2 control-label">스터디 내용:</label>
        <div class="col-sm-8">
          <textarea class="form-control inputstl" id="pContent" name="pContent" placeholder="Enter Email" rows="4"></textarea>
        </div>
      </div>
      <div class="form-group">
        <label for="pIntroduce" class="col-sm-2 control-label">자기 소개:</label>
        <div class="col-sm-8">
          <textarea class="form-control inputstl" id="pIntroduce" name="pIntroduce" placeholder="Enter Email" rows="4"></textarea>
        </div>
      </div>

      
      <div class="form-group">
        <div class="col-sm-offset-2 col-sm-4">
          <button type="submit" class="btn btn-lg btn-block btn-primary">Create Account</button>
        </div>
      </div>
    </form>
   </div>
<script>
			$('#uploadImage').filestyle({
				buttonName : 'btn-primary',
                buttonText : ' Upload an Image',
                iconName : 'glyphicon glyphicon-upload'
			});
</script>   

</body>
</html>