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
import com.mentoring.service.MentoringService;

public class CommandMentoringView2 implements Command {
	private String next;

	public CommandMentoringView2(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		try {

			
			Project p = new Project();
			Image i = new Image();
					
			int pNum = Integer.parseInt(request.getParameter("pNum"));
			int iNum = Integer.parseInt(request.getParameter("iNum"));
			p = MentoringService.getInstance().showMentoringView(pNum);
			i = MentoringService.getInstance().showMentoringImage(iNum);
			
			request.setAttribute("mentoringView", p);
			request.setAttribute("mentoringImage", i);

		} catch (Exception ex) {
			throw new CommandException("CommandInput.java" + ex.toString());
		}
		return next;
	}

}
