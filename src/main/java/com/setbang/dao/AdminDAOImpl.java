package com.setbang.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.setbang.domain.AdminVO;

@Repository("AdminDAO")
public class AdminDAOImpl implements AdminDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public AdminVO findAdmin(AdminVO vo) {
		System.out.println("=> Mybatis findAdmin() 호출");	
		return mybatis.selectOne("AdminDAO.findadmin", vo);		
	}

	@Override
	public int totalMember() {
		// TODO Auto-generated method stub
		System.out.println("=> Mybatis totalMember() 호출");	
	    return mybatis.selectOne("AdminDAO.totalmember");
	}
	
	@Override
	public int findmemcode(String name) {
		System.out.println("=> Mybatis findmemcode() 호출");
		return mybatis.selectOne("AdminDAO.findmemcode");
	}
}
