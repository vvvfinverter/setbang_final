package com.setbang.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.setbang.domain.ConstractVO;

@Repository
public class ConstractDAOImpl implements ConstractDAO{
	private static final Logger logger = LoggerFactory.getLogger(ConstractDAOImpl.class);

	
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public void autoPrivYn(ConstractVO vo) {
		System.out.println("=> Mybatis autoPrivYn() 호출");
		mybatis.update("ConstractDAO.autoPriv", vo);
	}
}
