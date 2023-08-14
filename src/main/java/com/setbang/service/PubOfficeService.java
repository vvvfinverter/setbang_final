package com.setbang.service;


import java.util.List;

import com.setbang.domain.PubOfficeVO;

public interface PubOfficeService {

	//사무실 예약 정보 조희 그러나 추가 수정 필요할 것 같아 보임
	List<PubOfficeVO> selectPubOfficeInfo(PubOfficeVO vo);
	
	//공용 오피스 카테고리 
	PubOfficeVO selectPubCat(PubOfficeVO vo);
	
	
	// memCode 조회
	public PubOfficeVO selectMemCode(PubOfficeVO vo);
	
	public List<PubOfficeVO> selectPubOfficeCombo(PubOfficeVO vo);
	
	//booking 테이블 insert
	void insertPubOffice(PubOfficeVO vo);
	
}
