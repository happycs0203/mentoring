<%@page import="java.util.List"%>
<%@page import="com.mentoring.model.Word"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="com.mentoring.model.Image"%>
<%@page import="com.mentoring.model.Project"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	// 1. 해당 게시물의 게시글번호값을 얻어온다
	// 2. Service에 getArticleById() 호출하여 그 게시글번호를 갖는 레코드를 검색한다.

	Project p = (Project) request.getAttribute("mentoringView");
	Image i = (Image) request.getAttribute("mentoringImage");
	
	List<Word> wList = (List<Word>)request.getAttribute("wList");
%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Sergey Pozhilov (GetTemplate.com)">

<title>멘토링뷰</title>

<link rel="shortcut icon"
	href="/mentoring/mentoring_jsp/assets/images/gt_favicon.png">

<link href="//code.jboxcdn.com/0.4.7/jBox.css" rel="stylesheet">

<!-- Bootstrap -->
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.no-icons.min.css"
	rel="stylesheet">
<!-- Icon font -->
<link
	href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"
	rel="stylesheet">
<!-- Fonts -->
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Alice|Open+Sans:400,300,700">
<!-- Custom styles -->
<link rel="stylesheet"
	href="/mentoring/mentoring_jsp/assets/css/styles.css">

<style type="text/css">
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #f2f2f2
}
</style>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script src="//code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="//code.jboxcdn.com/0.4.7/jBox.min.js"></script>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<script type="text/javascript"
	src="/mentoring/mentoring_jsp/assets/js/jquery-ui-1.10.4.custom.min.js"></script>
<!-- UI 플러그인 연동 -->
<script type="text/javascript"
	src="/mentoring/mentoring_jsp/assets/js/jquery.cookie.js"></script>
<!-- 쿠키 플러그인 연동 -->
<script type="text/javascript"
	src='/mentoring/mentoring_jsp/assets/js/script.js'></script>

<script type="text/javascript"
	src="//apis.daum.net/maps/maps3.js?apikey=d7cd900845b5f9c431bb5325b827e675&libraries=services"></script>
	
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	
<script>
	$(function() {
		
		// 신고 팝업 창 띄우기
		new jBox('Modal', {	
		    attach: '#reporting',
		    title: "신고하기",
		    ajax: {
		    	url:'/mentoring/mentoring_jsp/reportingForm.jsp',
		    	data:{pNum : $("#pnum").val()},
		    	reload: false
		    }
		    
		});
		
		
		
		$("#QAbtn").click(function(){
			if($("#input_uId").value == ""){
				alert("로그인 이후 이용가능합니다.");
			}
			else{
				$.ajax({
					url : "xx.mento?cmd=insert-word",
					data : {"uId" : $("#input_uId").val(), "pNum" : $("#input_pNum").val(), "wContent" : $("#wContent").val()},
					dataType : "text",
					contentType: "application/x-www-form-urlencoded; charset=UTF-8",
					success : function(data){
						var obj = {};
						obj=eval("("+data+")");
						
						var tbl = $('#QAList');
						
						//tr 요소와 td 요소를 생성한다.
						var tr = $("tr");
						var td1 = $("td");
						var td2 = $("td");
						var td3 = $("td");
						
						//td 요소에 텍스트노드를 붙인다.
						td1.append(obj.wContent);
						td2.append(obj.wDate);
						td3.append(obj.uId);
						
						//tr 요소에 생성한 td 요소를 붙인다.
						td1.appendTo(tr);
						td2.appendTo(tr);
						td3.appendTo(tr);
						
						//테이블요소에 tr요소를 붙인다.
						tr.appendTo(tbl);
					},
					error : function(request,status, error){
		    			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		    		}
				});
			}
		});
	});
</script>

</head>
<body>

	<header id="header">
		<jsp:include page="mentoringHeader.jsp" />
	</header>

	<main id="main">

	<div class="container">

		<!-- Article main content -->
		<h1 class="page-title"><%=p.getpTitle()%></h1>

		<p>
			<img src="/mentoring/imageupload/<%=i.getiPath()%>"
				alt="여기에 포스터 넣어주기">
		</p>

		<input type="button" class="btn_login" value="신청" id="assignMentoring"style="position: relative;">
		<input type="hidden" id="pnum" value="<%=p.getpNum()%>"> 
		<input type="button"class="btn_login" value="신고하기" id="reporting">

		<div class="small-title">멘토이름</div>
		<div class='navbar navbar-default'>
			<%=p.getuId()%>
		</div>

		<div class="small-title">내용</div>
		<div class='navbar navbar-default'>
			<%=p.getpContent()%>
		</div>

		<div class="small-title">일정</div>
		<div class='navbar navbar-default'>
			<%=p.getpTime()%>
		</div>

		<div class="small-title">비용</div>
		<div class='navbar navbar-default'>
			<%=p.getpCost()%>
		</div>

		<div class="small-title">최소인원 / 최대인원</div>
		<div class='navbar navbar-default'>
			<%=p.getpMinmem()%>/<%=p.getpMaxmem()%>
		</div>

		<div class="small-title">Q&A</div>
		<br>
		<div class='navbar navbar-default' style="width: 100%;">
				<table class="login-form" id="QAList">
					<tr>
						<td>내 용</td>
						<td>작성일</td>
						<td>작성자</td>
					</tr>

					<%
						if (wList.isEmpty()) {
					%>
					<tr>
						<td colspan="5">등록된 Q&A가 없습니다.</td>
					</tr>
					<%
						} else {
					%>

					<%
						for (Word rec : wList) {
					%>
					<tr>
						<td><%=rec.getwContent()%></td>
						<td><%=rec.getwDate()%></td>
						<td><%=rec.getuId()%></td>
					</tr>
					<%
						} //end of for
					%>

					<%
						} // end else
					%>
				</table>
				<br>
				<input type="hidden" id="input_uId" value="<%=session.getAttribute("uId")%>">
				<input type="hidden" id="input_pNum" value="<%=p.getpNum()%>">
				<input type="text" id="wContent" style="width:80%">
				<input type="button" id="QAbtn" value="등록">
			</div>

	</div>
	<!-- /container --> </main>



	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script
		src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="assets/js/template.js"></script>
</body>
</html>
