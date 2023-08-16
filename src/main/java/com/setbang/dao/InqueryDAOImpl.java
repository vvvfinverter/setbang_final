package com.setbang.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.setbang.domain.InqueryVO;

@Repository("InqueryDAO")
public class InqueryDAOImpl implements InqueryDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public void insertInquery(InqueryVO vo) {
		// TODO Auto-generated method stub
		System.out.println("=> Mybatis insertInquery() 호출");
		mybatis.insert("InqueryDAO.insertInquery", vo);		
	} 
	

}
