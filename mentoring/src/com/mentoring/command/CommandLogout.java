package com.mentoring.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mentoring.model.User;
import com.mentoring.service.MentoringService;

import javax.servlet.*;
import java.io.IOException;
import java.text.DecimalFormat;

public class CommandLogout implements Command{
	private String next;

	public CommandLogout( String _next ){
		next = _next;
	}

	public String execute( HttpServletRequest request, HttpServletResponse response ) throws CommandException{
		try{
			// Repository에 함수호출
		   
			// 리턴값에 의해
			HttpSession session = request.getSession();
			
			session.removeAttribute("uId");
			
			
		}catch(Exception ex){
			throw new CommandException("CommandLogin.java" + ex.toString() ); 
		}
		return next;
	}
	
	

}
