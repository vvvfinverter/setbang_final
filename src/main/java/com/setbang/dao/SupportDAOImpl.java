package com.setbang.dao;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.setbang.domain.SupportVO;

@Repository("SupportDAO")
public class SupportDAOImpl implements SupportDAO{
	private static final Logger logger = LoggerFactory.getLogger(SupportDAOImpl.class);


	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public SupportVO insertApply(SupportVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SupportVO selectUser(String id) throws Exception {
		// TODO Auto-generated method stub
		logger.info("selectUser DAO");
		System.out.println("=> Mybatis selectUser() 호출");
		
		return mybatis.selectOne("SupportDAO.selectUser", id);
	}


	
}
