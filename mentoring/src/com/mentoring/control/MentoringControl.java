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
import com.mentoring.command.CommandNull;

/**
 * Servlet implementation class MentoringControl
 */
//fighting

public class MentoringControl extends HttpServlet {

	private HashMap commandMap;
	//��Ʈ ���ϱ�..!!
	private String	jspDir = "/05_mvc_class/2_mvcGuest/";
	private String  error = "error.jsp";

    public MentoringControl() {
    	super();       
		initCommand();
    }
    
    private void initCommand(){
		commandMap = new HashMap();
		//null�� db�Ȱ��ٿ�
		commandMap.put("main-page",	new CommandNull("main.jsp") );
		commandMap.put("input-form", new CommandNull("insertMessage.jsp") );

		
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
