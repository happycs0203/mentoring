package com.mentoring.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mentoring.model.Image;
import com.mentoring.model.Project;
import com.mentoring.model.Word;
import com.mentoring.service.MentoringService;

public class CommandMentoringView implements Command {
	private String next;

	public CommandMentoringView(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		try {

			Project pro = new Project();
			int pNum = Integer.parseInt(request.getParameter("pNum"));
			int iNum = Integer.parseInt(request.getParameter("iNum"));

			Project p = MentoringService.getInstance().showMentoringView(pNum);
			Image i = MentoringService.getInstance().showMentoringImage(iNum);
			
			request.setAttribute("mentoringView", p);
			request.setAttribute("mentoringImage", i);
			
			List<Word> wList = MentoringService.getInstance().showWordList(pNum);
			
			request.setAttribute("wList", wList);

		} catch (Exception ex) {
			throw new CommandException("CommandInput.java" + ex.toString());
		}
		return next;
	}

}
