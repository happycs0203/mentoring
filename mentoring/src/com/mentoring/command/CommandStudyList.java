package com.mentoring.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.mentoring.model.Project;
import com.mentoring.model.Prolist;
import com.mentoring.service.MentoringService;

public class CommandStudyList implements Command {
	private String next;
	
	public CommandStudyList(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		try {
             
			String project = "study";
			List<Prolist> pList= MentoringService.getInstance().searchMentoring(project);
			
			request.setAttribute("pList", pList);
			
		} catch (Exception ex) {
			throw new CommandException("CommandInput.java" + ex.toString());
		}
		return next;
		//
	}
}
