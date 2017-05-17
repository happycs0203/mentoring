package com.mentoring.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mentoring.model.Claim2;
import com.mentoring.service.MentoringService;

public class CommandReportingList implements Command {
	private String next;
	
	public CommandReportingList(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		try {

			List<Claim2> cList= MentoringService.getInstance().showReportingList();
			
			request.setAttribute("cList", cList);
			
		} catch (Exception ex) {
			throw new CommandException("CommandInput.java" + ex.toString());
		}
		return next;
	}
}
