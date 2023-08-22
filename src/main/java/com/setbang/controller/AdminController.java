package com.setbang.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.Response;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	@RequestMapping(value="contract1.do")
	public String insertContract(HttpSession session, Model model, HttpServletRequest request, HttpServletResponse reponse) {
		logger.info("");	
		
		// Mem_code를 찾기 위한 임차인 이름 가져오기
		String lessee_name = request.getParameter("lessee_name");
		String lessee_tel = request.getParameter("lessee_tel");
		System.out.println("name값 : " + lessee_name);
		
		// Mem_code 찾기
		int mem_code = adminservice.findmemcode(lessee_name, lessee_tel);
		System.out.println("memcode 찾은 값 :" + mem_code);
		
		// 임대한 개인오피스 코드 가져오기
		int privcode = Integer.parseInt(request.getParameter("priv_code"));
		System.out.println("Priv_code : " + privcode);
		
		// 개인오피스 코드 찾기
		int priv_code = adminservice.findprivecode(privcode);
		System.out.println("Priv_code 찾은값 : " + priv_code);
		
		// 임대차 계약서 insert
			// 1. 임대차계약서 양식에 기입한 값들 가져오기(기존에 찾은 임차인(name)과 mem_code, priv_code는 위에서 찾았으니 제외)
			String lessor_name = request.getParameter("lessor_name");
			String con_start_date = request.getParameter("con_start_date");
			String con_end_date = request.getParameter("con_end_date");
			String con_date = request.getParameter("con_date");
		
			// 2. 가져오거나 찾은 값들 vo에 넣어주기
			AdminVO vo = new AdminVO();
			vo.setMem_code(mem_code);
			vo.setPriv_code(priv_code);
			vo.setCon_start_date(con_start_date);
			vo.setCon_end_date(con_end_date);
			vo.setCon_date(con_date);
			vo.setLessor_name(lessor_name);
			vo.setLessee_name(lessee_name);
			vo.setLessee_tel(lessee_tel);
		
			//3. vo에 넣은 값으로 임대차계약서 insert
			adminservice.insertcontract(vo);
			System.out.println("성공");
		
		
		return "redirect:/contract.do";
	}	

	
	// 메인 페이지로 이동
	@RequestMapping(value="adminMain2.do")
	public String adminMain(AdminVO vo) {		
		return "/admin/adminMain";
	}	
	
	// 회원 페이지로 이동
	@RequestMapping(value="membertotal.do")
	public String memberAdmin(AdminVO vo, Model model, HttpSession session) {		
		
		// 총 회원수 추출
		int totalMember = adminservice.totalMember();
		model.addAttribute("totalmember", totalMember);
		System.out.println("[" + totalMember + "]");
		
		//지점별 회원수 추출
			// 1. 구로지점
			int guromember = adminservice.guromember();
			System.out.println("guromember : " + guromember);
			model.addAttribute("guromember", guromember);
		
			// 2. 판교지점
			int pangyomember = adminservice.pangyomember();
			System.out.println("pangyomember : " + pangyomember);
			model.addAttribute("pangyomember", pangyomember);
			
			// 3. 강남지점
			int gangnammember = adminservice.gangnammember();
			System.out.println("gangnammember : " + gangnammember);
			model.addAttribute("gangnammember", gangnammember);
			
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
