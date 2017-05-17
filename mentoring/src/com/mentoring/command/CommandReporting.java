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

import com.mentoring.model.Claim;
import com.mentoring.model.Image;
import com.mentoring.model.Project;
import com.mentoring.service.MentoringService;

public class CommandReporting implements Command {
	private String next;

	public CommandReporting(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		try {

			//신고정보 가져오기
			int pnum = Integer.parseInt(request.getParameter("pNum"));
			String ccontent = request.getParameter("cContent");
			
			Claim claim = new Claim();
			claim.setpNum(pnum);
			claim.setcContent(ccontent);
			
			MentoringService.getInstance().reporting(claim);

		} catch (Exception ex) {
			throw new CommandException("CommandInput.java" + ex.toString());
		}
		return next;
	}

}
