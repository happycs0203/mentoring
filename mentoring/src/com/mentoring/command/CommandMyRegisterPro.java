package com.mentoring.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mentoring.model.Project;
import com.mentoring.service.MentoringService;

public class CommandMyRegisterPro implements Command{
	private String next;

	public CommandMyRegisterPro(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		try {
			
			HttpSession session = request.getSession();
			
			Object uIdObj = session.getAttribute("uId");
			
			String uId = "hcs";
			if( uIdObj != null){
				uId = (String)uIdObj;
			}
			
			List<Project> proList = MentoringService.getInstance().showMyRegisterPro(uId);
			request.setAttribute("proList", proList);
		} catch (Exception ex) {
			throw new CommandException("CommandMyRegisterPro.java" + ex.toString());
		}
		return next;
	}
}
