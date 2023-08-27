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
	
	/**
	 *@Scheduled(cron = "0 0 0 * * ?") 	// 매일 0시 0분 0초에 실행
	 *@Scheduled(cron = "0 * * * * ?") 	// 매 분의 0초에 실행 (테스트용)
	 *@Scheduled(fixedRate = 10000)		// 매 10초에 실행 (테스트용)
	 *
	 */


	/**
	 * 매일 자정이 되면 실행 아래 설정된 메소드들이 실행 됨
	 * 쉐줄러는 리턴 값이 없고 파라미터를 안 받는 방식으로 만듬
	 * 
	 */
	@Scheduled(cron = "0 0 0 * * ?")  
	public void updatePubOfficeN() { 
		PubOfficeVO pubOfficeVO = new PubOfficeVO();
		pubOfficeService.updatePubOfficeN(pubOfficeVO.getPubCode());
		pubOfficeService.deleteOfficeBooking();
		
	}
	
	/**
	 * 아래의 기능은 구현 못함 추후 확장 가능성은 고려중 그러나 당장 시간이 부족한 상태
	 */
//	@Scheduled(cron = "0 0 10 * * ?") //8시 예약 10시 종료
//	public void updatePubOfficeN10() { 
//		PubOfficeVO pubOfficeVO = new PubOfficeVO();
//		int ten = pubOfficeService.updatePubOfficeN(pubOfficeVO.getPubCode());
//		
//	}
//	
//	@Scheduled(cron = "0 0 12 * * ?") // 10시 예약 12시 종료
//	public void updatePubOfficeN12() { 
//		PubOfficeVO pubOfficeVO = new PubOfficeVO();
//		int aa = pubOfficeService.updatePubOfficeN(pubOfficeVO.getPubCode());
//		
//	}
//	
//	@Scheduled(cron = "0 0 15 * * ?") // 13시 예약 15시 종료
//	public void updatePubOfficeN15() { 
//		PubOfficeVO pubOfficeVO = new PubOfficeVO();
//		int aa = pubOfficeService.updatePubOfficeN(pubOfficeVO.getPubCode());
//		
//	}
//	
//	@Scheduled(cron = "0 0 17 * * ?") // 15시 예약 17시 종료
//	public void updatePubOfficeN17() { 
//		PubOfficeVO pubOfficeVO = new PubOfficeVO();
//		int aa = pubOfficeService.updatePubOfficeN(pubOfficeVO.getPubCode());
//		
//	}
//	
//	@Scheduled(cron = "0 0 19 * * ?") // 17시 예약 19시 종료
//	public void updatePubOfficeN19() { 
//		PubOfficeVO pubOfficeVO = new PubOfficeVO();
//		int aa = pubOfficeService.updatePubOfficeN(pubOfficeVO.getPubCode());
//		
//	}
    
}
