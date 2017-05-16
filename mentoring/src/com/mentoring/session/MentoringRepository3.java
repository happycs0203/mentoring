package com.mentoring.session;


import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.mentoring.model.Apply;
import com.mentoring.model.Image;
import com.mentoring.model.Project;
import com.mentoring.model.Prolist;
import com.mentoring.model.StudyContentList;
import com.mentoring.model.User;

public class MentoringRepository3 {
	String namespace="MentoringMapper3";
	
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
	
	public Integer insertUser(User user){
		//JDBC : Connection, Mybatis : SqlSession 
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			String statment = namespace + ".insertUser";
			int result = sqlSess.insert(statment, user);
			if(result > 0){
				sqlSess.commit();
			}else{
				sqlSess.rollback();
			}
		}finally{
			sqlSess.close();
		}
		return 0;
	}
	public List<StudyContentList> searchStudy(){
		//JDBC : Connection, Mybatis : SqlSession 
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			return sqlSess.selectList(namespace+".selectStudyContentList");
		}finally{
			sqlSess.close();
		}
	}
	
	//결제 정보 변경 N -> Y
	public Integer updateApply(Apply apply){
		//JDBC : Connection, Mybatis : SqlSession 
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			String statment = namespace + ".updateApply";
			int result = sqlSess.update(statment, apply);
			if(result > 0){
				sqlSess.commit();
			}else{
				sqlSess.rollback();
			}
		}finally{
			sqlSess.close();
		}
		return 0;
	}
	public Project searchPayment(int pNum){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			HashMap map = new HashMap<>();
			map.put("pNum", pNum);
			String statement = namespace + ".searchPayment";
			System.out.println("출력 나오나"+statement);
			return sqlSess.selectOne(statement, map);
		}finally{
			sqlSess.close();
		}
	}
	
	public Integer insertApply(Apply apply){
		      //JDBC : Connection, Mybatis : SqlSession 
		      SqlSession sqlSess = getSelSessionFactory().openSession();
		      try{
		         String statment = namespace + ".insertApply";
		         int result = sqlSess.insert(statment, apply);
		         if(result > 0){
		            sqlSess.commit();
		         }else{
		            sqlSess.rollback();
		         }
		      }finally{
		         sqlSess.close();
		      }
		      return 0;
	}
}




	


