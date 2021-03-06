package com.mentoring.command;

import java.util.Date;
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

import com.mentoring.model.Image;
import com.mentoring.model.Notice;
import com.mentoring.model.Project;
import com.mentoring.service.MentoringService;

public class CommandDeleteNotice implements Command {
	private String next;

	public CommandDeleteNotice(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		try {

			//삭제할 공지사항 번호 가져오기
			
			int nNum = Integer.parseInt(request.getParameter("nNum"));

			MentoringService.getInstance().deleteNotice(nNum);

		} catch (Exception ex) {
			throw new CommandException("CommandInput.java" + ex.toString());
		}
		return next;
	}

}
