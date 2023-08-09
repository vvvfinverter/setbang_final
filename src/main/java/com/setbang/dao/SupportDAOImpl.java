package com.setbang.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.setbang.domain.SupportVO;

@Repository("SupportDAO")
public class SupportDAOImpl implements SupportDAO{

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public SupportVO insertApply(SupportVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SupportVO selectUser(SupportVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SupportVO selectMember(SupportVO vo) {
		// TODO Auto-generated method stub
		return null;
	}


	
}
