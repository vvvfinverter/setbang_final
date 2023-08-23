package com.setbang.service;

import java.util.List;

import com.setbang.domain.AdminVO;

public interface AdminService {
	
	
	
	// 로그인 할 때 Session에 관리자 넣기
	public AdminVO findAdmin(AdminVO vo);
	
	
	
	// 총 회원수 찾기
	public int totalMember();
	
	
	
	// 임대차계약서 인서트 할 때 필요한 mem_code 찾기
	public int findmemcode(String lessee_name, String lessee_tel);
	
	
	
	// 임대차계약서 인서트 할 때 필요한 priv_code 찾기
	public int findprivecode(int priv_code);
	
	
	
	// 임대차계약서 인서트
	public void insertcontract(AdminVO vo);
	
	
	
	// 지점별 회원수 찾기
		// 1. 구로지점
		public int guromember();
		
		// 2. 판교지점
		public int pangyomember();
		
		// 3. 강남지점
		public int gangnammember();

		
		
	// 서비스 플랜 회원수 찾기
		// 1. basic
		public int basic();
		
		// 2. standard_monthly
		public int standard_monthly();
		
		// 3. standard_annual
		public int standard_annual();
		
		// 4. premium_monthly
		public int premium_monthly();
		
		// 5. premium_annual
		public int premium_annual();

		
	// 비회원 문의게시판
		List<AdminVO> inqueryList(AdminVO vo);
		
}
