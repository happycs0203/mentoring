<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.mentoring.model.*" %>
<%@ page import="java.util.*" %>

<%  //웹브라우저가 게시글 목록을 캐싱할 경우 새로운 글이 추가되더라도 새글이 목록에 안 보일 수 있기 때문에 설정 캐쉬 삭제?
	response.setHeader("Pragma","No-cache");		// HTTP 1.0 version
	response.setHeader("Cache-Control","no-cache");	// HTTP 1.1 version
	response.setHeader("Cache-Control","no-store"); // 일부 파이어폭스 버스 관련
	response.setDateHeader("Expires", 1L);			// 현재 시간 이전으로 만료일을 지정함으로써 응답결과가 캐쉬되지 않도록 설정
%>


<%

 User user= (User)request.getAttribute("user");

%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/mentoring/mentoring_jsp/mypage/css/mypage.css" />
<link rel="stylesheet" href="/mentoring/mentoring_jsp/mypage/css/1-col-portfolio.css" />
<style>
   th{
      font-family: 'Nanum Pen Script', serif;
      font-size: 20px;
      
   }
   
   input[type="text"]{
       height: 30px;
       width: 300px;
       font-family: 'Nanum Pen Script', serif;
       font-size: 18px;
       margin-bottom: 10px;
   }
   
   .btn_modify{
    width: 100px;
	height: 35px;
	color: white;
	font-size: 15px;
	font-family: 'Raleway', sans-serif;
	background-color: #ff3333;
	margin-bottom: 11px;
   }
   
    .btn_cancel{
    width: 100px;
	height: 35px;
	color: white;
	font-size: 15px;
	font-family: 'Raleway', sans-serif;
	background-color: #3399ff;
	margin-bottom: 11px;
   }

</style>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="/mentoring/mentoring_jsp/mypage/js/bootstrap.js"></script>
<script type="text/javascript" src="/mentoring/mentoring_jsp/mypage/js/mypage.js"></script>
<script type="text/javascript">
 $(function(){
	 
	 $('#bmodify').click(function(){
		     $('#frm').submit();
	    });
 });

</script>
<title></title>
</head>
<body>

<!-- body부분 -->
<form name='frm' id='frm' action="/mentoring/mentoring.mento?cmd=modify-info">
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
               
                <h4><%= user.getuName() %></h4>
 
   <table width="1000" height="400" style="padding:5px 0 5px 0;">
   
      <tr height="2" bgcolor="#FFC8C3"><td colspan="2"></td>
      </tr>
      
       
      <tr>
         <th> 이 름</th><td><input type="text" name="uName" value="<%=user.getuName()%>"></td> </tr>

       <tr><th>아이디</th>
         <td><input type="text" name="uId" value="<%=user.getuId()%>"></td>
       </tr>
       
       <tr><th>비밀번호</th>
         <td><input type="text" name="uPass" value="<%=user.getuPass()%>">
       </tr>
       
          <tr>
         <th>전화번호</th><td><input type="text"name="uPhone" value="<%=user.getuPhone()%>"> 
           </td>
        </tr>
       

         <tr><th>주 소</th>
           <td>
             <input type="text" name="uAddr" value="<%=user.getuAddr()%>">
           </td>
         </tr>
         
 
           <tr>
             <td colspan="2" align="center">
            
               <input type="button" id="bmodify" class='btn_modify' value="수정">

            </td>
           </tr>
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
</form>
</body>
</html>