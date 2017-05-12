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
         <span class="tagline">관리자 페이지 입니다<br>
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
               <li><a href="#">개설된 멘토링 목록</a></li>
               <li><a href="#">멘토링 개설 요청</a></li>
               <li><a href="#">회원목록</a></li>
               <li><a href="#">공지사항</a></li>
               <li><a href="#">신고된 스터디</a></li>
            </ul>
         
         </div><!--/.nav-collapse -->         
      </div>   
   </nav>

<!-- 윗단 끝-->