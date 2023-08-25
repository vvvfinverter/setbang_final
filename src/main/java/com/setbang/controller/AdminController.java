package com.setbang.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.setbang.domain.AdminVO;
import com.setbang.service.AdminService;

@Controller
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
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
		
		
		// 서비스 플랜별 현황 추출
			// 1. Basic
			int basic = adminservice.basic();
			System.out.println("basic : " + basic);
			model.addAttribute("basic", basic);
			
			// 2. standard_monthly
			int standard_monthly = adminservice.standard_monthly();
			System.out.println("standard_monthly : " + standard_monthly);
			model.addAttribute("standard_monthly", standard_monthly);
			
			// 3. standard_annual
			int standard_annual = adminservice.standard_annual();
			System.out.println("standard_annual : " + standard_annual);
			model.addAttribute("standard_annual", standard_annual);
			
			// 4. premium_monthly
			int premium_monthly = adminservice.premium_monthly();
			System.out.println("premium_monthly : " + premium_monthly);
			model.addAttribute("premium_monthly", premium_monthly);
			
			// 5. premium_annual
			int premium_annual = adminservice.premium_annual();
			System.out.println("premium_annual : " + premium_annual);
			model.addAttribute("premium_annual", premium_annual);
			
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
	public String memberAdmin(AdminVO vo, Model model) {		
		
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
		
		
		// 서비스 플랜별 현황 추출
			// 1. Basic
			int basic = adminservice.basic();
			System.out.println("basic : " + basic);
			model.addAttribute("basic", basic);
			
			// 2. standard_monthly
			int standard_monthly = adminservice.standard_monthly();
			System.out.println("standard_monthly : " + standard_monthly);
			model.addAttribute("standard_monthly", standard_monthly);
			
			// 3. standard_annual
			int standard_annual = adminservice.standard_annual();
			System.out.println("standard_annual : " + standard_annual);
			model.addAttribute("standard_annual", standard_annual);
			
			// 4. premium_monthly
			int premium_monthly = adminservice.premium_monthly();
			System.out.println("premium_monthly : " + premium_monthly);
			model.addAttribute("premium_monthly", premium_monthly);
			
			// 5. premium_annual
			int premium_annual = adminservice.premium_annual();
			System.out.println("premium_annual : " + premium_annual);
			model.addAttribute("premium_annual", premium_annual);
			
		return "/admin/memberAdmin";
	}
	
	
	// 임대차계약서 등록 페이지로 이동
	@RequestMapping(value="contract.do")
	public String contract(AdminVO vo) {		
		return "/admin/contract";
	}	
	
	// 임대차계약서 목록보기 페이지로 이동
	@RequestMapping(value="contractList.do")
	public String contractlist(AdminVO vo, Model model) {
		
		List<AdminVO> contractList = adminservice.contractList(vo);
		System.out.println("rownum : " + contractList);
		model.addAttribute("contractList", contractList);
		
		return "/admin/constractList";
	}
	
	// 임대차계약서 목록에서 관리자 메인으로 돌아가기
	@RequestMapping(value="constractlist1.do")
	public String contractlistcomback(AdminVO vo, Model model) {	
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
		
		
		// 서비스 플랜별 현황 추출
			// 1. Basic
			int basic = adminservice.basic();
			System.out.println("basic : " + basic);
			model.addAttribute("basic", basic);
			
			// 2. standard_monthly
			int standard_monthly = adminservice.standard_monthly();
			System.out.println("standard_monthly : " + standard_monthly);
			model.addAttribute("standard_monthly", standard_monthly);
			
			// 3. standard_annual
			int standard_annual = adminservice.standard_annual();
			System.out.println("standard_annual : " + standard_annual);
			model.addAttribute("standard_annual", standard_annual);
			
			// 4. premium_monthly
			int premium_monthly = adminservice.premium_monthly();
			System.out.println("premium_monthly : " + premium_monthly);
			model.addAttribute("premium_monthly", premium_monthly);
			
			// 5. premium_annual
			int premium_annual = adminservice.premium_annual();
			System.out.println("premium_annual : " + premium_annual);
			model.addAttribute("premium_annual", premium_annual);		
		
		return "/admin/admin";
	}
	
	
	// 비회원 문의게시판  페이지로 이동
	@RequestMapping(value="questionAnswer.do")
	public String Answer(AdminVO vo, Model model) {	
		
		
		List<AdminVO> inqueryList = adminservice.inqueryList(vo);
		System.out.println("rownum : " + inqueryList);
		model.addAttribute("inqueryList", inqueryList);
		
		
		return "/admin/questionAnswer";
	}	
	
	
	// 회원승인 게시판으로 이동
	@RequestMapping(value="memberapprovallist.do")
	public String memberapproval(AdminVO vo, Model model) {
		
		List<AdminVO> memberapprovalList = adminservice.memberapprovalList(vo);
		System.out.println("memberapprovalList : " + memberapprovalList);
		model.addAttribute("memberapprovalList", memberapprovalList);
		
		return "/admin/memberapproval";
	}
	
	
	// 회원승인 시 N -> Y로 approval 변경(value="memberapproval.do")
	@RequestMapping(value="memberapproval.do")	
	public String memberapproval(AdminVO vo, Model model, HttpServletRequest request) {
		
		String check = request.getParameter("check");		
		vo.setCheck(check);
		System.out.println("check : " + check);
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
        System.out.println("id : " + id);
        System.out.println("pw : " + pw);       
        vo.setId(id);
        vo.setPw(pw);
        

		adminservice.findcheckmemcode(vo);
		System.out.println("mem_code : " + vo.getMem_code());
		
		adminservice.updateapproval(vo);
		
		List<AdminVO> memberapprovalList = adminservice.memberapprovalList(vo);
		System.out.println("memberapprovalList : " + memberapprovalList);
		model.addAttribute("memberapprovalList", memberapprovalList);
				
		return "/admin/memberapproval";
	}
	

}
