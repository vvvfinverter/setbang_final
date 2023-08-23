package com.setbang.service;

import java.util.List;

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
		
		// 서비스 플랜 회원수 찾기
		// 1. basic
		public int basic() {
			System.out.println("basic");
			adminDAO.basic();
			return adminDAO.basic();
		}
		
		// 2. standard_monthly
		public int standard_monthly() {
			System.out.println("standard_monthly");
			adminDAO.standard_monthly();
			return adminDAO.standard_monthly();
		}
		
		// 3. standard_annual
		public int standard_annual() {
			System.out.println("standard_annual");	
			adminDAO.standard_annual();
			return adminDAO.standard_annual();
		}
		
		// 4. premium_monthly
		public int premium_monthly() {
			System.out.println("premium_monthly");
			adminDAO.premium_monthly();
			return adminDAO.premium_monthly();
		}
		
		// 5. premium_annual
		public int premium_annual() {
			System.out.println("premium_annual");
			adminDAO.premium_annual();
			return adminDAO.premium_annual();
		}
		
		
		// 문의게시판 내역보기
		public List<AdminVO> inqueryList(AdminVO vo) {
			System.out.println("inqueryList" + vo);
			adminDAO.inqueryList(vo);
			return adminDAO.inqueryList(vo);
		}
		
		// 임대차계약서 목록게시판 내역보기
		public List<AdminVO> contractList(AdminVO vo) {
			System.out.println("contractList" + vo);
			adminDAO.contractList(vo);
			return adminDAO.contractList(vo);
		}
}
