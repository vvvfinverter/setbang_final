package com.setbang.service;

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

}
