package com.setbang.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.setbang.domain.AdminVO;
import com.setbang.service.AdminService;

@Controller
public class AdminController {
	
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
			
			AdminVO totalMember = adminservice.totalMember(vo); ;
			System.out.println("[" + admin.getTotalMember() + "]");
			
		}else {
			System.out.println("로그인 실패");
			return "/admin/adminLogin";
		}
		
		return "/admin/admin";
	}

	
	// 회원관리 페이지로 이동
	@RequestMapping(value="membertotal.do")
	public String membertotal(AdminVO vo) {
		
		return "/admin/adminMain";
	}	
	
	// 임대차 계약서 등록 페이지로 이동
	@RequestMapping(value="contract.do")
	public String contract(AdminVO vo) {
		
		return "/admin/contract";
	}	
	
}
