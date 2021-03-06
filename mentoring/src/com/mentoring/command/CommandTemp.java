package com.mentoring.command;

import java.util.Date;
import java.util.List;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;


import com.mentoring.model.*;
import com.mentoring.service.MentoringService;

public class CommandTemp implements Command {
	private String next;

	public CommandTemp(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		try {

			User user = new User();
			user.setuName(request.getParameter("uName"));
			user.setuId(request.getParameter("uId"));
			user.setuPass(request.getParameter("uPass"));
			user.setuPhone(request.getParameter("uPhone"));
			user.setuAddr(request.getParameter("uAddr"));
			
			System.out.println(request.getParameter("uName"));
			System.out.println(request.getParameter("uId"));
			
			request.setAttribute("user", user);

		} catch (Exception ex) {
			throw new CommandException("CommandTemp.java" + ex.toString());
		}
		return next;
	}

}
