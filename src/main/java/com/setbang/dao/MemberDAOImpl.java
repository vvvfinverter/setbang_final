package com.setbang.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.setbang.domain.MemberVO;

@Repository("MemberDAO")
public class MemberDAOImpl implements MemberDAO{
	private static final Logger logger = LoggerFactory.getLogger(MemberDAOImpl.class);

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	// 로그인
	public MemberVO getLogin(MemberVO vo) {
		// TODO Auto-generated method stub
		logger.info("getLogin DAO");
		System.out.println("=> Mybatis getLogin() 호출");
		return mybatis.selectOne("MemberDAO.getLogin", vo);
	}

   
}
