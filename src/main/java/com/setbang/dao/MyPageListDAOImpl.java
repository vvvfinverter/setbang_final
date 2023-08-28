package com.setbang.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.setbang.domain.MyPageListVO;

@Repository("MypageListDAO")
public class MyPageListDAOImpl implements MyPageListDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// memcode 찾아오기
	@Override
	public int findmemcode(String id) {
		System.out.println("=> Mybatis findmemcode() 호출");
		return mybatis.selectOne("MyPageListDAO.findmemcode", id);
	}

	@Override
	public List<MyPageListVO> supportlist(int mem_code) {
		// TODO Auto-generated method stub
		System.out.println("=> Mybatis supportlist() 호출");	
		return mybatis.selectList("MyPageListDAO.supportlist", mem_code);
	}

	@Override
	public List<MyPageListVO> partnerlist(int mem_code) {
		// TODO Auto-generated method stub
		System.out.println("=> Mybatis partnerlist() 호출");	
		return mybatis.selectList("MyPageListDAO.partnerlist", mem_code);		
	}

	@Override
	public List<MyPageListVO> pubbookinglist(int mem_code) {
		// TODO Auto-generated method stub
		System.out.println("=> Mybatis pubbookinglist() 호출");	
		return mybatis.selectList("MyPageListDAO.pubbookinglist", mem_code);
	}

	@Override
	public List<MyPageListVO> itemlist(int mem_code) {
		// TODO Auto-generated method stub
		System.out.println("=> Mybatis itemlist() 호출");	
		return mybatis.selectList("MyPageListDAO.itemlist", mem_code);
	}
	
	

}
