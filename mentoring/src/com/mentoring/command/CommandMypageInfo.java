package com.mentoring.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.mentoring.model.User;
import com.mentoring.service.MentoringService;

public class CommandMypageInfo implements Command {
	private String next;
	
	public CommandMypageInfo(String _next) {
		next = _next;
	}
    
	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		try {

			List<User> uList= MentoringService.getInstance().mypageInfoList();
			
			request.setAttribute("uList", uList);
			
		} catch (Exception ex) {
			throw new CommandException("CommandMypageInfo.java" + ex.toString());
		}
		return next;
	}
}
