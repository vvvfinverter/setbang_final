package com.setbang.dao;

import java.util.List;

import com.setbang.domain.MypageSubVO;

public interface MypageSubDAO {
	
	// mem_code 찾기
	int findmemcode(String id);

	// 개인별 업무지원서비스 신청현황
	List<MypageSubVO> supportlist(int mem_code);
}
