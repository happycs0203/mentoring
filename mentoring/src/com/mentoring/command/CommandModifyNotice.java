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

public class CommandModifyNotice implements Command {
	private String next;

	public CommandModifyNotice(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		try {

			//공지사항 수정 정보 가져오기
			String nTitle = request.getParameter("noticeTitle");
			String nContent = request.getParameter("noticeContent");
			String nDate = request.getParameter("noticeDate");
			
			String nNum = request.getParameter("noticeNum");
			
			Notice no = new Notice();
			no.setnNum(Integer.parseInt(nNum));
			no.setnTitle(nTitle);
			no.setnContent(nContent);
			no.setnDate(nDate);

			MentoringService.getInstance().modifyNotice(no);
			
			request.setAttribute("noticeView", no);
			

		} catch (Exception ex) {
			throw new CommandException("CommandInput.java" + ex.toString());
		}
		return next;
	}

}
