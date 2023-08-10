package com.setbang.service;

import com.setbang.domain.SupportVO;

public interface SupportService {

	SupportVO insertApply(SupportVO vo);
	
	SupportVO selectUser(String id);
}
