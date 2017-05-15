package com.mentoring.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.mentoring.model.User;
import com.mentoring.service.MentoringService;

public class CommandMemberList implements Command {
	private String next;
	
	public CommandMemberList(String _next) {
		next = _next;
	}
    
	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		try {

			List<User> uList= MentoringService.getInstance().adminMemberList();
			
			request.setAttribute("uList", uList);
			
		} catch (Exception ex) {
			throw new CommandException("CommandInput.java" + ex.toString());
		}
		return next;
	}
}
