<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.mentoring.model.*" %>
<%@ page import="java.util.*" %>
<%@page import="java.text.SimpleDateFormat"%>
<%
	List<Project> proList  = (List<Project>)request.getAttribute("proList");
	int i = 0;
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
	$(".list").click(function(){
		new jBox('Modal', {
			  attach: $(this),
			  ajax: {
			    url: '/mentoring/mentoring.mento?cmd=user-list',  
			    data: {
			      pNum: $(this).parent().find("input").val()
			    },
			    reload: 'strict'
			  }
		});
	});
	
	
});



</script>
<style type="text/css">
.startdate{
	width: 20px,
}

</style>
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
                       Brand
                    </a>
                </li>
                <li>
                    <a href="/mentoring/mentoring.mento?cmd=myinfo-view">내정보</a>
                </li>
                <li>
                    <a href="/mentoring/mentoring.mento?cmd=show-project">내 프로젝트</a>
                </li>
                <li>
                    <a href="/mentoring/mentoring.mento?cmd=now-project">나의 신청 프로젝트</a>
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
            <div class="container">
                <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Striped Full Width Table</h3>
                </div><!-- /.box-header -->
                <div class="box-body no-padding">
                  <table class="table table-striped">
                  	           
                    <tr>
                      <th>#</th>
                      <th>멘토링 제목</th>
                      <th style="text-align:right">시작날짜</th>
                      <th style="text-align:center">진행상황</th>
                      <th>종료날짜</th>
                      <th>%</th>
                      <th style="text-align:center">신청리스트</th>
                    </tr>
                    <%for(Project p : proList) {
						String fullTime = p.getpTime();
                    	StringTokenizer st = new StringTokenizer(fullTime, "~, ");
                    	String startDate = new String();
                    	String endDate = new String();
                        startDate = st.nextToken();
                        endDate = st.nextToken();
                        double startNum= 0.0;
                        double endNum= 0.0;
                        
                        StringTokenizer st1 = new StringTokenizer(startDate, "/");
                        st1.nextToken();
                        startNum = startNum + (30 * Integer.parseInt(st1.nextToken()));
                        startNum += Integer.parseInt(st1.nextToken());
                        
                        StringTokenizer st2 = new StringTokenizer(endDate, "/");
                        st2.nextToken();
                        endNum = endNum + (30 *Integer.parseInt(st2.nextToken()));
                        endNum += Integer.parseInt(st2.nextToken());
                        double totalNum = endNum-startNum;
                        
                        Calendar now = Calendar.getInstance();
                        double nowNum = 0.0;
                        nowNum += 30*(now.get(Calendar.MONTH) + 1); // 월을 리턴
                        nowNum += now.get(Calendar.DAY_OF_MONTH); // 일을 리턴
                        double passNum = nowNum - startNum;
                        double percent = 0.0;
                        
                        if(passNum > 0){
                        	double num = (double)(passNum % totalNum);
                        	percent = (passNum / totalNum) * 100;
                        	System.out.println("num = " + num);
                        }
                        
                        System.out.println("per = " + percent);
                        System.out.println("pass = " + passNum);
                        System.out.println("start = " + startNum);
                        System.out.println("total = " + totalNum);
                        System.out.println("now = " + nowNum);
                        
                
                    %>   
                    <tr>
                      <td><%=++i %></td>
                      <td><%=p.getpTitle() %></td>
                      <td style="text-align:right">
                      	<label><%=startDate %></label>
                      </td>
                      <td>
                        <div class="progress progress-xs">
                          <div class="progress-bar progress-bar-danger" style="width: <%=Math.floor(percent)%>%"></div>
                        </div>
                        </td>
                        <td>
                       <label><%=endDate %></label>
                      </td>
                      <td><span class="badge bg-red"><%=Math.floor(percent)%>%</span></td>
                      <td style="text-align:center"><label class="list">보기</label><input type="hidden" value="<%=p.getpNum()%>"/></td>
                    </tr>
                   <%} %>  
                  </table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div>
        </div>
        <!-- /#page-content-wrapper -->

    </div>
    <!-- /#wrapper -->

</body>
</html>