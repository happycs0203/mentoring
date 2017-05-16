package com.mentoring.command;

import java.util.List;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.mentoring.model.Project;
import com.mentoring.service.MentoringService;

public class CommandTranferPayment {
	private String next;
	
	public CommandTranferPayment(String _next){
		next = _next;
	}
	
	public String execute(HttpServletRequest request) throws CommandException {
		try {
	
		Project project = new Project();
		project.setpTitle(request.getParameter("pTitle"));
		project.setpCost(Integer.parseInt(request.getParameter("pCost")));
		System.out.println("CommandInput.java"+project);
		//Repository를 호출 
		MentoringService.getInstance().searchPayment(project);
		} catch (Exception ex) {
			throw new CommandException("CommandUserInput.java" + ex.toString());
		}
		return next;
	}
	
}
