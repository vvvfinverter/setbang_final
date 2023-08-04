package com.setbang.dao;

import org.apache.ibatis.annotations.Mapper;

import com.setbang.domain.MemberVO;

public interface MemberDAO {
	
	// 로그인
	public MemberVO getLogin(MemberVO vo);
		
}
