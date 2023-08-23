package com.setbang.dao;

import java.util.List;

import com.setbang.domain.PlanVO;

public interface PlanDAO {
	
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
    
    // 스케줄러 이용 서비스 플랜 기간 시작시 등급 업그레이드
    void autoMemPlanUpgrade(PlanVO vo);
    
    // 서비스 플랜 업그레이드 시 직전 자동결제 삭제
    void deletePrevPlanAfterPlanUpgrade(PlanVO vo);

    // 결제 시 회원 서비스 플랜 등급 변경
    void memPlanUpgrade(PlanVO vo);

    // 서비스 플랜 다운그레이드
    void memPlanDowngrade(PlanVO vo);
    
    // 자동결제 취소 - 취소 테이블이 인서트
    void insertCancelAutoPlanPayment(int cardCode);
    
    // 자동결제 취소 - 월간 서비스 플랜 다음달 결제내역 삭제
    void deleteCancelAutoPlanPayment(int cardCode);
    
    // 결제된 서비스 플랜 내역 조회
    List<PlanVO> getPlanPaymentList(int memCode);
    
}
