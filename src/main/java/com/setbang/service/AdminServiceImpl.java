package com.setbang.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.setbang.dao.AdminDAO;
import com.setbang.domain.AdminVO;

@Service("AdminService")
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminDAO adminDAO;
	
	// 로그인 할 때 Session에 관리자 넣기
	public AdminVO findAdmin(AdminVO vo) {
		System.out.println("sf" + vo);
		adminDAO.findAdmin(vo);
		return vo;
	}
	
	// 총 회원수 찾기
	public int totalMember() {
		System.out.println("st");
		adminDAO.totalMember();
		return adminDAO.totalMember();
	}
	
	// 임대차계약서 인서트 할 때 필요한 mem_code 찾기
	public int findmemcode(String lessee_name, String lessee_tel) {
		System.out.println("s " + lessee_name);
		System.out.println("t " + lessee_tel);
		return adminDAO.findmemcode(lessee_name, lessee_tel);		
	}
	
	// 임대차계약서 인서트 할 때 필요한 priv_code 찾기
	public int findprivecode(int priv_code) {
		System.out.println("p" + priv_code);
		return adminDAO.findprivecode(priv_code);
	}
	
	// 임대차계약서 인서트
	public void insertcontract(AdminVO vo) {
		System.out.println("i" + vo);
		adminDAO.insertcontract(vo);
	}
	
	// 지점별 회원수 찾기
		//1. 구로지점
		public int guromember() {
			System.out.println("g");
			adminDAO.guromember();
			return adminDAO.guromember();
		}
		
		// 2. 판교지점
		public int pangyomember() {
			System.out.println("p");
			adminDAO.pangyomember();
			return adminDAO.pangyomember();
		}
		
		// 3. 강남지점
		public int gangnammember() {
			System.out.println("nam");
			adminDAO.gangnammember();
			return adminDAO.gangnammember();
		}
}
