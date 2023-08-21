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
	
	
	public int totalMember() {
		System.out.println("st");
		adminDAO.totalMember();
		return adminDAO.totalMember();
	}
	
	public int findmemcode(String name) {
		System.out.println("s" + name);
		return adminDAO.findmemcode(name);		
	}
}
