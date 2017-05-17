package com.mentoring.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mentoring.model.User;
import com.mentoring.service.MentoringService;

public class CommandMypageInfo implements Command {
	private String next;
	
	public CommandMypageInfo(String _next) {
		next = _next;
	}
    
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		try {
            
             
			HttpSession session = request.getSession();
			String uId = (String)session.getAttribute("uId");
			User user = MentoringService.getInstance().mypageInfoList(uId);
			request.setAttribute("user", user);
			
		} catch (Exception ex) {
			throw new CommandException("CommandMypageInfo.java" + ex.toString());
		}
		return next;
	}
}
