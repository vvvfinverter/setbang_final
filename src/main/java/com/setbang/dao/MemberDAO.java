package com.setbang.dao;

import org.apache.ibatis.annotations.Mapper;

import com.setbang.domain.MemberVO;

public interface MemberDAO {
	
	public MemberVO getLogin(MemberVO vo);
		
}
