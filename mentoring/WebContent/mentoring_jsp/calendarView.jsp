<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%@page import="com.mentoring.model.*"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%

 List<Callist> list = (List<Callist>)request.getAttribute("cList");

 

//년도와 월을 받아옴
String strYear = request.getParameter("year");
String strMonth = request.getParameter("month");

 //년,월,일 지정
Calendar cal = Calendar.getInstance();

int year = cal.get(Calendar.YEAR);
int month = cal.get(Calendar.MONTH);
int date = cal.get(Calendar.DATE);

//null이 아닌 다른 값을 받아오면
if(strYear != null)
{
	//다시 지정
  year = Integer.parseInt(strYear);
  month = Integer.parseInt(strMonth);

}else{

	
}

//년도,월 셋팅
cal.set(year, month, 1);


int startDay = cal.getMinimum(java.util.Calendar.DATE);
int endDay = cal.getActualMaximum(java.util.Calendar.DAY_OF_MONTH);
int start = cal.get(java.util.Calendar.DAY_OF_WEEK);
int newLine = 0;

 

//오늘 날짜 저장.

Calendar todayCal = Calendar.getInstance();
SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
int intToday = Integer.parseInt(sdf.format(todayCal.getTime()));


%>

<html lang="ko">

<HEAD>

       <TITLE>캘린더</TITLE>

       <meta http-equiv="content-type" content="text/html; charset=utf-8">
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
   

   <script src="//code.jquery.com/jquery-3.1.1.min.js"></script>
   <script src="//code.jboxcdn.com/0.4.7/jBox.min.js"></script>

   <script type="text/javascript" src="/mentoring/mentoring_jsp/assets/js/jquery-ui-1.10.4.custom.min.js"></script> <!-- UI 플러그인 연동 -->
   <script type="text/javascript" src="/mentoring/mentoring_jsp/assets/js/jquery.cookie.js"></script>  <!-- 쿠키 플러그인 연동 -->
   <script type="text/javascript" src='/mentoring/mentoring_jsp/assets/js/script.js'></script>

       <script type="text/javaScript" language="javascript"> 
       </script>

       <style TYPE="text/css">
       
             body {

             scrollbar-face-color: #F6F6F6;
             scrollbar-highlight-color: #bbbbbb;
             scrollbar-3dlight-color: #FFFFFF;
             scrollbar-shadow-color: #bbbbbb;
             scrollbar-darkshadow-color: #FFFFFF;
             scrollbar-track-color: #FFFFFF;
             scrollbar-arrow-color: #bbbbbb;
             margin-left:"0px"; margin-right:"0px"; margin-top:"0px"; margin-bottom:"0px";
             }

 

             td {font-family: "돋움"; font-size: 10pt; color:#595959;}
             th {font-family: "돋움"; font-size: 10pt; color:#000000;}
             select {font-family: "돋움"; font-size: 10pt; color:#595959;}

 
/*              .btn_today{ */
/*                width: 50px; */
/*                height: 20px; */
/*                background-color: #505050; */
/*                color: white; */
/*              } */
 

             .divDotText {

             overflow:hidden;
             text-overflow:ellipsis;
             }

 

            A:link { font-size:11pt; font-family:"돋움";color:#000000; text-decoration:none; }
            A:visited { font-size:11pt; font-family:"돋움";color:#000000; text-decoration:none; }
            A:active { font-size:11pt; font-family:"돋움";color:red; text-decoration:none; }
            A:hover { font-size:11pt; font-family:"돋움";color:red;text-decoration:none;}

       </style>

</HEAD>

<BODY>

<header id="header">
   <jsp:include page="mentoringHeader.jsp"/>
</header>

<form name="calendarFrm" id="calendarFrm" action="" method="post">
<DIV id="content" style="position: relative;">

 

<table width="100%" border="0" cellspacing="1" cellpadding="1">
<tr>
       <td align="right">
             <input type="button"  onclick="javascript:location.href='/mentoring/mento.mento?cmd=calendar-view'"  value="오늘"/>
       </td>

</tr>

</table>

<!--날짜 네비게이션  -->

<table width="100%" border="0" cellspacing="1" cellpadding="1" id="KOO" bgcolor="#F3F9D7" >

 

<tr>

<td height="60">

       <table width="100%" border="0" cellspacing="0" cellpadding="0" >
       <tr>
             <td height="10">
             </td>
       </tr>

       <tr>
             <td align="center" >
                   
                    <% if(month > 0 ){ %>

                    <a href="/mentoring/mento.mento?cmd=calendar-view&year=<%=year%>&month=<%=month-1%>">
                           <b>&lt;</b>
                           
                           <!-- 이전달 -->
                    </a>

                    <% } else { %>
                    
                           <b>&lt;</b>
                    <%} %>

                   &nbsp;&nbsp;

                    <%=year%>년    <%=month+1%>월
                    &nbsp;&nbsp;
                    
                    <%if(month < 11 ) { %>

                    <a href="/mentoring/mento.mento?cmd=calendar-view&year=<%=year%>&month=<%=month+1%>" >

                         <b>&gt;</b>
                    </a>

                    <% } else { %>
                          <b>&gt;</b>
                    <% } %>

                   
             </td>
       </tr>

       </table>

 

</td>
</tr>
</table>
<br>
<table width="100%" border="0" border-top="20px" cellspacing="1" cellpadding="1" bgcolor="#FFFFFF" style="position: relative;">
<THEAD>

<TR bgcolor="#505050">

       <TD width='100px'>
       <DIV align="center"><font color="red">일</font></DIV>
       </TD>
       <TD width='100px'>
       <DIV align="center"><font color="white">월</DIV>
      </TD>
       <TD width='100px'>
       <DIV align="center"><font color="white">화</DIV>
       </TD>
       <TD width='100px'>
       <DIV align="center"><font color="white">수</DIV>
       </TD>
       <TD width='100px'>
       <DIV align="center"><font color="white">목</DIV>
       </TD>
       <TD width='100px'>
       <DIV align="center"><font color="white">금</DIV>
       </TD>
       <TD width='100px'>
       <DIV align="center"><font color="#529dbc">토</font></DIV>
       </TD>
</TR>
</THEAD>
<TBODY>
<TR>

<%

 

//처음 빈공란 표시

for(int index = 1; index < start ; index++ )

{
  out.println("<TD >&nbsp;</TD>");
  newLine++;
}

 

for(int index = 1; index <= endDay; index++)
{
       String color = "";

       if(newLine == 0){          color = "RED";
       }else if(newLine == 6){    color = "#529dbc";
       }else{                     color = "BLACK"; };

 

       String sUseDate = Integer.toString(year); 
       sUseDate += Integer.toString(month+1).length() == 1 ? "0" + Integer.toString(month+1) : Integer.toString(month+1);
       sUseDate += Integer.toString(index).length() == 1 ? "0" + Integer.toString(index) : Integer.toString(index);

       int iUseDate = Integer.parseInt(sUseDate);



       String backColor = "#FFF";
       if(iUseDate == intToday ) {
             backColor = "#d2d2d2";
       }
       out.println("<TD valign='top' align='left' height='92px' bgcolor='"+backColor+"' nowrap>");

       %>

       <font color='<%=color%>'>
             <%=index %>
       </font>

       

       <%   
       
       for(Callist c : list){
       
       String str = c.getpEnroll();
       StringTokenizer st = new StringTokenizer(str, "/");
       int yy=0, mm=0, dd=0;

       while(st.hasMoreElements()) {
           yy = Integer.parseInt((String)st.nextElement());
           mm = Integer.parseInt((String)st.nextElement());
           dd = Integer.parseInt((String)st.nextElement());
         
       }
       
       
       //일정 태그 달기
       if( (month+1) == mm && index == dd){
    	   out.println("<a href='/mentoring/mentoring.mento?cmd=mentoring-view&pNum="+c.getpNum()+"&iNum="+c.getiNum()+"'>");
    	   out.println("<br>" + c.getuName() + "<br>" + c.getpTitle());
    	   out.println("</a>");
       }
       
       
       }

       out.println("<BR>");
       out.println("<BR>");
   

       //기능 제거 

       out.println("</TD>");
       newLine++;

 

       if(newLine == 7)
       {
         out.println("</TR>");
         if(index <= endDay)

         {
           out.println("<TR>");
         }
         newLine=0;
       }

}

//마지막 공란 LOOP

while(newLine > 0 && newLine < 7)

{
  out.println("<TD>&nbsp;</TD>");
  newLine++;
}

%>

</TR>
</TBODY>
</TABLE>
</DIV>
</form>
</BODY>
</HTML>