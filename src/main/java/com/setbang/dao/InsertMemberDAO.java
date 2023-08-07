package com.setbang.dao;

import com.setbang.domain.InsertMemberVO;

public interface InsertMemberDAO {

	public void insertInfo(InsertMemberVO vo);
	
	InsertMemberVO checkid(InsertMemberVO vo);
// 나중에 사용 할 수도 있음 
//	public InsertMemberVO selectComboInd(InsertMemberVO vo);
	
}
