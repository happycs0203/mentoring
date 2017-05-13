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

import com.mentoring.model.StudyContentList;
import com.mentoring.service.MentoringService;

public class CommandStudyContent implements Command {
	private String next;
	public CommandStudyContent(String _next) {
		next = _next;
	}
	
	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		try{
		StudyContentList scl = new StudyContentList();
		scl.setuName(request.getParameter("uName"));
		scl.setuPhone(request.getParameter("uPhone"));
		scl.setpTitle(request.getParameter("pTitle"));
		scl.setpPlace(request.getParameter("pPlace"));
		scl.setpContent(request.getParameter("pContent"));
		//Repository를 호출 
		MentoringService.getInstance().searchStudy();
		} catch (Exception ex) {
			throw new CommandException("CommandInput.java" + ex.toString());
		}
		return next;
	}
}

