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
            

			String uId = request.getParameter("uId");
			User user = MentoringService.getInstance().mypageInfoList(uId);
			request.setAttribute("user", user);
			
		} catch (Exception ex) {
			throw new CommandException("CommandMypageInfo.java" + ex.toString());
		}
		return next;
	}
}
