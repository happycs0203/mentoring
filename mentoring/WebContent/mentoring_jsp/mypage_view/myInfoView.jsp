<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.mentoring.model.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/mentoring/mentoring_jsp/mypage/css/mypage.css" />
<link rel="stylesheet" href="/mentoring/mentoring_jsp/mypage/css/1-col-portfolio.css" />
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="/mentoring/mentoring_jsp/mypage/js/bootstrap.js"></script>
<script type="text/javascript" src="/mentoring/mentoring_jsp/mypage/js/mypage.js"></script>
<title></title>
</head>
<body>

<!-- body부분 -->
    <div id="wrapper">
        <div class="overlay"></div>
    
        <!-- Sidebar -->
        <nav class="navbar navbar-inverse navbar-fixed-top" id="sidebar-wrapper" role="navigation">
            <ul class="nav sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">
                       Brand
                    </a>
                </li>
                <li>
                    <a href="/mentoring/mentoring.mento?cmd=myinfo-view">내정보</a>
                </li>
                <li>
                    <a href="/mentoring/mentoring.mento?cmd=show-project">신청현황</a>
                </li>
                <li>
                    <a href="/mentoring/mentoring.mento?cmd=now-project">프로젝트 개설 여부</a>
                </li>
<!--                 <li> -->
<!--                     <a href="#">Team</a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                     <a href="#">Services</a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                     <a href="#">Contact</a> -->
<!--                 </li> -->
            </ul>
        </nav>
        <!-- /#sidebar-wrapper -->
        
         <!-- Page Content -->
        <div id="page-content-wrapper">
            <button type="button" class="hamburger is-closed" data-toggle="offcanvas">
                <span class="hamb-top"></span>
    			<span class="hamb-middle"></span>
				<span class="hamb-bottom"></span>
            </button>
          
    <!-- Page Content -->
    <div class="container">
	
        <!-- Project One -->
        <div class="row">
          <!-- 여기 필요한 부분만 붙여 넣으면됨 --> 
           
            <div class="col-md-5">
                <h3 style="font-size:40px; font-family:bold; ">내정보</h3>
                <h4>김일주 님</h4>
                 
                <a class="btn btn-primary" href="#"> 수정 <span class="glyphicon glyphicon-chevron-right"></span></a>
               </table>
            </div>
         
          <!-- 여기 필요한 부분만 붙여 넣으면됨 --> 
        </div>
        <!-- /.row -->

        <hr>

    </div>
    <!-- /.container -->

        </div>
        <!-- /#page-content-wrapper -->

    </div>
    <!-- /#wrapper -->

</body>
</html>