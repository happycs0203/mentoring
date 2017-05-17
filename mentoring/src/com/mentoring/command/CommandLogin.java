package com.mentoring.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mentoring.model.User;
import com.mentoring.service.MentoringService;

import javax.servlet.*;
import java.io.IOException;
import java.text.DecimalFormat;

public class CommandLogin implements Command{
	private String next;

	public CommandLogin( String _next ){
		next = _next;
	}

	public String execute( HttpServletRequest request, HttpServletResponse response ) throws CommandException{
		try{
			User user = new User();
			user.setuId(request.getParameter("uId"));
			user.setuPass(request.getParameter("uPass"));
			
			user  = MentoringService.getInstance().confirmLogin(user);
			// Repository에 함수호출
		   
			// 리턴값에 의해
			HttpSession session = request.getSession();
			
			session.setAttribute("uId", user.getuId() );
			
			
		}catch(Exception ex){
			throw new CommandException("CommandLogin.java" + ex.toString() ); 
		}
		return next;
	}
	
	

}
