package com.mentoring.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.mentoring.model.User;
import com.mentoring.service.MentoringService;

public class CommandUserList implements Command{
	private String next;

	public CommandUserList(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		try {
	

		int pNum = Integer.parseInt(request.getParameter("pNum"));


		//Repository를 호출 
		List<User> uList =MentoringService.getInstance().searchUserList(pNum);
		request.setAttribute("uList", uList);
		
		} catch (Exception ex) {
			throw new CommandException("CommandUserList.java" + ex.toString());
		}
		return next;
	}
}
