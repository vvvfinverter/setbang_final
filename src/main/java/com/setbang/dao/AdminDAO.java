package com.setbang.dao;

import com.setbang.domain.AdminVO;

public interface AdminDAO {
	
	// 관리자 로그인
	AdminVO findAdmin(AdminVO vo);

	// 회원 총인원 추출
	AdminVO totalMember(AdminVO vo);
}
