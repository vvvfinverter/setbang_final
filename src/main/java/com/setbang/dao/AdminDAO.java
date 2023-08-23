package com.setbang.dao;

import java.util.List;

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
		
		
		
	// 서비스 플랜 회원수 찾기
		// 1. basic
		int basic();
		
		// 2. standard_monthly
		int standard_monthly();
		
		// 3. standard_annual
		int standard_annual();
		
		// 4. premium_monthly
		int premium_monthly();
		
		// 5. premium_annual
		int premium_annual();
		
	// 비회원 문의게시판 List
		List<AdminVO> inqueryList(AdminVO vo);
		
	// 임대차계약서 목록게시판 List
		List<AdminVO> contractList(AdminVO vo);
		
}	