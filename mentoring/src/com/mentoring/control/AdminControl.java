package com.mentoring.control;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mentoring.command.Command;
import com.mentoring.command.CommandConfirmRequest;
import com.mentoring.command.CommandDeleteNotice;
import com.mentoring.command.CommandException;
import com.mentoring.command.CommandInsertNotice;
import com.mentoring.command.CommandMemberList;
import com.mentoring.command.CommandModifyNotice;
import com.mentoring.command.CommandNoticeList;
import com.mentoring.command.CommandNoticeView;
import com.mentoring.command.CommandNull;

/**
 * Servlet implementation class MentoringControl 
 */
//fighting

public class AdminControl extends HttpServlet {

	private HashMap commandMap;

	private String	jspDir = "/mentoring_jsp/admin/";
	private String  error = "error.jsp";

    public AdminControl() {
    	super();       
		initCommand();
    }
    //
    private void initCommand(){
		commandMap = new HashMap();
		//null占쏙옙 db占싫곤옙占쌕울옙
		commandMap.put("show-noticelist",	new CommandNoticeList("AdminNoticeList.jsp") );
		commandMap.put("member-list",	new CommandMemberList("adminMemberList.jsp") );
		commandMap.put("regist-notice",	new CommandNull("registNotice.jsp"));
		commandMap.put("confirm-requestlist",	new CommandConfirmRequest("ConfirmRequestList.jsp") );
		commandMap.put("insert-notice",	new CommandInsertNotice("adminPreview.jsp") );
		commandMap.put("noticeview-page",	new CommandNoticeView("adminNoticeView.jsp") );
		commandMap.put("go-modify",	new CommandNull("modifyNotice.jsp") );
		commandMap.put("modify-notice",	new CommandModifyNotice("adminPreview.jsp") );
		commandMap.put("delete-notice",	new CommandDeleteNotice("deleteTemp.jsp") );
	}

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}
	

	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		String nextPage = "";
		String cmdKey	= request.getParameter("cmd");
		//System.out.println("cmdKey : " + cmdKey);
		if( cmdKey == null ){
			cmdKey = "show-noticelist";
		}

		
		Command cmd = null;

		try{
			//占쌀뱄옙占쌘몌옙 toLowerCase()
			if( commandMap.containsKey( cmdKey.toLowerCase() ) ){
				cmd = (Command)commandMap.get( cmdKey.toLowerCase());
			}else{
				throw new CommandException("admin : 지정할 명령어가 존재하지 않음");
			}
			//System.out.println("cmd : " + cmd);
			nextPage = cmd.execute( request );
			//System.out.println("nextPage : " + nextPage);

		}catch( CommandException e ){
			request.setAttribute("javax.servlet.jsp.jspException", e );
			nextPage = error;
			System.out.println("admin 오류 : " + e.getMessage() );
		}

		RequestDispatcher reqDp = getServletContext().getRequestDispatcher( jspDir + nextPage );
		reqDp.forward( request, response );
		
	}
}
