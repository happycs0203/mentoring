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

import com.mentoring.model.Image;
import com.mentoring.model.Project;
import com.mentoring.service.MentoringService;

public class CommandStudyInput implements Command {
	private String next;

	public CommandStudyInput(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		try {

			//멘토링 등록 정보 가져오기
			Project pro = new Project();
			pro.setuId(request.getParameter("uId"));
			pro.setpDiv("study");
			pro.setpTitle(request.getParameter("pTitle"));
			pro.setpPlace(request.getParameter("pPlace"));
			pro.setpCost(0);
			pro.setpMinmem(Integer.parseInt(request.getParameter("pMinmem")));
			pro.setpMaxmem(Integer.parseInt(request.getParameter("pMaxmem")));
			pro.setpTime(request.getParameter("startDate") + "~" + request.getParameter("endDate") +" "+ request.getParameter("detailDate"));
			pro.setpContent(request.getParameter("pContent"));
			pro.setpIntroduce(request.getParameter("pIntroduce"));
			pro.setpCategory(request.getParameter("pCategory"));

			//이미지 업로드

			String contentType = request.getContentType();
			if (contentType != null && contentType.toLowerCase().startsWith("multipart/")) {
//				Image uploadedItem = saveUploadFile(request, pro);
//				request.setAttribute("uploadedItem", uploadedItem);
				saveUploadFile(request, pro);
			}
			else{
				System.out.println("이미지 업로드 실패");
			}

		} catch (Exception ex) {
			throw new CommandException("CommandInput.java" + ex.toString());
		}
		return next;
	}

	private Integer saveUploadFile(HttpServletRequest req, Project pro) throws IOException, ServletException {
	
		Part filePart = req.getPart("uploadImage");
		String fileName = getFileName(filePart);
		System.out.println(fileName);
		String realPath = FileSaveHelper.save("C:\\Users\\ksota\\git\\mentoring\\mentoring\\WebContent\\imageupload\\",
				filePart.getInputStream());

		Image addRequest = new Image();
		addRequest.setiTitle(fileName);
		addRequest.setiSize(filePart.getSize());
		addRequest.setiPath(realPath);
		MentoringService.getInstance().insertMentoring(pro, addRequest);
		return 0;
	}

	private String getFileName(Part part) throws UnsupportedEncodingException {
		for (String cd : part.getHeader("Content-Disposition").split(";")) {
			if (cd.trim().startsWith("filename")) {
				return cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "");
			}
		}
		return null;
	}

	private String readParameterValue(Part part) throws IOException {
		InputStreamReader reader = new InputStreamReader(part.getInputStream(), "euc-kr");
		char[] data = new char[512];
		int len = -1;
		StringBuilder builder = new StringBuilder();
		while ((len = reader.read(data)) != -1) {
			builder.append(data, 0, len);
		}
		return builder.toString();
	}

}
