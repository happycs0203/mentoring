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

import com.mentoring.model.Image;
import com.mentoring.model.Project;
import com.mentoring.model.User;
import com.mentoring.service.MentoringService;

public class CommandUserInput implements Command {
	private String next;

	public CommandUserInput(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		try {
	
		User user = new User();
		user.setuId(request.getParameter("uId"));
		user.setuPass(request.getParameter("uPass"));
		user.setuName(request.getParameter("uName"));
		user.setuPhone(request.getParameter("uPhone"));
		user.setuAddr(request.getParameter("uAddr"));
		
		System.out.println("CommandInput.java"+user);
		//Repository를 호출 
		MentoringService.getInstance().insertUser(user);
		} catch (Exception ex) {
			throw new CommandException("CommandInput.java" + ex.toString());
		}
		return next;
	}

}
