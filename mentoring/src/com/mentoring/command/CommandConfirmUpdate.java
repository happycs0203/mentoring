package com.mentoring.command;

import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.mentoring.model.Callist;
import com.mentoring.model.Image;
import com.mentoring.model.Notice;
import com.mentoring.model.Project;
import com.mentoring.service.MentoringService;

public class CommandConfirmUpdate implements Command {
	private String next;

	public CommandConfirmUpdate(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		try {

			//승인 
			
			String pNum = request.getParameter("pNum");
              System.out.println(pNum);

             
		     MentoringService.getInstance().confirmUpdate(Integer.parseInt(pNum));
			 
		      
			

		} catch (Exception ex) {
			throw new CommandException("CommandConfirmUpdate.java" + ex.toString());
		}
		return next;
	}

}
