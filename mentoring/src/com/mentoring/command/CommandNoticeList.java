package com.mentoring.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.mentoring.model.Notice;
import com.mentoring.service.MentoringService;

public class CommandNoticeList implements Command {
	private String next;
	
	public CommandNoticeList(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		try {

			int nNum = Integer.parseInt(request.getParameter("nNum"));
			List<Notice> nList= MentoringService.getInstance().showNoticeList();
			
			request.setAttribute("nList", nList);
			
		} catch (Exception ex) {
			throw new CommandException("CommandInput.java" + ex.toString());
		}
		return next;
		//
	}
}
