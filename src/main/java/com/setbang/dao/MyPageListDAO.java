package com.setbang.dao;

import java.util.List;

import com.setbang.domain.MyPageListVO;

public interface MyPageListDAO {
	
	// mem_code 찾기
	int findmemcode(String id);

	// 개인별 업무지원서비스 신청현황
	List<MyPageListVO> supportlist(int mem_code);
	
	// 개인별 협력업체지원서비스 신청현황
	List<MyPageListVO> partnerlist(int mem_code);
	
	// 공용공간 예약신청현황
	List<MyPageListVO> pubbookinglist(int mem_code);
	
	// 물품신청 현황
	List<MyPageListVO> itemlist(int mem_code);
	
	// 임대차계약서 현황
	List<MyPageListVO> constractlist(int mem_code);
	
	/**
	 * 물품신청 취소
	 * @param vo
	 */
	public void deleteItemApply(MyPageListVO vo);
}
