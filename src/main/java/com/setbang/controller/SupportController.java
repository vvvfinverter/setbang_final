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
import org.springframework.web.bind.annotation.RequestMethod;

import com.setbang.domain.SupportVO;
import com.setbang.service.SupportService;

@Controller
public class SupportController {
	private static final Logger logger = LoggerFactory.getLogger(SupportController.class);
	
	@Autowired
	private SupportService supportService;
	
	// 회원정보 가져오기
	@RequestMapping(value = "supportApply.do", method = RequestMethod.GET )
	public String selectUser(HttpSession session, Model model) throws Exception{
		logger.info("SupportController selectUser method");
		
		// 세션 객체 안에 있는 ID정보 저장
		String id = (String) session.getAttribute("sessionId");
		
		// 서비스 안의 회원정보  매서드 호출
		SupportVO selectuser = supportService.selectUser(id);
		
		// 정보저장 후 페이지 이동
		model.addAttribute("supportVO", selectuser);
		return "/support/supportApply";
	}
	

	// 업무지원 신청서 insert
	@RequestMapping(value="support1.do", method = RequestMethod.POST )
	public String insertApply(HttpSession session, Model model, HttpServletRequest request, HttpServletResponse reponse) {
		logger.info("SupportController selectUser method");
		
		
		// 세션 객체 안에 있는 ID정보 저장 
		String id = (String) session.getAttribute("sessionId");
		
		SupportVO vo = new SupportVO();
		
		// id로 email 가져오기
		String email = supportService.findEmail(id);
		model.addAttribute("SupportVO", email);
		
	
		// ID로 Mem_code 가져오기
		int memcode = supportService.findMemcode(id);		
		
		int sup_code = Integer.parseInt(request.getParameter("sup_code"));
		String sup_counseling_date = request.getParameter("sup_counseling_date");
		String sup_content = request.getParameter("sup_content");

		
		
		// SupportVO에 Mem_code 초기화하기
		if(memcode != 0) {
			vo.setMem_code(memcode);
			vo.setSup_code(sup_code);
			vo.setSup_counseling_date(sup_counseling_date);
			vo.setSup_content(sup_content);
			vo.setSup_email(email);
			
			try {
				model.addAttribute("sup_code", sup_code);
				model.addAttribute("mem_code", vo.getMem_code());
				model.addAttribute("sup_counseling_date", sup_counseling_date);
				model.addAttribute("sup_content", sup_content);
				model.addAttribute("sup_email", email);

				// 업무지원 신청서에 인서트 되기
				supportService.insertApply(vo);
				
			}catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			} 
			     
			
		}
		
		//return "/myPage/myPageSupportlist";
		return "redirect:/supportlist.do";
	}


}
