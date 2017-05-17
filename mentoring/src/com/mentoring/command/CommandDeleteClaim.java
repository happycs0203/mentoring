package com.mentoring.command;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.StringTokenizer;
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

public class CommandDeleteClaim implements Command {
	private String next;

	public CommandDeleteClaim(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		try {

			//삭제할 스터디 번호리스트 가져오기
			
			String list = request.getParameter("checklist");
			StringTokenizer st = new StringTokenizer(list, ",");
			ArrayList checkList = new ArrayList();
			for(int i=0; st.hasMoreTokens(); i++){
				checkList.add(st.nextToken());
			}

			MentoringService.getInstance().deleteClaim(checkList);

		} catch (Exception ex) {
			throw new CommandException("CommandInput.java" + ex.toString());
		}
		return next;
	}

}
