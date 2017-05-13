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
    
%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>AdminNoticeList</title>


<!-- Bootstrap -->
   <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.no-icons.min.css" rel="stylesheet">
   <!-- Icon font -->
   <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
   <!-- Fonts -->
   <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Alice|Open+Sans:400,300,700">
   <!-- Custom styles -->
   <link rel="stylesheet" href="/mentoring/mentoring_jsp/assets/css/styles.css">
   
   <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

</head>

<body>
<header id="header">
	<jsp:include page="adminHeader.jsp"/>
</header>

	<a style="font-size:40px; font-family:bold; ">개설된 멘토링 목록</a>
	<marquee behavior="alternate" scrolldelay="100" direction="right">
	    개설된 멘토링목록입니다.</marquee>
	<table class="bbs"  width="1000" height="300" border="1" background-color="#505050" align="center">
	
		<colgroup>
			<col width="50" align="center"/>
			<col width="500" align="center" />
			<col width="100" align="center"/>
			<col width="50" align="center"/>
		</colgroup>
		
		<thead>
			<tr>
				<th>번 호</th>
				<th>제 목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조 회</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td align="center">3</td>
				<td><a href="Board_View.jsp">게시판 글</a></td>
				<td align="center">작성자</td>
				<td align="center">작성일</td>
				<td align="center">1234</td>
			</tr>
			<tr>
				<td align="center">2</td>
				<td><a href="Board_View.jsp">게시판 글</a></td>
				<td align="center">작성자</td>
				<td align="center">작성일</td>
				<td align="center">123</td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td><a href="Board_View.jsp">게시판 글</a></td>
				<td align="center">작성자</td>
				<td align="center">작성일</td>
				<td align="center">12</td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td align="center" colspan="5">1</td>
			</tr>
		</tfoot>		
	</table>
	  <a  href="xxx.admin?cmd=regist-notice">등록</a>
		

</body>

</html>