package com.setbang.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.setbang.domain.MemberVO;

@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO{
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public MemberVO selectMember(MemberVO vo) {
		System.out.println("--> Mybatis selectMember() 호출");
		return (MemberVO) mybatis.selectOne("MemberDAO.selectMember", vo);
	}
}
