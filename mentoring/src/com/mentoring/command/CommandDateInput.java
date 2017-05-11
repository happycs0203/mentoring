package com.mentoring.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.mentoring.model.Project;
import com.mentoring.model.Prolist;
import com.mentoring.service.MentoringService;

public class CommandDateInput implements Command{
	private String next;

	public CommandDateInput( String _next ){
		next = _next;
	}

	public String execute( HttpServletRequest request ) throws CommandException{
		try{
			
			
		List<Project> pList = MentoringService.getInstance().dateInput();
		
		request.setAttribute("pList", pList);
		
		
		}catch(Exception ex){
			throw new CommandException("CommandDateInput.java" + ex.toString() ); 
		}
		
		return next;
	}
	
	

}
