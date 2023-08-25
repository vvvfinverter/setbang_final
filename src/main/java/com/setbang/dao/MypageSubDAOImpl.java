package com.setbang.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.setbang.domain.MypageSubVO;

@Repository("MypageSubDAO")
public class MypageSubDAOImpl implements MypageSubDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// memcode 찾아오기
	@Override
	public int findmemcode(String id) {
		System.out.println("=> Mybatis findmemcode() 호출");
		return mybatis.selectOne("MypageSubDAO.findmemcode", id);
	}

	@Override
	public List<MypageSubVO> supportlist(int mem_code) {
		// TODO Auto-generated method stub
		System.out.println("=> Mybatis supportlist() 호출");	
		return mybatis.selectList("MypageSubDAO.supportlist", mem_code);
	}

	@Override
	public List<MypageSubVO> partnerlist(int mem_code) {
		// TODO Auto-generated method stub
		System.out.println("=> Mybatis partnerlist() 호출");	
		return mybatis.selectList("MypageSubDAO.partnerlist", mem_code);		
	}

	@Override
	public List<MypageSubVO> pubbookinglist(int mem_code) {
		// TODO Auto-generated method stub
		System.out.println("=> Mybatis pubbookinglist() 호출");	
		return mybatis.selectList("MypageSubDAO.pubbookinglist", mem_code);
	}

	@Override
	public List<MypageSubVO> itemlist(int mem_code) {
		// TODO Auto-generated method stub
		System.out.println("=> Mybatis itemlist() 호출");	
		return mybatis.selectList("MypageSubDAO.itemlist", mem_code);
	}
	
	

}
