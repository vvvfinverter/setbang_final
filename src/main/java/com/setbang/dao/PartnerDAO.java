package com.setbang.dao;

import com.setbang.domain.PartnerVO;

public interface PartnerDAO {
	
	// 세션아이디로 신청페이지에 이름, 전화번호 넣기
	public PartnerVO selectInfo(String id) throws Exception;
	
	// 협력업체 정보 불러오기
	public String selectCompany(String id);
	
	// 세션아이디로  mem_code 찾기
	public int followMemCode(String id);
	
	// 세션아이디로  name 찾기
	public String followName(String id);
		
	// 세션아이디로 tel 찾기
	public String followTel(String id);
	
	// 협력업체 서비스 신청
	public void insertCompany(PartnerVO vo);
	
}
