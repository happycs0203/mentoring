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

public class CommandMentoringView implements Command {
	private String next;

	public CommandMentoringView(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		try {

			Project pro = new Project();
			int pNum = Integer.parseInt(request.getParameter("pNum"));
			int iNum = Integer.parseInt(request.getParameter("iNum"));

			Project p = MentoringService.getInstance().showMentoringView(pNum);
			Image i = MentoringService.getInstance().showMentoringImage(iNum);
			
			request.setAttribute("mentoringView", p);
			request.setAttribute("mentoringImage", i);

		} catch (Exception ex) {
			throw new CommandException("CommandInput.java" + ex.toString());
		}
		return next;
	}

}
