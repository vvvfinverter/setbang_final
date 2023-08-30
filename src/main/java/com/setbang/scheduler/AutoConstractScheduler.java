package com.setbang.scheduler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.setbang.domain.ConstractVO;
import com.setbang.service.ConstractSchedulerService;

@Component
public class AutoConstractScheduler {
	
	@Autowired
	private ConstractSchedulerService constractSchedulerService;
	
	
	// 임대차 계약기간이 끝나면 개인오피스 테이블의 개인오피스 사용여부가 Y -> N으로 변경하는 스케쥴러
    //@Scheduled(cron = "0 0 0 * * ?") 	// 매일 0시 0분 0초에 실행
	public void AutoPrivYn() {
		
		ConstractVO vo = new ConstractVO();
		constractSchedulerService.autoPrivYn(vo);
		
	}

}
