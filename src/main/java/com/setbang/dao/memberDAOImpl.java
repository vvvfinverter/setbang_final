package com.setbang.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.setbang.domain.memberVO;

@Repository("memberDAO")
public class memberDAOImpl implements memberDAO{
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public void insertMember(memberVO vo) {
		// TODO Auto-generated method stub
		mybatis.insert("memberDAO.insertMember", vo);
	}

	@Override
	public void updateMember(memberVO vo) {
		// TODO Auto-generated method stub
		mybatis.insert("memberDAO.updatetMember", vo);
	}

	@Override
	public void deleteMember(memberVO vo) {
		// TODO Auto-generated method stub
		mybatis.insert("memberDAO.deleteMember", vo);
	}

	@Override
	public memberVO getMember(memberVO vo) {
		// TODO Auto-generated method stub
		return (memberVO) mybatis.selectOne("memberDAO.getMember", vo);
	}

	@Override
	public List<memberVO> getMemberList(memberVO vo) {
		// TODO Auto-generated method stub
		List<memberVO> list = mybatis.selectList("memberDAO.getMemberList", vo);
		return list;
	}
}
