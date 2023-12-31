package com.setbang.scheduler;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.setbang.domain.PlanVO;
import com.setbang.service.PlanService;

@Component
public class AutoPlanPaymentScheduler {

	@Autowired
	private PlanService planService;
	
    // 자동결제 & 등급조정 - 매일 자정에 실행되도록 스케줄링
    //@Scheduled(cron = "0 0 0 * * ?") 	// 매일 0시 0분 0초에 실행
	//@Scheduled(cron = "0 * * * * ?") 	// 매 분의 0초에 실행 (테스트용)
	//@Scheduled(fixedRate = 10000)		// 매 10초에 실행 (테스트용)
	public void AutoPlanPayment() {
    	PlanVO plan = new PlanVO();
    	// 자동결제 - PLAN_END < SYSDATE 일때 결제일자 변경 (결제여부 'Y'로 변경)
        planService.updateAutoPlanPayment(plan);
        // 서비스 플랜 기간 만료시 등급 다운그레이드 (연간 결제용)
        planService.memPlanDowngrade(plan);
        // 자동결제 - PLAN_END < SYSDATE 일때 월간 서비스 플랜 결제 시 다음달 자동결제 (하지만 결제여부는 'N')
        planService.autoPlanPaymentAfterPlanEnd(plan);
        // 서비스 플랜 기간 시작시 등급 업그레이드 (월간 업그레이드용)
        planService.autoMemPlanUpgrade(plan);
    }
	
    // 테스트용
//	@Scheduled(cron = "0 * * * * ?") // 매 분의 0초에 실행
//	public void updateAutoPlanPayment() {
//	    PlanVO plan = new PlanVO();
//	    planService.updateAutoPlanPayment(plan);
//	}
//    @Scheduled(fixedRate = 1000)	// 매 1초에 실행
//    public void firstTask() {
//        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
//        Date now = new Date();
//        String strDate = sdf.format(now);
//        System.out.println("현재시간:  " + strDate);
//    }
    
}
