package com.setbang.dao;

import com.setbang.domain.SupportVO;

public interface SupportDAO {
	// 업무지원 신청
	void insertApply(SupportVO vo);
	
	// 세션아이디를 찾아서 신청페이지에 자동으로 이름, 연락처, 이메일 찾기
	public SupportVO selectUser(String id) throws Exception;
	
	// 세션아이디를 찾아서 Mem_code 찾기
	public int findMemcode(String id);
	
	// 세션아이디로 email 찾기
	public String findEmail(String id);
	
}
