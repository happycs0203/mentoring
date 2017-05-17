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
import com.mentoring.model.Word;
import com.mentoring.service.MentoringService;

public class CommandInsertCart implements Command {
	private String next;

	public CommandInsertCart(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		try {

			//Q&A등록한것 가져오기
			int pNum = Integer.parseInt(request.getParameter("pNum"));
			String uId = request.getParameter("uId");
			String wContent = request.getParameter("wContent");
			
			Word word = new Word();
			word.setpNum(pNum);
			word.setuId(uId);
			word.setwContent(wContent);
			
			Word w = MentoringService.getInstance().insertWord(word);
			String result=null;
			result = "{";
			result += "wContent : '" + w.getwContent() +"',";
			result += "wDate : '" + w.getwDate() +"',";
			result += "uId : '" + w.getuId()+"'";
			result += "}";
			
			response.setContentType("text/html;charset=UTF-8");
			response.getWriter().print(result);
		} catch (Exception ex) {
			throw new CommandException("CommandInput.java" + ex.toString());
		}
		return null;
	}

}
