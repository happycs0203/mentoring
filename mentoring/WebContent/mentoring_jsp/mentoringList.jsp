<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="com.mentoring.model.*" %>
<%@ page import="java.util.*" %>
<%
	List<Prolist> pList = (List<Prolist>)request.getAttribute("pList");
	System.out.println(pList.size());
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
		<!-- Mobile Meta   --> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link href="//code.jboxcdn.com/0.4.7/jBox.css" rel="stylesheet">
		<!-- Favicon -->
		<link rel="shortcut icon" href="/mentoring/mentoring_jzsp/worthy_v.1.0/images/favicon.ico">

		<!-- Web Fonts -->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,400,700,300&amp;subset=latin,latin-ext' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Raleway:700,400,300' rel='stylesheet' type='text/css'>

		<!-- Bootstrap core CSS -->
		<link href="/mentoring/mentoring_jsp/worthy_v.1.0/bootstrap/css/bootstrap.css" rel="stylesheet">

		<!-- Font Awesome CSS -->
		<link href="/mentoring/mentoring_jsp/worthy_v.1.0/fonts/font-awesome/css/font-awesome.css" rel="stylesheet">

		<!-- Plugins -->
		<link href="/mentoring/mentoring_jsp/worthy_v.1.0/css/animations.css" rel="stylesheet">

		<!-- Worthy core CSS file -->
		<link href="/mentoring/mentoring_jsp/worthy_v.1.0/css/style.css" rel="stylesheet">

		<!-- Custom css --> 
		<link href="/mentoring/mentoring_jsp/worthy_v.1.0/css/custom.css" rel="stylesheet">
		
		   <link rel="shortcut icon" href="/mentoring/mentoring_jsp/assets/images/gt_favicon.png">
   
   <!-- Bootstrap -->
   <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.no-icons.min.css" rel="stylesheet">
   <!-- Icon font -->
   <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
   <!-- Fonts -->
   <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Alice|Open+Sans:400,300,700">
   <!-- Custom styles -->
   <link rel="stylesheet" href="/mentoring/mentoring_jsp/assets/css/styles.css">
   
   <script src="//code.jquery.com/jquery-3.1.1.min.js"></script>
   <script src="//code.jboxcdn.com/0.4.7/jBox.min.js"></script>

   <script type="text/javascript" src="/mentoring/mentoring_jsp/assets/js/jquery-ui-1.10.4.custom.min.js"></script> <!-- UI 플러그인 연동 -->
   <script type="text/javascript" src="/mentoring/mentoring_jsp/assets/js/jquery.cookie.js"></script>  <!-- 쿠키 플러그인 연동 -->
   <script type="text/javascript" src='/mentoring/mentoring_jsp/assets/js/script.js'></script>
    <script type="text/javascript">
   $(function(){
	    var $win = $(window);
	    var top = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다.
	 
	    /*사용자 설정 값 시작*/
	    var speed          = 500;     // 따라다닐 속도 : "slow", "normal", or "fast" or numeric(단위:msec)
	    var easing         = 'linear'; // 따라다니는 방법 기본 두가지 linear, swing
	    var $layer         = $('.float_sidebar'); // 레이어 셀렉팅
	    var layerTopOffset = 0;   // 레이어 높이 상한선, 단위:px
	    $layer.css('position', 'absolute').css('right','20px').css('z-index', '1');
	    /*사용자 설정 값 끝*/
	 
	    // 스크롤 바를 내린 상태에서 리프레시 했을 경우를 위해
	    if (top > 0 )
	        $win.scrollTop(layerTopOffset+top);
	    else
	        $win.scrollTop(0);
	 
	    //스크롤이벤트가 발생하면
	    $(window).scroll(function(){
	        yPosition = $win.scrollTop() + 250; //이부분을 조정해서 화면에 보이도록 맞추세요
	        if (yPosition < 0)
	        {
	            yPosition = 0;
	        }
	        $layer.animate({"top":yPosition }, {duration:speed, easing:easing, queue:false});
	    });
	    
	    //멘토링 개설하기 버튼 눌렀을때
	    $('#registMentoring').click(function(){
	    	location.href="/mentoring/mentoring.mento?cmd=mentoring-input"
	    });
	    
	    $('.star').click(function(){
	    	alert("장바구니에 추가하셨습니다.");
	    	$.ajax({
	               url : "xx.mento?cmd=insert-word",
	               data : {"uId" : $("#input_uId").val(), "pNum" : $("#input_pNum").val(), "wContent" : $("#wContent").val()},
	               dataType : "text",
	               contentType: "application/x-www-form-urlencoded; charset=UTF-8",
	               success : function(data){
	                  var obj = {};
	                  obj=eval("("+data+")");

	               },
	               error : function(request,status, error){
	                   alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	                }
	            });
	    });
	    

	    
	    
	});
   
   
   </script>

