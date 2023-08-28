package com.setbang.controller;

import java.util.List;

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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.setbang.domain.AdminVO;
import com.setbang.service.AdminService;

@Controller
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Autowired
	private AdminService adminservice;
	
	// 관리자 로그인을 누르면 회원은 로그아웃 처리(회원 헤더의 로그인 옆 (주)co-space 로고 누르면 작동)
	@RequestMapping(value="memberLogout.do")
	public String loginAdmin(AdminVO vo, HttpSession session, HttpServletRequest request) {
		
		// 관리자로그인이 되면 회원은 로그아웃처리
		HttpSession session1 = request.getSession();
		session1.invalidate();
		
		return "/admin/adminLogin";
	}

	// 로그인페이지로 이동(adminHeader.jsp에 세션 == null 일때 로그인을 누르면 관리자로그인 화면이 나오게 작동)
	@RequestMapping(value="MoveLogin.do")
	public String moveLogin(AdminVO vo) {		
		return "/admin/adminLogin";
	}
	
	// 메인 페이지로 이동(말 그대로 관리자 메인페이지로 이동하도록 수정)
	@RequestMapping(value="adminMain.do")
	public String adminMain(AdminVO vo) {		
		return "/admin/admin";
	}
	
	// 관리자 로그인(말 그대로 관리자페이지 로그인 관련)
	@RequestMapping(value="adminLogin.do")
	public String findAdmin(AdminVO vo, Model model, HttpSession session) {
		
		AdminVO admin = adminservice.findAdmin(vo);
		System.out.println("vo : " + vo);

		if(admin != null) {
			session.setAttribute("sessionAdminId", admin.getAdmin_id());

		
		}else {
			return "/admin/adminLogin";
		}
		
		System.out.println("sessionAdminId : " + session.getAttribute("sessionAdminId"));		
		return "/admin/admin";
		
	}
	
	// 임대차 계약서 등록
	@RequestMapping(value="constract1.do")
	public String insertContract(HttpSession session, Model model, HttpServletRequest request, HttpServletResponse reponse) {
		logger.info("");	
		
		// Mem_code를 찾기 위한 임차인 이름 가져오기
		String lessee_name = request.getParameter("lessee_name");
		String lessee_tel = request.getParameter("lessee_tel");
		
		// Mem_code 찾기
		int mem_code = adminservice.findmemcode(lessee_name, lessee_tel);
		
		// 임대한 개인오피스 코드 가져오기
		int privcode = Integer.parseInt(request.getParameter("priv_code"));
		
		// 개인오피스 코드 찾기
		int priv_code = adminservice.findprivecode(privcode);

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
		
		return "redirect:/contract.do";
	}	
	
	
	// 회원 페이지로 이동
	@RequestMapping(value="adminMemberCount.do")
	public String memberAdmin(AdminVO vo, Model model) {		
		
		// 총 회원수 추출
		int totalMember = adminservice.totalMember();
		model.addAttribute("totalmember", totalMember);
		
		//지점별 회원수 추출
			// 1. 구로지점
			int guromember = adminservice.guromember();
			model.addAttribute("guromember", guromember);
		
			// 2. 판교지점
			int pangyomember = adminservice.pangyomember();
			model.addAttribute("pangyomember", pangyomember);
			
			// 3. 강남지점
			int gangnammember = adminservice.gangnammember();
			model.addAttribute("gangnammember", gangnammember);
		
		
		// 서비스 플랜별 현황 추출
			// 1. Basic
			int basic = adminservice.basic();
			model.addAttribute("basic", basic);
			
			// 2. standard_monthly
			int standard_monthly = adminservice.standard_monthly();
			model.addAttribute("standard_monthly", standard_monthly);
			
			// 3. standard_annual
			int standard_annual = adminservice.standard_annual();
			model.addAttribute("standard_annual", standard_annual);
			
			// 4. premium_monthly
			int premium_monthly = adminservice.premium_monthly();
			model.addAttribute("premium_monthly", premium_monthly);
			
			// 5. premium_annual
			int premium_annual = adminservice.premium_annual();
			model.addAttribute("premium_annual", premium_annual);
			
		return "/admin/adminMemberCount";
	}
	
	
	// 임대차계약서 등록 페이지로 이동
	@RequestMapping(value="adminConstract.do")
	public String contract(AdminVO vo) {		
		return "/admin/adminConstract";
	}	
	
	// 임대차계약서 목록보기 페이지로 이동
	@RequestMapping(value="adminConstractList.do")
	public String contractlist(AdminVO vo, Model model) {
		
		List<AdminVO> contractList = adminservice.contractList(vo);
		model.addAttribute("contractList", contractList);
		
		return "/admin/adminConstractList";
	}
	
	
	// 입주 문의 현황 페이지로 이동
	@RequestMapping(value="adminInqueryCheck.do")
	public String Answer(AdminVO vo, Model model) {	
				
		List<AdminVO> inqueryList = adminservice.inqueryList(vo);
		model.addAttribute("inqueryList", inqueryList);
				
		return "/admin/adminInqueryCheck";
	}	
	
	
	// 회원승인 게시판으로 이동
	@RequestMapping(value="adminMemberApproval.do")
	public String memberapproval(AdminVO vo, Model model) {
		
		List<AdminVO> memberapprovalList = adminservice.memberapprovalList(vo);
		model.addAttribute("memberapprovalList", memberapprovalList);
		
		return "/admin/adminMemberApproval";
	}
	

    @RequestMapping(value = "approvalModify.do", method = RequestMethod.POST)
    @ResponseBody
	public String modifyApproval(@RequestBody List<AdminVO> voList) throws Exception {
	    
    	for (AdminVO vo : voList) {
	        adminservice.modifyApproval(vo);
	    }
	    
	    return "/admin/adminMemberApproval";
	}
	
}

			