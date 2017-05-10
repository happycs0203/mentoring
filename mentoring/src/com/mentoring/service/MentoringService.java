package com.mentoring.service;

import com.mentoring.model.Image;
import com.mentoring.model.Project;
import com.mentoring.model.User;
import com.mentoring.session.MentoringRepository;

public class MentoringService {
	private static MentoringService service;
	
	private MentoringService(){} //�ٸ� Ŭ���� new ����
	
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
	public Integer insertUser(User user){
		return repo.insertUser(user);
	}
}
