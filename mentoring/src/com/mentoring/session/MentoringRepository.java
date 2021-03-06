package com.mentoring.session;


import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.mentoring.model.Applylist;
import com.mentoring.model.Image;
import com.mentoring.model.Project;
import com.mentoring.model.Prolist;
import com.mentoring.model.User;

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
	
	public User confirmLogin(User user){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			String statement = namespace + ".confirmLogin";
			return sqlSess.selectOne(statement, user);
		}finally{
			sqlSess.close();
		}
	   	
	}
	
	public List<Prolist> searchMentoring(String project){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			HashMap map = new HashMap<>();
			map.put("pDiv", project);
			return sqlSess.selectList(namespace+".selectProjectList", map);
		}finally{
			sqlSess.close();
		}
	}
	
	public List<Project> showMyRegisterPro(String uId){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			HashMap map = new HashMap<>();
			map.put("uId", uId);
			return sqlSess.selectList(namespace+".selectMyProject", map);
		}finally{
			sqlSess.close();
		}
	}
	
	public List<Applylist> showMyApplyPro(String uId){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			HashMap map = new HashMap<>();
			map.put("uId", uId);
			return sqlSess.selectList(namespace+".selectMyApplyPro", map);
		}finally{
			sqlSess.close();
		}
	}
	
	public List<User> searchUserList(int pNum){
		SqlSession sqlSess = getSelSessionFactory().openSession();
		try{
			HashMap map = new HashMap<>();
			map.put("pNum", pNum);
			return sqlSess.selectList(namespace+".searchUserList", map);
		}finally{
			sqlSess.close();
		}
	}
	
}
