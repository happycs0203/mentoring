package com.mentoring.service;

import java.util.List;

import com.mentoring.model.Image;
import com.mentoring.model.Notice;
import com.mentoring.model.Project;
import com.mentoring.model.Prolist;
import com.mentoring.model.StudyContentList;
import com.mentoring.model.User;
import com.mentoring.session.MentoringRepository;
import com.mentoring.session.MentoringRepository1;
import com.mentoring.session.MentoringRepository2;
import com.mentoring.session.MentoringRepository3;

public class MentoringService {
	private static MentoringService service;
	
	private MentoringService(){} //�ٸ� Ŭ���� new ����
	
	public static MentoringService getInstance(){
		if(service == null) service= new MentoringService();

		return service;
	}
	
	MentoringRepository repo = new MentoringRepository();
	MentoringRepository1 repo1 = new MentoringRepository1();
	MentoringRepository2 repo2 = new MentoringRepository2();
	MentoringRepository3 repo3 = new MentoringRepository3();
	
	public Integer insertMentoring(Project project, Image image){
		return repo1.insertMentoring(project, image);
	}
	
	public List showNoticeList(){
		return repo1.showNoticeList();
	}
	
//	public Image insertImage(Image img){
//		return repo1.insertImage(img);
//	}
	public Integer insertUser(User user){
		return repo3.insertUser(user);
	}
	
	public User confirmLogin(User user){
		return repo.confirmLogin(user);
	}
	public List<StudyContentList> searchStudy(){
		return repo3.searchStudy();
	}
	
	public List<Prolist> searchMentoring(String project){
		return repo.searchMentoring(project);
	}

	
	public List<Project> dateInput(){
	      return repo2.dateInput();
	   }
	
	public Project showMentoringView(int pNum){
		return repo1.showMentoringView(pNum);
	}
	
	public Image showMentoringImage(int iNum){
		return repo1.showMentoringImage(iNum);
	}
	
}
