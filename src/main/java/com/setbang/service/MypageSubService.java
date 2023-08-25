package com.setbang.service;

import java.util.List;

import com.setbang.domain.AdminVO;
import com.setbang.domain.MypageSubVO;

public interface MypageSubService {
	
	
	// mem_code 찾기
	int findmemcode(String id);
	
	// 개인별 업무지원서비스 신청현황
	List<MypageSubVO> supportlist(int mem_code);
	
	// 개인별 협력업체지원서비스 신청현황
	List<MypageSubVO> partnerlist(int mem_code);
	
	// 공용공간 예약신청현황
	List<MypageSubVO> pubbookinglist(int mem_code);
	
	// 물품신청 현황
	List<MypageSubVO> itemlist(int mem_code);
}
