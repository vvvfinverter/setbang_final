package com.setbang.service;

import com.setbang.domain.MemberVO;

public interface MemberService {

	// 로그인
	MemberVO getLogin(MemberVO vo);
	
}
