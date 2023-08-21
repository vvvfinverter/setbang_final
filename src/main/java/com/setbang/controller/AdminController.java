package com.setbang.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.setbang.domain.AdminVO;
import com.setbang.service.AdminService;

@Controller
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(SupportController.class);
	
	@Autowired
	private AdminService adminservice;
	
	// 관리자 로그인페이지로 이동
	@RequestMapping(value="adminLogin.do")
	public String loginAdmin(AdminVO vo) {
		
		return "/admin/adminLogin";
	}

	// 관리자 로그인
	@RequestMapping(value="adminMain.do")
	public String findAdmin(AdminVO vo, Model model, HttpSession session) {
		
		AdminVO admin = adminservice.findAdmin(vo);
		
		if(admin != null) {
			session.setAttribute("sessionAdminId", admin.getAdmin_id());
			System.out.println("[" + admin.getAdmin_id() + "] 로그인 접속");
			System.out.println("[" + session.getAttribute("sessionAdminId") + "]");
			System.out.println("vo :" + vo);
			
			int totalMember = adminservice.totalMember();
			model.addAttribute("totalmember", totalMember);
			System.out.println("[" + totalMember + "]");
			
		}else {
			System.out.println("로그인 실패");
			return "/admin/adminLogin";
		}
		
		return "/admin/admin";
	}
	
	// 임대차 계약서 등록
//	@RequestMapping(value="contract.do")
//	public String insertContract(HttpSession session, Model model, HttpServletRequest request, HttpServletResponse reponse) {
//		logger.info("");	
//		
//		String name = model.addAttribute("lessee_name", lessee_name);
//		
//		// Mem_code 찾기
//		int memcode = adminservice.findmemcode(name);
//		
		
		// 임대차 계약서 insert
		
		
	

	
	// 메인 페이지로 이동
	@RequestMapping(value="adminMain2.do")
	public String adminMain(AdminVO vo) {		
		return "/admin/adminMain";
	}	
	
	// 회원 페이지로 이동
	@RequestMapping(value="membertotal.do")
	public String memberAdmin(AdminVO vo, Model model, HttpSession session) {		
		
		int totalMember = adminservice.totalMember();
		model.addAttribute("totalmember", totalMember);
		System.out.println("[" + totalMember + "]");
		
		return "/admin/memberAdmin";
	}
	
	// 임대차 계약서 등록 페이지로 이동
	@RequestMapping(value="contract.do")
	public String contract(AdminVO vo) {		
		return "/admin/contract";
	}	
	
	// 비회원 문의게시판  페이지로 이동
	@RequestMapping(value="questionAnswer.do")
	public String Answer(AdminVO vo) {	
		return "/admin/questionAnswer";
	}	
	
	
	
}
