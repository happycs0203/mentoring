package com.mentoring.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.mentoring.model.Project;
import com.mentoring.model.Prolist;
import com.mentoring.service.MentoringService;

public class CommandMentoringList implements Command {
	private String next;
	
	public CommandMentoringList(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		try {

			List<Prolist> pList= MentoringService.getInstance().searchMentoring();
			
			request.setAttribute("pList", pList);
			
		} catch (Exception ex) {
			throw new CommandException("CommandInput.java" + ex.toString());
		}
		return next;
		//
	}
}
