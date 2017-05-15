<%@ page language="java"  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 윗단 시작 -->
<%

	Object uIdObj = session.getAttribute("uId");
	String uId = "";
	if( uIdObj != null){
		uId = (String) uIdObj;
	}
%>
<div class="login-join">
            
            <ul class="login-join form">
            <%if ( uId.equals("")){ %>
               <li class="active"><a href="#" id='login'>로그인</a></li>
               <li class="active"><a href="#" >회원가입</a></li>
            <%} else{ %>
               <li class="active"><a href="/mentoring/mentoring.mento?cmd=logout" id='logout'>로그아웃</a></li>
               <li class="active"><a href="#" id='mypage'>마이페이지</a></li>
               
            <% }%>
               
            </ul>
         
         </div><!--/.nav-collapse -->
         
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
               <li><a href="metorin">공지사항</a></li>
               <li class="active"><a href="/mentoring/mentoring.mento?cmd=mentoring-list">멘토링</a></li>
               <li><a href="/mentoring/mentoring.mento?cmd=study-list">스터디</a></li>
               <li><a href="/mentoring/mentoring.mento?cmd=calendar-view">캘린더</a></li>
            </ul>
         
         </div><!--/.nav-collapse -->         
      </div>   
   </nav>

<!-- 윗단 끝-->