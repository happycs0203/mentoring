package com.mentoring.command;

import java.util.List;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.mentoring.model.Notice;
import com.mentoring.service.MentoringService;

public class CommandNoticeView implements Command {
	private String next;

	public CommandNoticeView(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		try {

			Notice no = new Notice();
			int nNum = Integer.parseInt(request.getParameter("nNum"));

			Notice n = MentoringService.getInstance().showNotice(nNum);
			
			request.setAttribute("noticeView", n);

		} catch (Exception ex) {
			throw new CommandException("CommandInput.java" + ex.toString());
		}
		return next;
	}

}
