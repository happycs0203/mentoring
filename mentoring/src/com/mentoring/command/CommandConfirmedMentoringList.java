package com.mentoring.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.mentoring.model.User;
import com.mentoring.service.MentoringService;

public class CommandConfirmedMentoringList implements Command {
	private String next;
	
	public CommandConfirmedMentoringList(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		try {

			List<User> nList= MentoringService.getInstance().showNoticeList();
			
			request.setAttribute("nList", nList);
			
		} catch (Exception ex) {
			throw new CommandException("CommandConfirmedMentoringList.java" + ex.toString());
		}
		return next;
	}
}
