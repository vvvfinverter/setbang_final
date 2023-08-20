package com.setbang.service;

import com.setbang.domain.PlanVO;

public interface PlanService {
	
	// 서비스 플랜 결제
    void planPayment(PlanVO vo);
	
}
