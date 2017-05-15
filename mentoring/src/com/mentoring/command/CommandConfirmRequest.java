package com.mentoring.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.mentoring.model.Callist;
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

			List<Callist> cList= MentoringService.getInstance().confirmRequestList();
			
			request.setAttribute("cList", cList);
			
		} catch (Exception ex) {
			throw new CommandException("CommandConfirmRequest.java" + ex.toString());
		}
		return next;
	}
}
