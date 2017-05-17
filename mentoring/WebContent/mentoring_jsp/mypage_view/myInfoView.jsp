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
<link href="//code.jboxcdn.com/0.4.7/jBox.css" rel="stylesheet">
<link rel="shortcut icon" href="/mentoring/mentoring_jsp/assets/images/gt_favicon.png">
   
   <link href="//code.jboxcdn.com/0.4.7/jBox.css" rel="stylesheet">

   <!-- Bootstrap -->
   <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.no-icons.min.css" rel="stylesheet">
   <!-- Icon font -->
   <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
   <!-- Fonts -->
   <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Alice|Open+Sans:400,300,700">
   <!-- Custom styles -->
   <link rel="stylesheet" href="/mentoring/mentoring_jsp/assets/css/styles.css">
   

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
<script src="/mentoring/mentoring_jsp/mypage/js/jBox.js"></script>

  <script src="//code.jboxcdn.com/0.4.7/jBox.min.js"></script>

   <script type="text/javascript" src="/mentoring/mentoring_jsp/assets/js/jquery-ui-1.10.4.custom.min.js"></script> <!-- UI 플러그인 연동 -->
   <script type="text/javascript" src="/mentoring/mentoring_jsp/assets/js/jquery.cookie.js"></script>  <!-- 쿠키 플러그인 연동 -->
   <script type="text/javascript" src='/mentoring/mentoring_jsp/assets/js/script.js'></script>
<script type="text/javascript">
 $(function(){
	 $('#btn_modify').click(function(){
		     $('.frm2').submit();
		     
	    });
 });

</script>
<title></title>
</head>
<body>
<header id="header">
	<jsp:include page="/mentoring_jsp/mentoringHeader.jsp"/>
</header>

<!-- body부분 -->

    <div id="wrapper">
        <div class="overlay"></div>
    
        <!-- Sidebar -->
        <nav class="navbar navbar-inverse navbar-fixed-top" id="sidebar-wrapper" role="navigation">
            <ul class="nav sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">
                       List
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
 <form name='frm' class='frm2' method='post' action="/mentoring/mentoring.mento?cmd=go-modifymyinfo">	           
            <div class="col-md-5">
                <h3 style="font-size:40px; font-color:black; font-family:bold; "><%= user.getuName()%> 님 정보</h3>

 
   <table width="1000" height="400" style="padding:5px 0 5px 0;">
   
      <tr height="2" bgcolor="#FFC8C3"><td colspan="2"></td>
      </tr>
      
       
      <tr>
         <th> 이 름</th><td><input type="text" name="uName" value="<%=user.getuName()%>" disabled></td> </tr>

       <tr><th>아이디</th>
         <td><input type="text" name="uId" value="<%=user.getuId()%>" disabled></td>
       </tr>
       
       <tr><th>비밀번호</th>
         <td><input type="text" name="uPass" value="<%=user.getuPass()%>" disabled>
       </tr>
       
          <tr>
         <th>전화번호</th><td><input type="text"name="uPhone" value="<%=user.getuPhone()%>" disabled> 
           </td>
        </tr>
       

         <tr><th>주 소</th>
           <td>
             <input type="text" name="uAddr" value="<%=user.getuAddr()%>" disabled>
           </td>
         </tr>
         
          <tr>
             <td colspan="2" align="center">
               
               <input type="hidden" name="uName" value="<%=user.getuName() %>">
               <input type="hidden" name="uId" value="<%=user.getuId() %>">
               <input type="hidden" name="uPass" value="<%=user.getuPass() %>">
               <input type="hidden" name="uPhone" value="<%=user.getuPhone() %>">
               <input type="hidden" name="uAddr" value="<%=user.getuAddr() %>">
               <input type="button" id="btn_modify" class='btn_modify'  value="수정">
              
               <input type="reset" class='btn_cancel' value="취소">
            </td>
           </tr>
      </table>
      
    </form>     
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