package com.setbang.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.setbang.dao.AdminDAO;
import com.setbang.domain.AdminVO;

@Service("AdminService")
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminDAO adminDAO;
	
	public AdminVO findAdmin(AdminVO vo) {
		System.out.println("sf" + vo);
		adminDAO.findAdmin(vo);
		return vo;
	}
	
	
	public AdminVO totalMember(AdminVO vo) {
		System.out.println("st" + vo);
		adminDAO.totalMember(vo);
		return vo;
	}
}
