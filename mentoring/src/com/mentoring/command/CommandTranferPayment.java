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

public class CommandTranferPayment implements Command{
	private String next;
	
	public CommandTranferPayment(String _next){
		next = _next;
	}
	
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		try {
	
	
		int pNum = Integer.parseInt(request.getParameter("pNum"));
		System.out.println("넘버야 왜 안 찍히니"+Integer.parseInt(request.getParameter("pNum")));
		System.out.println("CommandTranferPayment.java"+pNum);
		//Repository를 호출 
		Project p = MentoringService.getInstance().searchPayment(pNum);
		request.setAttribute("mentoringview_register", p);
		} catch (Exception ex) {
			throw new CommandException("CommandTranferPayment.java" + ex.toString());
		}
		return next;
	}
	
}
