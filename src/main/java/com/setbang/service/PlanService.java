package com.setbang.service;

import java.util.List;

import com.setbang.domain.PlanVO;

public interface PlanService {
	
	// 서비스 플랜 결제
    void planPayment(PlanVO vo);

    // 월간 서비스 플랜 결제 시 다음달 자동결제
    void autoPlanPayment(PlanVO vo);
    
    // 스케줄러 이용 자동결제 업데이트
    void updateAutoPlanPayment(PlanVO vo);

    // 스케줄러 이용 월간 서비스 플랜 결제 시 다음달 자동결제
    void autoPlanPaymentAfterPlanEnd(PlanVO vo);
    
    // 서비스 플랜 업그레이드
    void planUpgrade(PlanVO vo);
    
    // 결제 시 회원 서비스 플랜 등급 변경
    void memPlanUpgrade(PlanVO vo);

    // 서비스 플랜 다운그레이드
    void memPlanDowngrade(PlanVO vo);
    
    // 결제된 서비스 플랜 내역 조회
    List<PlanVO> getPlanPaymentList(int memCode);
    
	
}
