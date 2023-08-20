package com.setbang.dao;

import com.setbang.domain.PlanVO;

public interface PlanDAO {
	
    // 서비스 플랜 결제
    void planPayment(PlanVO vo);
    
}
