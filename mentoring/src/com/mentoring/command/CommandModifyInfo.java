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

public class CommandModifyInfo implements Command {
	private String next;

	public CommandModifyInfo(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		try {

			HttpSession session = request.getSession();
			String uId = (String)session.getAttribute("uId");
			
			User user = new User();
			user.setuName(request.getParameter("uName"));
			user.setuId(request.getParameter("uId"));
			user.setuPass(request.getParameter("uPass"));
			user.setuPhone(request.getParameter("uPhone"));
			user.setuAddr(request.getParameter("uAddr"));
			
			
			MentoringService.getInstance().modifyInfo(user);
			request.setAttribute("user", user);

		} catch (Exception ex) {
			throw new CommandException("CommandModifyInfo.java" + ex.toString());
		}
		return next;
	}

}
