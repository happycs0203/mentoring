package com.mentoring.command;

import javax.servlet.http.HttpServletRequest;

public interface Command {
	public String execute( HttpServletRequest request ) throws CommandException;
}


//민주말이 맞아~~~ㅎㅎㅎㅎ
//아 좀 제대로 해봐