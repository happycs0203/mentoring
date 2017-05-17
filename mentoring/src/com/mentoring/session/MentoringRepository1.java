package com.mentoring.session;


import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.mentoring.model.Claim;
import com.mentoring.model.Claim2;
import com.mentoring.model.Image;
import com.mentoring.model.Notice;
import com.mentoring.model.Project;
import com.mentoring.model.Word;

public class MentoringRepository1 {
	String namespace="MentoringMapper1";

	private SqlSessionFactory getSelSessionFactory(){
		String resource = "mybatis-config.xml";
		InputStream inputStream = null;
		try{
			inputStream = Resources.getResourceAsStream(resource);

		}catch(Exception ex){

		}
		SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(inputStream);
		return factory;
	}

	//멘토링 등록
	public Integer insertMentoring( Project p, Image img){
		//JDBC : Connection, Mybatis : SqlSession
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			String statment = namespace + ".insertMentoring";
			int result = sqlSess.insert(statment, p);
			String statment1 = namespace + ".insertImage";
			result += sqlSess.insert(statment1, img);
			if(result > 1){
				sqlSess.commit();
				//JDBC : auto-commit, Mybatis : �ƴ�
			}else{
				sqlSess.rollback();
			}
		}finally{
			sqlSess.close();
		}
		return 0;
	}

	//공지사항 등록
	public void insertNotice(Notice no){
		//JDBC : Connection, Mybatis : SqlSession
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			String statment = namespace + ".insertNotice";
			int result = sqlSess.insert(statment, no);
			if(result > 0){
				sqlSess.commit();
				//JDBC : auto-commit, Mybatis : �ƴ�
			}else{
				sqlSess.rollback();
			}
		}finally{
			sqlSess.close();
		}
	}

	//공지사항 리스트 보여주기
	public List<Notice> showNoticeList() {
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			return sqlSess.selectList(namespace+".showNoticeList");
		}finally{
			sqlSess.close();
		}
	}
	
	//공지사항 상세화면 페이지(관리자)
	public Notice showNotice(int nNum) {
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			HashMap map = new HashMap<>();
			map.put("nNum", nNum);
			return sqlSess.selectOne(namespace+".showNotice",map);
		}finally{
			sqlSess.close();
		}
	}
	
	//공지사항 상세화면 페이지(일반 사용자)
		public Notice showNotice2(int nNum) {
			SqlSession sqlSess = getSelSessionFactory().openSession();
			try{
				HashMap map = new HashMap<>();
				map.put("nNum", nNum);
				
				String statement = namespace + ".upCount";
				int result = sqlSess.update(statement,map);
				if(result > 0) {
					sqlSess.commit();
					//JDBC : auto-commit, Mybatis : 아님
				}else{
					sqlSess.rollback();
				}
				
				
				return sqlSess.selectOne(namespace+".showNotice",map);
			}finally{
				sqlSess.close();
			}
		}
	
	//공지사항 수정하기
	public void modifyNotice(Notice n) {
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			String statement = namespace + ".modifyNotice";
			int result = sqlSess.update(statement,n);
			if(result > 0) {
				sqlSess.commit();
				//JDBC : auto-commit, Mybatis : 아님
			}else{
				sqlSess.rollback();
			}
		}finally{
			sqlSess.close();
		}
	}
	
	//공지사항 삭제하기
	public void deleteNotice(int nNum){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			String statement = namespace + ".deleteNotice";
			HashMap map = new HashMap<>();
			map.put("nNum", nNum);
			int result = sqlSess.delete(statement,map);
			if(result > 0) {
				sqlSess.commit();
				//JDBC : auto-commit, Mybatis : 아님
			}else{
				sqlSess.rollback();
			}
		}finally{
			sqlSess.close();
		}
	}
	
	//스터디 신고하기
	public void reporting(Claim c){
		//JDBC : Connection, Mybatis : SqlSession
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			String statment = namespace + ".reporting";
			int result = sqlSess.insert(statment, c);
			if(result > 0){
				sqlSess.commit();
				//JDBC : auto-commit, Mybatis : �ƴ�
			}else{
				sqlSess.rollback();
			}
		}finally{
			sqlSess.close();
		}
	}
	
	//신고된 스터디 내용 가져오기
		public List<Claim2> showReportingList(){
			SqlSession sqlSess = getSelSessionFactory().openSession();
			try{
				return sqlSess.selectList(namespace+".showReportingList");
			}finally{
				sqlSess.close();
			}
		}
		
	//신고된 스터디들 삭제하기
	public void deleteClaim(ArrayList cList){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			//projectmento에서 삭제
			String statement = namespace + ".deleteClaim";
			for(int i=0; i<cList.size(); i++){
				HashMap map = new HashMap<>();
				map.put("pNum", cList.get(i).toString());
				int result = sqlSess.delete(statement,map);
				if(result > 0) {
					sqlSess.commit();
					//JDBC : auto-commit, Mybatis : 아님
				}else{
					sqlSess.rollback();
				}
			}
		}finally{
			sqlSess.close();
		}
	}
	
	//해당 스터디의 스터디 Q&A리스트 가져오기
	public List showWordList(int pNum){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			HashMap map = new HashMap<>();
			map.put("pNum", pNum);
			return sqlSess.selectList(namespace+".showWordList",map);
		}finally{
			sqlSess.close();
		}
	}
	
	public Word insertWord(Word word){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			String statment = namespace + ".insertWord";
			
			int result = sqlSess.insert(statment, word);
			int seq = sqlSess.selectOne(namespace+".selectCurrval");
			
			if(result > 0){
				sqlSess.commit();
			}else{
				sqlSess.rollback();
			}
			
			HashMap map = new HashMap<>();
			map.put("seq", seq);
			return sqlSess.selectOne(namespace+".showWord", map);
		}finally{
			sqlSess.close();
		}
	}
	

	//	public Image insertImage(Image img){
	//		//JDBC : Connection, Mybatis : SqlSession
	//		SqlSession sqlSess = getSelSessionFactory().openSession();
	//		try{
	//			String statment = namespace + ".insertImage";
	//			int result = sqlSess.insert(statment, img);
	//			if(result == -1){
	//				sqlSess.rollback();
	//				//JDBC : auto-commit, Mybatis : �ƴ�
	//			}else{
	//				sqlSess.commit();
	//			}
	//		}finally{
	//			sqlSess.close();
	//		}
	//		return img;
	//	}

	//멘토링번호로 상세 내용 가져오기
	public Project showMentoringView(int pNum) {

		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			HashMap map = new HashMap<>();
			map.put("pNum", pNum);
			return sqlSess.selectOne(namespace+".showMentoringView",map);
		}finally{
			sqlSess.close();
		}
	}

	//등록된 멘토링 이미지 보여주기
	public Image showMentoringImage(int iNum) {

		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			HashMap map = new HashMap<>();
			map.put("iNum", iNum);
			return sqlSess.selectOne(namespace+".showMentoringImage",map);
		}finally{
			sqlSess.close();
		}
	}

}
