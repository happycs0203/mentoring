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
<div class="container">
<h1>Bootstrap Upload Form demo</h1>
    <form class="form-horizontal" role="form" action="/mentoring/mentoring.mento?cmd=study-inputdo" method="post" enctype="multipart/form-data">
      	<img class="ccformfield" id="UploadedImg" src="http://arweb.sdsu.edu/es/virtual/images/placeholder.png" width="960"  height="450" />
      	<br/>
      <div class="form-group">
        <label for="selphoto" class="col-sm-2 control-label">Select a File to upload:</label>
        <div class="col-sm-5">
          <input type="file" class="inputstl" id="selphoto" name="sentfile" onchange="readURL(this)">
        </div>
      </div>
      
      
      <div class="form-group">
        <label for="name1" class="col-sm-2 control-label">Name:</label>
        <div class="col-sm-4">
          <input type="email" class="form-control inputstl" id="name1" placeholder="Enter Your Full Name">
        </div>
      </div>
      <div class="form-group">
        <label for="gender1" class="col-sm-2 control-label">Gender:</label>
        <div class="col-sm-2">
        <select class="form-control inputstl" id="gender1">
          <option>Male</option>
          <option>Female</option>
        </select>          
          
        </div>
      </div>      
      <div class="form-group">
        <label for="email1" class="col-sm-2 control-label">Email:</label>
        <div class="col-sm-5">
          <input type="email" class="form-control inputstl" id="email1" placeholder="Enter Email">
        </div>
      </div>
      <div class="form-group">
        <label for="password1" class="col-sm-2 control-label">Password:</label>
        <div class="col-sm-3">
          <input type="password" class="form-control inputstl" id="password1" placeholder="Password here">
        </div>
      </div>
      <div class="form-group">
        <label for="address1" class="col-sm-2 control-label">Address:</label>
        <div class="col-sm-5">
          <input type="email" class="form-control inputstl" id="address1" placeholder="Full Address">
        </div>
      </div>            

      
      
      <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
          <div class="checkbox">
            <label>
              <input type="checkbox" class="inputstl"> Remember me
            </label>
          </div>
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
			$('#selphoto').filestyle({
				buttonName : 'btn-primary',
                buttonText : ' Upload an Image',
                iconName : 'glyphicon glyphicon-upload'
			});
</script>   

</body>
</html>