package com.setbang.controller;

import java.security.Provider.Service;

import javax.servlet.http.HttpServletRequest;
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
	@RequestMapping(value = "support.do", method = RequestMethod.GET )
	public String selectUser(HttpSession session, Model model) throws Exception{
		logger.info("SupportController selectUser method");
		
		// 세션 객체 안에 있는 ID정보 저장
		String id = (String) session.getAttribute("sessionId");
		System.out.println("id : " + id);
		
		// 서비스 안의 회원정보  매서드 호출
		SupportVO selectuser = supportService.selectUser(id);
		System.out.println("selectuser : " + selectuser);
		
		// 정보저장 후 페이지 이동
		model.addAttribute("supportVO", selectuser);
		return "/member/support";
	}
	

	// 업무지원 신청서 insert
	@RequestMapping(value="support1.do", method = RequestMethod.POST )
	public String insertApply(HttpSession session, Model model) {
		logger.info("SupportController selectUser method");
		
		// 세션 객체 안에 있는 ID정보 저장 
		String id = (String) session.getAttribute("sessionId");
		System.out.println("id : " + id);
	
		// ID로 Mem_code 가져오기
		int memcode = supportService.findMemcode(id);
		
		
		// SupportVO에 Mem_code 초기화하기
		if(memcode != 0) {
			SupportVO vo = new SupportVO();
			vo.setMem_code(memcode);		
			
			// 업무지원 신청서에 인서트 되기
			supportService.insertApply(vo);
			System.out.println("성공");
		}
		
		return "redirect:/support.do";
	}


}