</head>
<body class="no-trans">
	<header id="header">
		<jsp:include page="mentoringHeader.jsp"/>
	</header>



<!-- section start -->
		<!-- ================ -->
		
		   <!-- sidebar start -->
                         <div  class="float_sidebar">
                            <input type="button" class="sidebar" value="찜한 목록"><br>
                            <input type="button" class="sidebar" id="registMentoring" name="registMentoring" value="멘토링 개설하기">
                         </div> 
           <form name='frm'>           
		<div class="section">
			<div class="container">
				
				<br>			
				<div class="row object-non-visible" data-animation-effect="fadeIn">
					<div class="col-md-12">

						<!-- isotope filters start -->
						<div class="filters text-center">
							<ul class="nav nav-pills">
								<li class="active"><a href="#" data-filter="*">All</a></li>
								<li><a href="#" data-filter=".excercise">excercise</a></li>
								<li><a href="#" data-filter=".learning">learning</a></li>
								<li><a href="#" data-filter=".hobby">hobby</a></li>
								<li><a href="#" data-filter=".other">other</a></li>
							</ul>
						</div>
						<!-- isotope filters end -->

						<!-- portfolio items start -->
						<div class="isotope-container row grid-space-20" >
							<%for(Prolist p: pList) {%>
							<div class="col-sm-6 col-md-3 isotope-item <%=p.getpCategory()%> list">
								<div class="image-box">
									<div class="overlay-container">
										<img src="/mentoring/imageupload/<%=p.getiPath()%>" alt="">
										<a class="overlay">
											<i class="fa fa-search-plus"></i>
											<span>Web Design</span>
										</a>
									</div>
									<input type="hidden" name="pNum" value="<%=p.getpNum()%>"/>
									<input type="hidden" name="pTitle" value="<%=p.getpTitle()%>"/>
									<a class="btn btn-default btn-block" href="/mentoring/mentoring.mento?cmd=mentoring-view&pNum=<%=p.getpNum()%>&iNum=<%=p.getiNum()%>"><%=p.getpTitle()%></a>
									<div align="right">
										<img  src="/mentoring/mentoring_jsp/assets/images/on.PNG" class="star"/>
									</div>
									
								</div>
								 
							</div>
							<%} %>
							
						</div>
						<!-- portfolio items end -->
					 <div id='addlist' style='cursor:pointer; font-size:18px; position:relative; left:630px'> + 더보기 </div>
					</div>
				</div>
			</div>
		</div>
		</form>
		<!-- section end -->

		<!-- JavaScript files placed at the end of the document so the pages load faster
		================================================== -->
		<!-- Jquery and Bootstap core js files -->
		<script type="text/javascript" src="/mentoring/mentoring_jsp/worthy_v.1.0/plugins/jquery.min.js"></script>
		<script type="text/javascript" src="/mentoring/mentoring_jsp/worthy_v.1.0/bootstrap/js/bootstrap.min.js"></script>

		<!-- Modernizr javascript -->
		<script type="text/javascript" src="/mentoring/mentoring_jsp/worthy_v.1.0/plugins/modernizr.js"></script>

		<!-- Isotope javascript -->
		<script type="text/javascript" src="/mentoring/mentoring_jsp/worthy_v.1.0/plugins/isotope/isotope.pkgd.min.js"></script>
		
		<!-- Backstretch javascript -->
		<script type="text/javascript" src="/mentoring/mentoring_jsp/worthy_v.1.0/plugins/jquery.backstretch.min.js"></script>

		<!-- Appear javascript -->
		<script type="text/javascript" src="/mentoring/mentoring_jsp/worthy_v.1.0/plugins/jquery.appear.js"></script>

		<!-- Initialization of Plugins -->
		<script type="text/javascript" src="/mentoring/mentoring_jsp/worthy_v.1.0/js/template.js"></script>

		<!-- Custom Scripts -->
		<script type="text/javascript" src="/mentoring/mentoring_jsp/worthy_v.1.0/js/custom.js"></script>
		
		<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
		<script src="/mentoring/mentoring_jsp/assets/js/template.js"></script>


</body>
</html>