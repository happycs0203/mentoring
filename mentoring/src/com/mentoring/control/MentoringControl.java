package com.mentoring.control;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mentoring.command.Command;
import com.mentoring.command.CommandDateInput;
import com.mentoring.command.CommandException;
import com.mentoring.command.CommandInput;
import com.mentoring.command.CommandLogin;
import com.mentoring.command.CommandLogout;
import com.mentoring.command.CommandMentoringList;
import com.mentoring.command.CommandMentoringView;
import com.mentoring.command.CommandMyRegisterPro;
import com.mentoring.command.CommandNoticeList;
import com.mentoring.command.CommandNoticeView2;
import com.mentoring.command.CommandNull;
import com.mentoring.command.CommandStudyInput;
import com.mentoring.command.CommandStudyList;
import com.mentoring.command.CommandUserInput;

/**
 * Servlet implementation class MentoringControl 
 */
//fighting

public class MentoringControl extends HttpServlet {

	private HashMap commandMap;

	private String	jspDir = "/mentoring_jsp/";
	private String  error = "error.jsp";

    public MentoringControl() {
    	super();       
		initCommand();
    }
    //
    private void initCommand(){
		commandMap = new HashMap();
		//null占쏙옙 db占싫곤옙占쌕울옙
		commandMap.put("main-page",	new CommandNull("mainPage.jsp") );
		commandMap.put("main-page2",new CommandLogin("mainPage.jsp") );
		commandMap.put("mentoring-input", new CommandNull("registMentoring.jsp") );//�굹以묒뿉 留덉씠�럹�씠吏� �솕硫댁쑝濡� �꽆寃⑥＜湲�
		commandMap.put("mentoring-inputdo", new CommandInput("mainPage.jsp") );//�굹以묒뿉 留덉씠�럹�씠吏� �솕硫댁쑝濡� �꽆寃⑥＜湲�
		commandMap.put("mentoring-view", new CommandMentoringView("mentoringView.jsp") );
		commandMap.put("study-list", new CommandStudyList("studyList.jsp") );
		commandMap.put("calendar-view",	new CommandDateInput("calendarView.jsp") );
		commandMap.put("mentoring-list", new CommandMentoringList("mentoringList.jsp"));
		commandMap.put("study-input", new CommandNull("study_form/studyInputForm.jsp"));
		commandMap.put("study-inputdo", new CommandStudyInput("study_form/studyViewjsp"));
		commandMap.put("register-form", new CommandUserInput("registerSave.jsp"));//�쉶�썝媛��엯 �뤌
		commandMap.put("logout", new CommandLogout("mainPage.jsp"));
		commandMap.put("noticeview-page", new CommandNoticeView2("noticeView.jsp"));
		commandMap.put("mentoring-noticelist", new CommandNoticeList("noticeList.jsp"));
		commandMap.put("show-project", new CommandMyRegisterPro("mypage_view/mypageView.jsp"));
		commandMap.put("now-project", new CommandNull("mypage_view/confirmProject.jsp"));
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
		if( cmdKey == null ){
			cmdKey = "main-page";
		}

		
		Command cmd = null;

		try{
			//占쌀뱄옙占쌘몌옙 toLowerCase()
			if( commandMap.containsKey( cmdKey.toLowerCase() ) ){
				cmd = (Command)commandMap.get( cmdKey.toLowerCase());
			}else{
				throw new CommandException("mentoring : 지정할 명령어가 존재하지 않음");
			}
			//System.out.println(cmd);
			nextPage = cmd.execute( request );
			//System.out.println(nextPage);

		}catch( CommandException e ){
			request.setAttribute("javax.servlet.jsp.jspException", e );
			nextPage = error;
			System.out.println("에러 : " + e.getMessage() );
		}

		RequestDispatcher reqDp = getServletContext().getRequestDispatcher( jspDir + nextPage );
		reqDp.forward( request, response );
		
	}
}
