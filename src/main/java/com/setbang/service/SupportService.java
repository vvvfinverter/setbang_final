package com.setbang.service;

import com.setbang.domain.SupportVO;

public interface SupportService {
	
    void insertApply(SupportVO vo);
	
	int findMemcode(String id); 
	
	SupportVO selectUser(String id);
	
	String findEmail(String id);
}
