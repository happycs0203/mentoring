package com.mentoring.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.mentoring.model.Applylist;
import com.mentoring.model.Project;
import com.mentoring.service.MentoringService;

public class CommandMyApplyPro implements Command{
	private String next;

	public CommandMyApplyPro(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		try {
			
			HttpSession session = request.getSession();
			
			Object uIdObj = session.getAttribute("uId");
			
			String uId = "hcs";
			if( uIdObj != null){
				uId = (String)uIdObj;
			}
			
			List<Applylist> applyList = MentoringService.getInstance().showMyApplyPro(uId);
			request.setAttribute("applyList", applyList);
		} catch (Exception ex) {
			throw new CommandException("CommandMyRegisterPro.java" + ex.toString());
		}
		return next;
	}
}
