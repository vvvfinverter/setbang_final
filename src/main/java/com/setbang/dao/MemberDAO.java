package com.setbang.dao;

import java.util.List;

import com.setbang.domain.memberVO;

public interface memberDAO {
	public void insertMember(memberVO vo);
	
	public void updateMember(memberVO vo);
	
	public void deleteMember(memberVO vo);
	
	public memberVO getMember(memberVO vo);
	
	public List<memberVO> getMemberList(memberVO vo);
}
