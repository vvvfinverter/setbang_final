package com.setbang.service;

import com.setbang.domain.InsertMemberVO;

public interface InsertMemberService {

	public void insertInfo(InsertMemberVO vo);
	
	public InsertMemberVO checkid_mem(InsertMemberVO vo);
// 나중에 사용 할 수도 있음 
//	InsertMemberVO selectComboInd(InsertMemberVO vo);
	
}

