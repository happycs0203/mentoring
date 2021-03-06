package com.mentoring.service;

import java.util.ArrayList;
import java.util.List;

import com.mentoring.model.Apply;
import com.mentoring.model.Applylist;
import com.mentoring.model.Callist;
import com.mentoring.model.Claim;
import com.mentoring.model.Claim2;
import com.mentoring.model.Image;
import com.mentoring.model.Notice;
import com.mentoring.model.Project;
import com.mentoring.model.Prolist;
import com.mentoring.model.StudyContentList;
import com.mentoring.model.User;
import com.mentoring.model.Word;
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
	
	
	public Word insertWord(Word word){
		return repo1.insertWord(word);
	}
	
	public List<Word> showWordList(int pNum){
		return repo1.showWordList(pNum);
	}
	
	public void deleteClaim(ArrayList cList){
		repo1.deleteClaim(cList);
	}
	
	public List<Claim2> showReportingList(){
		return repo1.showReportingList();
	}
	
	public void reporting(Claim c) {
		repo1.reporting(c);
	}
	
	public void deleteNotice(int nNum){
		repo1.deleteNotice(nNum);
	}
	
	public void modifyNotice(Notice n) {
		repo1.modifyNotice(n);
	}
	//관리자에서 보여주는 페이지
	public Notice showNotice(int nNum){
		return repo1.showNotice(nNum);
	}
	//일반 사용자에서 보여주는 페이지
	public Notice showNotice2(int nNum){
		return repo1.showNotice2(nNum);
	}
	
	//회원정보 수정하는 페이지
	   public Integer modifyInfo(User user) {
	      return repo2.modifyInfo(user);
	   }
	
	public void insertNotice(Notice no){
		repo1.insertNotice(no);
	}
	
	public Integer insertMentoring(Project project, Image image){
		return repo1.insertMentoring(project, image);
	}
	
	public List showNoticeList(){
		return repo1.showNoticeList();
	}
	
	public List<User> adminMemberList(){
	   return repo2.adminMemberList();	
	}
	
	public User mypageInfoList(String uId){
		return repo2.mypageInfoList(uId);
	}
	
	public List<Callist> confirmRequestList(){
		return repo2.confirmRequestList();
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

	//캘린더에 일정 올리기
	public List<Callist> dateInput(){
	      return repo2.dateInput();
	   }
	
	//승인하기
	public Integer confirmUpdate(int pNum){
		return repo2.confirmUpdate(pNum);
	}
	
	//개설된 멘토링 목록 보기
	public List<Project> confirmedList(){
		return repo2.confirmedList();
	}
	
	public Project showMentoringView(int pNum){
		return repo1.showMentoringView(pNum);
	}
	
	public Image showMentoringImage(int iNum){
		return repo1.showMentoringImage(iNum);
	}
	
	public List<Project> showMyRegisterPro(String uId){
		return repo.showMyRegisterPro(uId);
	}
	
	public List<Applylist> showMyApplyPro(String uId){
		return repo.showMyApplyPro(uId);
	}
	public Integer updateApply(Apply apply){
		return repo3.updateApply(apply);
	}
	public Project searchPayment(int pNum){
		return repo3.searchPayment(pNum);
	}
	public List<User> searchUserList(int pNum){
		return repo.searchUserList(pNum);
	}
	public Integer insertApply(Apply apply){
		   return repo3.insertApply(apply);
	}

	
}
