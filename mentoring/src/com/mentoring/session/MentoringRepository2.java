package com.mentoring.session;


import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.mentoring.model.Callist;
import com.mentoring.model.Image;
import com.mentoring.model.Project;
import com.mentoring.model.Prolist;
import com.mentoring.model.User;

public class MentoringRepository2 {
	String namespace="MentoringMapper2";
	
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
	
	public List<Callist> dateInput(){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			return sqlSess.selectList(namespace+".dateInput");
		}finally{
			sqlSess.close();
		}
	}
	
	public List<Project> confirmRequestList(){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			return sqlSess.selectList(namespace+".confirmRequestList");
		}finally{
			sqlSess.close();
		}
	}
	
	public List<User> adminMemberList(){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			return sqlSess.selectList(namespace+".adminMemberList");
		}finally{
			sqlSess.close();
		}
	}

}
