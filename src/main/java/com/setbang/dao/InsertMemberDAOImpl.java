package com.setbang.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.setbang.domain.InsertMemberVO;

@Repository("InsertMemberDAO")
public class InsertMemberDAOImpl implements InsertMemberDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public void insertInfo(InsertMemberVO vo) {
		// TODO Auto-generated method stub
		System.out.println("=> Mybatis insertInfo() 호출");
		mybatis.insert("InsertMemberDAO.insertInfo", vo);
	}

	@Override
	public InsertMemberVO checkid(InsertMemberVO vo) {
		// TODO Auto-generated method stub
		System.out.println("=>Mybatis checkid()호출");
		return mybatis.selectOne("InsertMemberDAO", vo);
	}

// 나중에 사용 할 수도 있음 
//	@Override
//	public InsertMemberVO selectComboInd(InsertMemberVO vo) {
//		System.out.println("=> Mybatis selectComboInd() 호출");
//		return mybatis.selectOne("InsertMemberDAO.selectComboInd",vo);
//	}
	
	
}
