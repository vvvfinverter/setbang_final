package com.setbang.service;

import java.util.List;

import com.setbang.domain.PlanVO;

public interface PlanService {
	
	// 서비스 플랜 결제
    void planPayment(PlanVO vo);

    // 서비스 플랜 업그레이드
    void planUpgrade(PlanVO vo);
    
    // 결제 시 회원 서비스 플랜 등급 변경
    void memPlanUpgrade(PlanVO vo);
    
    // 결제된 서비스 플랜 내역 조회
    List<PlanVO> getPlanPaymentList(int memCode);
    
	
}
