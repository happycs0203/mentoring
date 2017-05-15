package com.mentoring.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.mentoring.model.Project;
import com.mentoring.service.MentoringService;

public class CommandConfirmRequest implements Command {
	private String next;
	
	public CommandConfirmRequest(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		try {

			List<Project> pList= MentoringService.getInstance().confirmRequestList();
			
			request.setAttribute("pList", pList);
			
		} catch (Exception ex) {
			throw new CommandException("CommandConfirmRequest.java" + ex.toString());
		}
		return next;
	}
}
