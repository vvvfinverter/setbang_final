package com.setbang.scheduler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.setbang.domain.PubOfficeVO;
import com.setbang.service.PubOfficeService;

@Component
public class AutoPubOfficeScheduler {

	@Autowired
	private PubOfficeService pubOfficeService;

	// 공유공간 예약여부 일마다 변경 - 자정이 되면 예약이 되어있는 공유공간을 Y->N으로 바꾸는 로직
	//@Scheduled(cron = "0 0 0 * * ?")  
	public void updatePubOfficeN() { 
		PubOfficeVO pubOfficeVO = new PubOfficeVO();
		pubOfficeService.updatePubOfficeN(pubOfficeVO.getPubCode());
		//pubOfficeService.deleteOfficeBooking();
		
	}
	
}
