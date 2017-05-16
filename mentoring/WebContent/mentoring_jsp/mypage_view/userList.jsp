<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.mentoring.model.*" %>
<%@ page import="java.util.*" %>
<%
	List<User> uList = (List<User>)request.getAttribute("uList");
	System.out.println(uList.size());

%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<script type="text/javascript">


</script>
</head>
<body>
<%if(uList.size()==0){%>
신청한 사람이 없습니다.
<%} else {
		for(User u : uList){
%>
		

<%		} 
  	}
%>
</body>
</html>