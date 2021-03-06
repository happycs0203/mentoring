package com.mentoring.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mentoring.model.Project;
import com.mentoring.model.Prolist;
import com.mentoring.service.MentoringService;

public class CommandMentoringList implements Command {
	private String next;
	
	public CommandMentoringList(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		try {
             
			String project = "mentoring";
			List<Prolist> pList= MentoringService.getInstance().searchMentoring(project);
			
			request.setAttribute("pList", pList);
			
		} catch (Exception ex) {
			throw new CommandException("CommandInput.java" + ex.toString());
		}
		return next;
		//
	}
}
