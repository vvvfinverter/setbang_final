package com.setbang.service;

import com.setbang.domain.PartnerVO;

public interface PartnerService {
	
	// 세션아이디로 신청페이지에 자동으로 이름, 전화번호 들어감
	public PartnerVO selectInfo(String id);
	
	// 세션아이디로 신청페이지에 자동으로 업체 들어감
	public String selectCompany(String id);
	
	// 세션아이디로  mem_code찾기
	public int followMemCode(String id);
	
	// 세션아이디로  name 찾기
	public String followName(String id);
	
	// 세션아이디로 tel 찾기
	public String followTel(String id);

	// 협력업체 서비스 신청
	public void insertCompany(PartnerVO vo);
	
}
