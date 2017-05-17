package com.mentoring.command;

import java.util.List;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;import javax.net.ssl.SNIHostName;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import com.mentoring.model.Apply;
import com.mentoring.model.Applylist;
import com.mentoring.service.MentoringService;
import com.mentoring.session.MentoringRepository3;
	
public class CommandPayment implements Command {
	private String next;
	public CommandPayment(String _next) {
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		try {
			//결제 정보 가져오기
			 HttpSession session = request.getSession();
	         String uId = (String)session.getAttribute("uId");
	         Apply apply = new Apply();
	         apply.setpNum(Integer.parseInt(request.getParameter("pNum")));
	         apply.setuId(uId);
	         //Repository 호출 
	         MentoringService.getInstance().insertApply(apply);
	         
	         List<Applylist> applyList = MentoringService.getInstance().showMyApplyPro(uId);
			 request.setAttribute("applyList", applyList);
			
		}catch (Exception ex) {
		 throw new CommandException("CommandPayment.java" + ex.toString());
		}
		return next;
	}
}


