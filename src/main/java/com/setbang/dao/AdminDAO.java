package com.setbang.dao;

import com.setbang.domain.AdminVO;

public interface AdminDAO {
	
	// 관리자 로그인
	AdminVO findAdmin(AdminVO vo);

	// 회원 총인원 추출
	int totalMember();
	
	// text 박스에 기입된 이름으로 member 테이블에서 임차인 이름 찾아서 가져오기
	int findmemcode(String name);
}
