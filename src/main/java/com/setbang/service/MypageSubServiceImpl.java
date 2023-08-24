package com.setbang.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.setbang.dao.MypageSubDAO;
import com.setbang.domain.MypageSubVO;

@Service("MypageSubService")
public class MypageSubServiceImpl implements MypageSubService{

	@Autowired
	private MypageSubDAO mypagesubDAO;
	
	// mem_code 찾기
	public int findmemcode(String id) {
		System.out.println("가져가라 : " + id);
		mypagesubDAO.findmemcode(id);
		return mypagesubDAO.findmemcode(id);
	}

	@Override
	public List<MypageSubVO> supportlist(int mem_code) {
		// TODO Auto-generated method stub
		System.out.println("supportlist " + mem_code);
		mypagesubDAO.supportlist(mem_code);
		return mypagesubDAO.supportlist(mem_code);
	}

	
}
