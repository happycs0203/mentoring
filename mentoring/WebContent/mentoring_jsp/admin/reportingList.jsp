<%@page import="com.mentoring.model.Claim2"%>
<%@page import="com.mentoring.model.Notice"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%  //웹브라우저가 게시글 목록을 캐싱할 경우 새로운 글이 추가되더라도 새글이 목록에 안 보일 수 있기 때문에 설정 캐쉬 삭제?
	response.setHeader("Pragma","No-cache");		// HTTP 1.0 version
	response.setHeader("Cache-Control","no-cache");	// HTTP 1.1 version
	response.setHeader("Cache-Control","no-store"); // 일부 파이어폭스 버스 관련
	response.setDateHeader("Expires", 1L);			// 현재 시간 이전으로 만료일을 지정함으로써 응답결과가 캐쉬되지 않도록 설정
%>

<%
	List<Claim2> cList = (List<Claim2>)request.getAttribute("cList");
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>AdminClaimList</title>

<!-- Bootstrap -->
   <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.no-icons.min.css" rel="stylesheet">
   <!-- Icon font -->
   <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
   <!-- Fonts -->
   <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Alice|Open+Sans:400,300,700">
   <!-- Custom styles -->
   <link rel="stylesheet" href="/mentoring/mentoring_jsp/assets/css/styles.css">
   <link rel="stylesheet" href="/mentoring/mentoring_jsp/assets/css/admin.css">
   
   <style type="text/css">
   	table{
   	margin-left : 10%;
   	border-collapse : collapse;
   	width:80%;}
   	th,td{padding:8px;}
   	tr:nth-child(even){background-color:#f2f2f2}
   </style>
   
   <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	<script type="text/javascript">
		$(function(){
			var claimCheck = $(".claimCheck");
			
			//체크박스로 체크하고 삭제버튼 눌렀을 때
			$("#deleteClaim").click(function(){
				var checkList = new Array;
				for(var i=0; i<claimCheck.length; i++){
					if(claimCheck[i].checked){
						checkList.push(claimCheck[i].value);
					}
				}
				if(checkList.length == 0){
					alert("삭제할 목록을 선택해주세요");
				}
				else{
					$("#checklist").val(checkList);
					$("#frm").submit();
				}
			});
			
		});
	</script>

</head>
<body>

<header id="header">
	<jsp:include page="adminHeader.jsp"/>
</header>


</body>

<a style="font-size:40px; font-family:bold; ">신고된 스터디 목록</a>

<table class="login-form">
	<tr>
		<td>제 목</td>
		<td>신고사유</td>
		<td>-</td>
	</tr>
	
	<% if( cList.isEmpty() ) { %>
		<tr><td colspan="5"> 등록된 신고가 없습니다. </td></tr>
	<% } else { %>
	
		<% for( Claim2 rec : cList) {%>
		<tr>
			<td><%= rec.getpTitle() %></td>
			<td><%=rec.getcContent()%></td>
			<td><input type="checkbox" class="claimCheck" name="check" value="<%=rec.getpNum()%>"></td>
		</tr>
		<%}//end of for %>

	<% } // end else %>
</table>
<form id='frm' action="xx.admin?">
<input type="hidden" id="checklist" name="checklist">
<input type="hidden" name="cmd" value="delete-claim">
<input type="button" id="deleteClaim" value="삭제">
</form>
</html>