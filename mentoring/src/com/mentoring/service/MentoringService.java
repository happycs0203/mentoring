package com.mentoring.service;

import com.mentoring.model.Image;
import com.mentoring.model.Project;
import com.mentoring.session.MentoringRepository;

public class MentoringService {
	private static MentoringService service;
	
	private MentoringService(){} //다른 클래스 new 못함
	
	public static MentoringService getInstance(){
		if(service == null) service= new MentoringService();

		return service;
	}
	
	MentoringRepository repo = new MentoringRepository();
	
	public Integer insertMentoring(Project project){
		return repo.insertMentoring(project);
	}
	
	public Image insertImage(Image img){
		return repo.insertImage(img);
	}
	
}
