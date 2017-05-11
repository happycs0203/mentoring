package com.mentoring.control;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mentoring.command.Command;
import com.mentoring.command.CommandException;
import com.mentoring.command.CommandInput;
import com.mentoring.command.CommandLogin;
import com.mentoring.command.CommandMentoringList;
import com.mentoring.command.CommandMentoringView;
import com.mentoring.command.CommandNull;
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
		//null�� db�Ȱ��ٿ�
		commandMap.put("main-page",	new CommandNull("mainPage.jsp") );
		commandMap.put("main-page2",new CommandLogin("mainPage.jsp") );
		commandMap.put("input-form", new CommandInput("mainPage.jsp") );//나중에 마이페이지 화면으로 넘겨주기
		commandMap.put("mentoring-view", new CommandMentoringView("mentoringView.jsp") );
		commandMap.put("study-list", new CommandInput("studyList.jsp") );
		commandMap.put("calendar-view",	new CommandNull("calendarView.jsp") );
		commandMap.put("mentoring-list", new CommandMentoringList("mentoringList.jsp"));
		commandMap.put("register-form", new CommandUserInput("registerSave.jsp"));//회원가입 폼
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
			//�ҹ��ڸ� toLowerCase()
			if( commandMap.containsKey( cmdKey.toLowerCase() ) ){
				cmd = (Command)commandMap.get( cmdKey.toLowerCase());
			}else{
				throw new CommandException("������ ��ɾ �������� ����");
			}
			//System.out.println(cmd);
			nextPage = cmd.execute( request );
			//System.out.println(nextPage);

		}catch( CommandException e ){
			request.setAttribute("javax.servlet.jsp.jspException", e );
			nextPage = error;
			System.out.println("���� : " + e.getMessage() );
		}

		RequestDispatcher reqDp = getServletContext().getRequestDispatcher( jspDir + nextPage );
		reqDp.forward( request, response );
		
	}
}
