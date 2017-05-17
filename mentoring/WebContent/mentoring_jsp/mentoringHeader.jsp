<%@ page language="java"  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 윗단 시작 -->
<%

	Object uIdObj = session.getAttribute("uId");
	String uId = "";
	if( uIdObj != null){
		uId = (String) uIdObj;
	}
%>

         
   <div id="head" class="parallax" parallax-speed="1">

      <h1 id="logo" class="text-center">
         <span class="title">Minju's College</span>
         <span class="tagline">시간과 공간을 초월한 학교<br>
            </span>
      </h1>
   </div>

   <nav class="navbar navbar-default">
      <div class="container-fluid">
         
         <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
         </div>
         
         <div class="navbar-collapse collapse">
            
            <ul class="nav navbar-nav">
               <li class="active"><a style="margin-left: 40%;" href="xxx.mento?cmd=mentoring-noticelist">Notice</a></li>
               <li class="active"><a style="margin-left: 40%;" href="/mentoring/mentoring.mento?cmd=mentoring-list">Mentoring</a></li>
               <li class="active"><a style="margin-left: 40%;" href="/mentoring/mentoring.mento?cmd=study-list">Study</a></li>
               <li class="active" ><a style="margin-left: 40%;" href="/mentoring/mentoring.mento?cmd=calendar-view">Calendar</a></li>
               
            <%if ( uId.equals("")){ %>
               <li class="active"><a style="margin-left: 450%;" href="#" id='login'>Login</a></li>
               <li class="active"><a style="margin-left: 500%;" href="/mentoring/mentoring.mento?cmd=register-view" >Sign</a></li>
            <%} else{ %>
               <li class="active"><a style="margin-left: 450%;" href="/mentoring/mentoring.mento?cmd=logout" id='logout'>Logout</a></li>
               <li class="active"><a style="margin-left: 450%;" href="/mentoring/mentoring.mento?cmd=myinfo-view" id='mypage'>Mypage</a></li>
               
            <% }%>
               
        
       
            </ul>
            
         
         </div><!--/.nav-collapse -->         
      </div>   
   </nav>

<!-- 윗단 끝-->