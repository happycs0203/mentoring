package com.mentoring.session;


import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.mentoring.model.Image;
import com.mentoring.model.Project;

public class MentoringRepository {
	String namespace="MentoringMapper";
	
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
	
	public Integer insertMentoring( Project p){
		//JDBC : Connection, Mybatis : SqlSession
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			String statment = namespace + ".insertComment";
			int result = sqlSess.insert(statment, p);
			if(result > 0){
				sqlSess.commit();
				//JDBC : auto-commit, Mybatis : พฦดิ
			}else{
				sqlSess.rollback();
			}
		}finally{
			sqlSess.close();
		}
		return 0;
	}
	
	public Image insertImage( Image img){
		//JDBC : Connection, Mybatis : SqlSession
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			String statment = namespace + ".insertImage";
			int result = sqlSess.insert(statment, img);
			if(result > 0){
				sqlSess.commit();
				//JDBC : auto-commit, Mybatis : พฦดิ
			}else{
				sqlSess.rollback();
			}
		}finally{
			sqlSess.close();
		}
		return img;
	}

}
