package com.setbang.service;

import com.setbang.domain.AdminVO;

public interface AdminService {
	
	public AdminVO findAdmin(AdminVO vo);
	
	public int totalMember();
	
	public int findmemcode(String name);

}
