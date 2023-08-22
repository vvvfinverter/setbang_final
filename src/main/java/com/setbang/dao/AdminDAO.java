package com.setbang.dao;

import com.setbang.domain.AdminVO;

public interface AdminDAO {
	
	// 관리자 로그인
	AdminVO findAdmin(AdminVO vo);

	// 회원 총인원 추출
	int totalMember();
	
	// 임대차계약서 text 박스에 기입된 이름으로 member 테이블에서 임차인 이름 찾아서 가져오기
	int findmemcode(String lessee_name, String lessee_tel);
	
	// 임대차계약서 check박스에 선택한 지점의 value값으로 priv_code 찾기
	int findprivecode(int priv_code);
	
	// 임대차계약서 인서트
	void insertcontract(AdminVO vo);
	
	// 지점별 회원수 추출
		// 1. 구로지점
		int guromember();
		
		// 2. 판교지점
		int pangyomember();
		
		// 3. 강남지점
		int gangnammember();

}	